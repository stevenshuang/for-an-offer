awk '{for(i=1;i<=NF;i++){a[i]=a[i]_FS$i};_FS=FS}END{for(i=1;i<=NF;i++){print a[i]}}' file.txt
