APP_NAME="screenshot"
NOTIFY_ID=7771

SCREENSHOT_DIR="$HOME/pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"

take_region() {
    outfile="$SCREENSHOT_DIR/Screenshot-$(date +%F_%T).png"
    grim -g "$(slurp)" "$outfile"
    wl-copy < "$outfile"
    dunstify -r "$NOTIFY_ID" -i "$outfile" "Screenshot of region taken" -t 1000
}

take_full() {
    outfile="$SCREENSHOT_DIR/Screenshot-$(date +%F_%T).png"
    grim "$outfile"
    wl-copy < "$outfile"
    dunstify -r "$NOTIFY_ID" -i "$outfile" "Screenshot of whole screen taken" -t 1000
}

case "$1" in
    region)
        take_region
        ;;
    full)
        take_full
        ;;
    *)
        echo "Usage: $0 {region|full}"
        exit 1
        ;;
esac

