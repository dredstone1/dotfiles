#!/bin/sh

APP_NAME="media"
NOTIFY_ID=9991

get_progress() {
    pos=$(playerctl position 2>/dev/null | cut -d. -f1)
    len=$(playerctl metadata mpris:length 2>/dev/null)

    [ -z "$pos" ] || [ -z "$len" ] && echo 0 && return

    # length is microseconds
    percent=$(( pos * 1000000 * 100 / len ))

    [ "$percent" -gt 100 ] && percent=100
    [ "$percent" -lt 0 ] && percent=0

    echo "$percent"
}

show_notification() {
    title=$(playerctl metadata title 2>/dev/null)
    artist=$(playerctl metadata artist 2>/dev/null)
    artwork=$(playerctl metadata mpris:artUrl 2>/dev/null)
    progress=$(get_progress)

    # Show notification with artwork
    dunstify \
        -a "$APP_NAME" \
        -r "$NOTIFY_ID" \
        -h "int:value:$progress" \
        -i "$artwork" \
        "$title" \
        "$artist"
}

scroll() {
    # $1 is seconds to scroll (positive for forward, negative for backward)
    pos=$(playerctl position 2>/dev/null | cut -d. -f1)
    new_pos=$((pos + $1))
    [ "$new_pos" -lt 0 ] && new_pos=0
    playerctl position "$new_pos"
    show_notification
}

case "$1" in
    play|pause|play-pause)
        playerctl play-pause
        show_notification
        ;;
    next)
        playerctl next
        sleep 0.2
        show_notification
        ;;
    prev|previous)
        playerctl previous
        sleep 0.2
        show_notification
        ;;
    scroll)
        # Usage: script scroll <seconds>
        if [ -z "$2" ]; then
            echo "Usage: $0 scroll <seconds>"
            exit 1
        fi
        scroll "$2"
        ;;
    popup)
        show_notification
        ;;
    *)
        echo "Usage: $0 {play|pause|play-pause|next|prev|scroll <seconds>|popup}"
        exit 1
        ;;
esac

