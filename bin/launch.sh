mkdir -p /vol/dionaea/wwwroot
mkdir -p /vol/dionaea/binaries
mkdir -p /vol/dionaea/log
mkdir -p /vol/dionaea/bistreams
chown 65534 -R /vol/dionaea
#Don't -r (chroot) because needs /etc/dionaea for cfg
dionaea -l debug -c /etc/dionaea/dionaea.conf  -w /vol/dionaea -u nobody -g nogroup
