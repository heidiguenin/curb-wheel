sh setup-ramdisk-simulator.sh

WHEEL_PID=./wheel.pid
if test -f "$WHEEL_PID"; then
    pkill -F $WHEEL_PID
fi

echo "0" > ram/counter.txt
python python/wheel-simulator.py &
echo $! > $WHEEL_PID
