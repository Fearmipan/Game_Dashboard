#!/system/bin/sh

# Game Dashboard Configuration creator
# © KProject
echo "A simple script to create a Game Dashboard Configuration"
echo " "
echo " "
echo " "
echo 'Enter your Game <Package Name>'
read PKG
echo "Target Game is $PKG"
echo " "
echo " "
echo "Enter Graphic Driver"
sleep 3
echo ' angle|skiavk|skiagl '
read DRIVER
echo "Selected $DRIVER Game Driver"
echo " "
echo " "
echo "Enter a downscale factor"
sleep 3
echo '0.1|0.2|0.3|0.4|0.5|0.6|0.7|0.8|0.9'
read DOWNSCALE
sleep 2
echo "Enter for downscale for Battery Saber Mode" 
read DOWNSCALE2
echo " "
sleep 2
echo "Downscale $DOWNSCALE and $DOWNSCALE2 will be applied"
echo " "
echo " "
sleep 3
echo "Enter FPS throttling"
sleep 3
echo '30|40|45|60|90|120'
read FPS
sleep 2
echo "Enter for Battery Saver Mode" 
read FPS2
echo " " 
sleep 2
echo "FPS $FPS and $FPS2 will be applied" 
echo " "
echo " "
echo " "
echo "Applying Game Configuration..."
echo "$PKG Performance Mode" 
echo 'Downscale: $DOWNSCALE FPS: $FPS' 
sleep 3
echo " "
echo "$PKG Battery Saver Mode" 
echo 'Downscale: $DOWNSCALE2 FPS: $FPS2' 
echo " "
echo " "
echo " "
device_config put game_overlay ${PKG} mode=2,${DRIVER}=1,downscaleFactor=${DOWNSCALE},fps=${FPS}:mode=3,${DRIVER}=1,downscaleFactor=${DOWNSCALE2},fps=${FPS2}
sleep 5
echo "Game Dashboard Configuration" 
echo "Successfully created!"
echo 'By: KProject' 
