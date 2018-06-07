
main() {

	while true;
	do
		echo Sending IR signal..
		wget -q --spider http://192.168.1.28/ir?code=$(hass.config.get 'ir_signal')
		#curl --data "code=16429347" http://192.168.1.28/ir
		echo IR Signal sent
		sleep $(hass.config.get 'sending_interval_sec')
	done
}

main "$@"