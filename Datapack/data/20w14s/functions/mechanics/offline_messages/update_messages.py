"""
Author: PeerHeer

Update the messages: reconstruct a function tree and add the amount of messages to a score.
"""
import os
from fileinput import FileInput
from json import loads, JSONDecodeError
from typing import List, Union, Tuple


COMMENT_CHAR = "#"
CWD = os.path.join("functions", "mechanics", "offline_messages")
MESSAGES_FILE = "messages.txt"
MESSAGE_LENGTH_FILE = "message_amount.mcfunction"
MESSAGE_LENGTH_SCORE = "20w14s.opm.message_amount const"
MESSAGE_PATH = os.path.join("player", "send_message", "messages")
NAMESPACED_PATH = "/".join(["20w14s:mechanics", "offline_messages", "player", "send_message", "messages"])
TREE_START_FILE = os.path.join(MESSAGE_PATH, "start.mcfunction")
TREE_SCORE = "20w14s.opm.random temp"
TREE_STORAGE = "20w14s:mechanics/offline_messages root.Message"
branch = 0


class Range():
    def __init__(self, begin: Union[float, int], end: Union[float, int]):
        self.begin = int(begin)
        self.end = int(end)
        self.half = int(self.begin + (self.end - self.begin) / 2)

    def split(self):
        """
        Split the range in two.
        """
        if self.begin == self.half:
            result_left = self.begin
        else:
            result_left = Range(self.begin, self.half)

        if self.half + 1 == self.end:
            result_right = self.end
        else:
            result_right = Range(self.half + 1, self.end)

        return result_left, result_right

    def filename(self) -> str:
        """
        File name used in function call.
        """
        return f"{self.begin}_{self.end}"

    def __str__(self) -> str:
        return f"{self.begin}..{self.end}"


def main():
    check_cwd()
    messages = get_messages()
    max_value = len(messages) - 1
    write_max_value(max_value)
    construct_tree(messages, Range(0, max_value))


def write_max_value(value):
    """
    Write the amount of messages to a file.
    """
    with open(MESSAGE_LENGTH_FILE, "w") as f:
        f.write(f"scoreboard players set {MESSAGE_LENGTH_SCORE} {value}")


def construct_tree(messages: List[str], range: Range):
    """
    Construct the function tree recursively.
    """
    global branch
    branch += 1
    file_path = TREE_START_FILE if branch == 1 else os.path.join(MESSAGE_PATH, f"{range.filename()}.mcfunction")
    ranges = range.split()
    content = ""

    for r in ranges:
        if isinstance(r, int):
            content += get_leaf_content(r, messages.pop())
        else:
            content += get_branch_content(r)
            construct_tree(messages, r)

    with open(file_path, "w") as f:
        f.write(content)


def get_branch_content(range: Range) -> str:
    return f"execute if score {TREE_SCORE} matches {range} run function {NAMESPACED_PATH}/{range.filename()}\n"


def get_leaf_content(value: int, message: str) -> str:
    return f"execute if score {TREE_SCORE} matches {value} run data modify storage {TREE_STORAGE} set value '{add_escape(message)}'\n"


def add_escape(message: str) -> str:
    """
    Add an extra escape layer to double and single quotes.
    """
    return message.replace("\\\"", "\\\\\"").replace("'", "\\'")


def get_messages() -> List[str]:
    """
    Get all valid messages from `messages.txt`.
    """
    messages = []

    with open(MESSAGES_FILE, "r") as f:
        for i, line in enumerate(f):
            line = line.strip()

            if line.startswith(COMMENT_CHAR) or len(line) == 0:
                continue

            try:
                loads(line)
            except JSONDecodeError as ex:
                print(f"Invalid JSON at line {i + 1}: {ex}. Line will be skipped.")
            else:
                messages.append(line)

    return messages


def check_cwd():
    """
    Raises `ValueError` if the current working directory is not correct.
    """
    cwd = os.getcwd()

    if not cwd.endswith(CWD):
        raise ValueError(f"The current working directory must end with '{CWD}'.")


if __name__ == "__main__":
    main()