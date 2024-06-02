#!/bin/sh

dnf builddep -y /root/rpmbuild/SPECS/*.spec
spectool -g -R /root/rpmbuild/SPECS/*.spec
rpmbuild -ba /root/rpmbuild/SPECS/*.spec
rpmbuild -bb /root/rpmbuild/SPECS/*.spec
