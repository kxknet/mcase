FILE="ssl.txt"
while read LINE; do
a=`echo $LINE | awk '{print $1}'`;
b=`echo $LINE | awk '{print $2}'`;
bash ./gen-ssl-www.sh $a $b;
done < $FILE