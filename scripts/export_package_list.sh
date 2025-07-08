#!/bin/bash
dpkg --get-selections > package_list.txt
echo "Package list exported to package_list.txt"