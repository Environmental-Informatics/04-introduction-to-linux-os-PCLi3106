"""
Header Comments
File created on 02/21/2020 by Pin-Ching Li for ABE65100
This script is written for creating a report for a given  directory
"""
echo The amount of files in this directory:
ls -l . | egrep -c '^-'
echo The amount of directories in this directory:
ls -l . | grep -c ^d
echo The biggest file:
du -hsx * | sort -rh | head -1
echo The most recent modified or created file:
find . -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -f2- -d" "
echo People who own files in this directory:
find /home/li3106/04-introduction-to-linux-os-PCLi3106 -printf '%u:%g\n' | sort -t: -

