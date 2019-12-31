# AlphaApp
Simple WoW addon that uses only "/" commands, and interacts with the Blizzard API using LUA.

This addon is split into a couple of components:

The bag component is accessed using "/bag", and is intended to auto-sell grey quality items to vendors when the vendor screen is open.
This function is a highly desirable QOL and I use it daily since WoW Classic's release.

The warlock soul shard component is another QOL change accessed by typing "/shard" followed by the number of shards the user wants to keep.
Ie. if I want to keep 24 soul shards, I would type "/shard 24", and every soul shard beyond the 24th will be deleted.

The camera component is accessed by using "/camera", and is used to minimize or maximize camera distance from the player when in third person.
WoW Classic's camera interface is extremely primitive, so this is designed as another simple QOL feature. For the full list of features, glance at the
code or type "/camera help"

Addon is in compliance with Blizzard TOS, and this program can be distributed and reused freely without premium or citation.
