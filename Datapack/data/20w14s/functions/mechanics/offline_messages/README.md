## Offline messages
Make offline players randomly join the chat.

Only one offline player can join at the same time, only when there is at least one real player online. The offline player will say one message before leaving.
By default, a player will join the chat every `30` minutes on average (probability `0.00555555555556`).
Probabilities are located in `predicates/offline_messages`. The predicate for joining is called once every `10` seconds. The other predicates are called every `2` seconds when a player has joined.

Messages are located in `messages.txt` and must be valid JSON. After adding/deleting a message, run `update_messages.py` to update.
