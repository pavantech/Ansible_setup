mkdir /root/backups.rpm.mm_dd_yyyy/
cp -avr /var/lib/rpm/ /root/backups.rpm.mm_dd_yyyy/
rm -f /var/lib/rpm/__db*
db_verify /var/lib/rpm/Packages
rpm --rebuilddb
yum clean all
yum update
