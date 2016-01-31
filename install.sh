#!/bin/sh
cp 99-beaglebone-rails.rules /etc/udev/rules.d/
chown root:root /etc/udev/rules.d/99-beaglebone-rails.rules
chmod 0644 /etc/udev/rules.d/99-beaglebone-rails.rules
udevadm control --reload-rules
#udevadm test --action=add /class/gpio
