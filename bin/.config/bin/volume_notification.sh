APP_NAME="media"
NOTIFY_ID=9992

get_volume() {
    vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '/Volume:/ {print $2}')
    [ -z "$vol" ] && echo 0 && return
    percent=$(awk "BEGIN {printf \"%d\", $vol * 100}")
    [ "$percent" -gt 100 ] && percent=100
    [ "$percent" -lt 0 ] && percent=0
    echo "$percent"
}

get_mute_status() {
    mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')

    if [ "$mute" = "yes" ]; then
        echo "Muted"
    else
        echo "Unmuted"
    fi
}

show_notification() {
    volume=$(get_volume)
    mute_status=$(get_mute_status)

    dunstify \
        -r "$NOTIFY_ID" \
        -h "int:value:$volume" \
        "Volume: $volume% $mute_status"
}

change_volume() {
    wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ "$1"
}

toggle_mute_volume() {
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
}

case "$1" in
    scroll)
        change_volume "$2"
        show_notification
        ;;
    muteVolume)
        toggle_mute_volume
        show_notification
        ;;
    popup)
        show_notification
        ;;
    *)
        echo "Usage: $0 {scroll <volume>|muteVolume|popup}"
        exit 1
        ;;
esac

