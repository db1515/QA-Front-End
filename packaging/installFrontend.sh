echo "UNZIP BUNDLE_FE"

# packageNum=`php currentPackage.php | xargs`
package="$1"

mkdir $HOME/packaging/Unzip/
# cd $HOME/Packages/Unzip/

tar -xzf $HOME/packaging/$package -C /home/dhruv/packaging/Unzip

echo "Changing .ini"

sed -i '2s/.*/BROKER_HOST = 192.168.1.31/g' $HOME/packaging/Unzip/FE/testRabbitMQ.ini

sudo cp -a $HOME/packaging/Unzip/FE/. /var/www/html/

echo -e "\n"

rm -r $HOME/packaging/Unzip

echo "FE Packages is installed!"
