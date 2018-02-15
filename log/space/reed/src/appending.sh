# TODO: make this a single command*, taking the log from parameter and automating 'current month',
#       in a similar way as I can use 'shoot' to send an image to an image repo
#
#       * (or rather using 2 separate commands for marked as read vs. unread, and probably another to
#          append and then open the file in vim)
echo "Appending $(xclip -o | head -c 80) as READ to bio-log"; echo "- [x] $(xclip -o)" >> 18⠶Feb.md
echo "Appending $(xclip -o | head -c 80) as UNREAD to bio-log"; echo "- [ ] $(xclip -o)" >> 18⠶Feb.md
