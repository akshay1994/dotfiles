#!/usr/bin/env python3

import notmuch 

tags = notmuch.Database().get_all_tags()

print('"Inbox" "notmuch://?query=tag:inbox"', end=" ")
print('"Sent" "notmuch://?query=tag:sent"', end=" ")
print('"Trash" "notmuch://?query=tag:trash"', end=" ")
print('"Spam" "notmuch://?query=tag:spam"', end=" ")

for tag in tags:
    if tag not in ("inbox", "sent", "trash", "spam"): 
        print('"'+ str(tag) + '" "notmuch://?query=tag:\\"' + str(tag) + '\\" AND NOT tag:processed"', end=" ")
