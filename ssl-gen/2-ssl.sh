FILE="ssl-no-www.txt"
while read LINE; do
a=`echo $LINE | awk '{print $1}'`;
b=`echo $LINE | awk '{print $2}'`;
bash ./gen-ssl.sh $a $b;
done < $FILE