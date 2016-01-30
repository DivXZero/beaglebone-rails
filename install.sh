#!/bin/sh
chown root:root 99-beaglebone-rails.rules
chmod 0644 99-beaglebone-rails.rules
cp 99-beaglebone-rails.rules /etc/udev/rules.d/
udevadm control --reload-rules
udevadm test --action=add /class/gpio
