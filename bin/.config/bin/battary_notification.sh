# Check for acpi
if ! command -v acpi >/dev/null 2>&1; then
    notify-send "battery: acpi not installed"
    exit 1
fi

BATTERY_INFO="$(acpi -b)"

# Extract percentage
PERCENT=$(echo "$BATTERY_INFO" | grep -o '[0-9]\+%')

# Detect charger state
if echo "$BATTERY_INFO" | grep -qi "discharging"; then
    STATE="disconnected"
else
    STATE="connected"
fi

notify-send "battery: $PERCENT - $STATE"

