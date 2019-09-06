if [ $# -eq 0 ]






then


    echo "please specify the minutes as arguments. Script will check for alerts older than minutes SPECIFIED."


    echo "sh $0 <minutes> "


    echo "Example: sh main.sh 10  ##this will check for alerts older than 10 minutes"


elif [ "$1" = "$((${1}))" ] 2>/dev/null; 


then 


    if  (( $1 < 20 ))


        then


            


time=$1


curl -s -u nagios_username:nagios_password https://Nagios_URL > US_nagios






 for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'| sort | uniq -c |sort -n |awk '{print $2}'`


        do 


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep RDS.CPUUtilization|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/CPU utilization on US Server/' | say


           fi






         done










 for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep RDS.WriteIOPS|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Write IOPS  on  US server /' |say


           fi






         done














 for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_long_running_request|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Long Running request on US server /' |say


           fi






         done














for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_load|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check load on US server /' |say


           fi






         done














for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_disk|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check Disk on US SERVER /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_oomkiller|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/OOM Killer on  US server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep RDS.ReplicaLag|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Replica Lag  on  US Server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_haproxy|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check ha proxy  on US Server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_ebs|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check EBS  on  US Server /' |say


           fi






         done






for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_redis|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check Redis  on US Server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_monit_worker_status |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Monit status  on  US Server /' |say


           fi






         done






for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_segmentation_fault |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Segmentation fault status  on  US server /' |say


           fi






         done






for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_mem |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/ Check memory  on US Server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_passanger |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/ Check passanger  on US Server /' |say


           fi






         done






for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_nginx |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/ Check Nginx  on US Server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_cpu_stats |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/ Check CPU stats  on US Server /' |say


           fi






         done










for i in `cat FS_US_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_US_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_elb_ip |cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/ Check ELB on US Server/' |say


           fi






         done










########################FreshService EUC##########################






curl -s -u user_name:passeord https://euc-nagios_URL/ > FS_EUC_nagios






 for i in `cat FS_EUC_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do 


           if  (( $i > $time ))


             then


             cat FS_EUC_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep RDS.CPUUtilization|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/CPU utilization on  EUC server /' |say


           fi






         done










 for i in `cat FS_EUC_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_EUC_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep RDS.WriteIOPS|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Write IOPS  on  EUC server/' |say


           fi






         done














 for i in `cat FS_EUC_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_EUC_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_long_running_request|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/Long Running request on EUC server /' |say


           fi






         done














for i in `cat FS_EUC_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_EUC_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_load|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check load on EUC server /' |say


           fi






         done














for i in `cat FS_EUC_nagios | grep  minutes -B15| grep minutes| sed -e 's/\<td\>//g' | sed -e 's/\<\/td\>//g' |awk '{print $1}'|sort |uniq -c |sort -n |awk '{print $2}'`


        do


           if  (( $i > $time ))


             then


             cat FS_EUC_nagios| grep "$i minutes" -B15| grep host_name |grep -vFf ignore_list|grep check_disk|cut -d'?' -f2  | cut -d'=' -f2 | cut -d'&' -f1 | sed -e 's/\"\>//g'| sort |uniq -c |sort -n|awk '{print $2}'| sed  -e 's/^/check Disk on  Fresh Service E U C /' |say


           fi
