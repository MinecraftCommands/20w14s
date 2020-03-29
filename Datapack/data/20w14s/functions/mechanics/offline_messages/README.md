By default:
- a player will join the chat every `30` minutes on average (probability `0.00555555555556`)
- a player will leave after `10` minutes on average (probability `0.01666666666667`)

Probabilities are located in `predicates/offline_messages`. These are calculated per `10` seconds.

Messages are located in `messages.txt`. After adding/deleting a message, run `update_messages.py` to update.

Only one offline player can join at the same time, only when there is at least one real player online.