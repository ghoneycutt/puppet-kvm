# Class: kvm
#
# This module manages kvm
#
# Requires:
#   class generic
#   class x::headless
#
class kvm {

    include generic
    include x::headless

    package {[
        "kvm",
        "virt-manager",
        "libvirt",
        "libvirt-python",
        "python-virtinst",
        "qemu",
        "qemu-img",
        "qspice-libs"
    ]:} # package

    # script to start xvfb/fluxbox/x11vnc
    file { "/usr/local/sbin/fluxvnc.sh":
        content => template("kvm/fluxvnc.sh.erb"),
        mode    => 754,
    } # file
} # class kvm
