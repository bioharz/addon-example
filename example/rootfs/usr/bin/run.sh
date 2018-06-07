while true;
do
    echo Sending IR signal..
    curl --data "code=16429347" http://192.168.1.28/ir
    echo IR Signal sent
    sleep 5
done