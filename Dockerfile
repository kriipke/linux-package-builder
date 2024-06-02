FROM rockylinux/rockylinux:9

RUN dnf install -y rpmdevtools rpmlint \
    && dnf groupinstall -y "Development Tools" \
    && dnf clean all \
    && dnf config-manager --set-enabled crb \
    && rpmdev-setuptree 

WORKDIR /root/rpmbuild
COPY --chmod="0755" build.sh /
#ENTRYPOINT ["/build.sh"]
