class LINE_BUILDING inherit
	TOURISM

feature -- Line building

	build_a_line
			-- Build an imaginary line and highlight it on the map.
		do
			Paris.display
			create fancy_line.make_metro ("FANCY")
			Paris.put_line (fancy_line)
			create stop1.set_station_and_line (station_montrouge,fancy_line)
			create stop2.set_station_and_line (station_issy,fancy_line)
			create stop3.set_station_and_line (station_balard,fancy_line)
			-- "connect line"
			stop1.link (stop2)
			stop2.link (stop3)
			fancy_line.highlight
		end

	fancy_line: TRAFFIC_LINE
			-- line from Paris metro
	stop1, stop2, stop3: TRAFFIC_STOP
			-- остановка
end
