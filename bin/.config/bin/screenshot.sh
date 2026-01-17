APP_NAME="screenshot"
NOTIFY_ID=7771

SCREENSHOT_DIR="$HOME/pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"

# Function to send notification and handle click
notify_and_open() {
    local file=$1
    local msg=$2
    
    action=$(dunstify -r "$NOTIFY_ID" -i "$file" "$msg" "Click to open" -t 3000 --action="default,open")

    case "$action" in
        "default")
            xdg-open "$file"
            ;;
    esac
}

take_region() {
    outfile="$SCREENSHOT_DIR/Screenshot-$(date +%F_%T).png"
    if grim -g "$(slurp)" "$outfile"; then
        wl-copy < "$outfile"
        notify_and_open "$outfile" "Screenshot of region taken"
    fi
}

take_full() {
    outfile="$SCREENSHOT_DIR/Screenshot-$(date +%F_%T).png"
    grim "$outfile"
    wl-copy < "$outfile"
    notify_and_open "$outfile" "Screenshot of whole screen taken"
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
