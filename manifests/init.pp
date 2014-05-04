# Class: kvm
#
# This module manages kvm
#
# Requires:
#   class common 
#
class kvm {

    include common 

    package {[
        "kvm",
        "virt-manager",
        "libvirt",
        "libvirt-python",
        "python-virtinst",
        "qemu-img",
    ]:} # package

} # class kvm
