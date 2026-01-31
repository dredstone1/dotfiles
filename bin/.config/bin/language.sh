#!/bin/sh

NOTIFY_ID=9993

get_language() {
    lang=$(hyprctl devices -j \
        | jq -r '.keyboards[] | select(.main==true) | .active_keymap')

    case "$lang" in
        *Hebrew*)
            echo "Hebrew"
            ;;
        *English*)
            echo "English"
            ;;
        *)
            echo "$lang"
            ;;
    esac
}

show_notification() {
    dunstify -r "$NOTIFY_ID" "Language" "$(get_language)"
}

case "$1" in
    popup)
        show_notification
        ;;
    *)
        echo "Usage: $0 popup"
        ;;
esac

