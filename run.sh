#!/bin/bash
sed -i 's/envisalinkIP/'$EVL_IP'/g' /var/AlarmServer/alarmserver.cfg
sed -i 's/user/'$PASSWORD'/g' /var/AlarmServer/alarmserver.cfg
sed -i 's/, io_loop=io_loop/ /g' /var/AlarmServer/core/envisalinkproxy.py
python /var/AlarmServer/alarmserver.py -c /var/AlarmServer/alarmserver.cfg
