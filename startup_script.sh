#!/bin/bash
echo "starting startup script"
firewall-cmd --zone=public --permanent --add-port=8443/tcp
firewall-cmd --reload
#/usr/local/bin/send_dcvsessionready_notification.sh >/dev/null 2>&1 &
#_username="user001"
#"$(aws secretsmanager get-secret-value --secret-id \
#                   Run_DCV_in_Batch --query SecretString  --output text | \
#                   jq -r  'keys[0]')"
echo "identified user name user001"
adduser "user001" -G wheel 
echo "user001:test@123" | chpasswd
 #&& echo "$(aws secretsmanager get-secret-value --secret-id \
 #                  Run_DCV_in_Batch --query SecretString --output text | \
 #         sed 's/\"//g' | sed 's/{//' | sed 's/}//')" | chpasswd
/bin/dcv create-session --owner "user001" --user "user001" "user001session"

echo "completed creation of a dcv session"