#
# Makefile for the touchscreen drivers.
#

# Each configuration option enables a list of files.



obj-y	+= synaptics_i2c_rmi.o
obj-y	+= rmi_dev_6.o
obj-y	+= rmi_f54_6.o
obj-y   += rmi_fw_update_6.o

all:
make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
