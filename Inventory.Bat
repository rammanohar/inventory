echo  off

echo "*********************************"

echo "                                  "
echo "Deleting the folder..."
rmdir /Q /S c:\server1

echo "Creating the folder..."
md c:\server1 

echo "                          "

echo "Colleting the infomation..."
systeminfo >> c:\server1\srvlog.txt

echo "removing the mapped drive..."
net use z: /delete

echo "Mapping the driver...."
net use z: \\localhost\inventory

echo "Copying the files from local to shared folder "
copy c:\server1\srvlog.txt z:\srvlog.txt

echo " Run  successfully "
echo "********************************"