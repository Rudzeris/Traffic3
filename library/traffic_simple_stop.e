note
	description: "A simple version of the class TRAFFIC_STOP"
	date: "$Date$"
	revision: "$Revision$"

class
	TRAFFIC_SIMPLE_STOP

feature

	station: TRAFFIC_STATION
		-- Station which this stop represents
	line: TRAFFIC_LINE

	right: TRAFFIC_SIMPLE_STOP
		-- Next stop on same line

	set_station_and_line(s: TRAFFIC_STATION; l :TRAFFIC_LINE)
		require
			station_exists: s/= void
			line_exists: l/= void
		do
			station := s
			line := l
		ensure
			station_set: station = s
			line_set: line = s
		end

	link(s: TRAFFIC_SIMPLE_STOP)
			-- make `s' the next stop on the line
		do
			right := s
		ensure
			right_set: right = s
		end


end
