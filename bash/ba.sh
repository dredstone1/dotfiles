# Get battery info
if command -v acpi &> /dev/null; then
    BATTERY=$(acpi -b)
else
    BATTERY="Battery info not available (install acpi)"
fi

# Get current time and date
TIME=$(date +"%T")
DATE=$(date +"%Y-%m-%d")

# Display info
echo "=========================="
echo "Battery Info: $BATTERY"
echo "Current Time: $TIME"
echo "Current Date: $DATE"
echo "=========================="

