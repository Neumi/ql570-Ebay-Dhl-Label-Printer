#!/bin/bash

echo "Starting convert"
convert -density 300 -depth 8 -quality 50 -trim -resize 1000x720 -splice 0x200 $1 printfile.png
echo "Printing now!"
sudo ./ql570 /dev/usb/lp0 w printfile.png
echo "done!"
