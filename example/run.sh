

while true;
do
    echo Sending IR signal..
    wget -q --spider http://192.168.1.28/ir?code=16429347
    #curl --data "code=16429347" http://192.168.1.28/ir
    echo IR Signal sent
    sleep 5
done