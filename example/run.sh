
main() {
	CONFIG_PATH=/data/options.json


	while true;
	do
		echo Sending IR signal..
		wget -q --spider http://192.168.1.28/ir?code=$(jq --raw-output ".ir_signal" $CONFIG_PATH)
		#curl --data "code=16429347" http://192.168.1.28/ir
		echo IR Signal sent
		sleep $(jq --raw-output ".sending_interval_sec" $CONFIG_PATH)
	done
}

main "$@"