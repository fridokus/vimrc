#!/bin/bash
STATE=`xinput list-props 11|grep 'Device Enabled'|awk '{print $4}'`
echo $STATE
if  [ $STATE -eq 1 ] ; then
      xinput disable 11
else
      xinput enable 11
fi
