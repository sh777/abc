
# this script will install golang on linux
#!/bin/bash
set -x

# install curl if not exists
if [ ! -x /usr/bin/curl ] ; then
  apt update
  apt install curl -y
fi

# get latest golang version
VERSION="go1.11.2"

# download
curl -OL http://hyf-sw.oss-cn-beijing.aliyuncs.com/$VERSION.linux-amd64.tar.gz

# extract
tar -C /usr/local -xzf $VERSION.linux-amd64.tar.gz

# setup env
echo 'export PATH=$PATH:'$HOME'/go/bin:/usr/local/go/bin' >> /etc/profile
#. /etc/profile

# remove temporary file
rm $VERSION.linux-amd64.tar.gz

echo "execute '. /etc/profile' to become effective"
set +x
