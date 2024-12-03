class
	ROUTES

inherit

	TOURISM

feature -- Traversing

	traverse
			--  Traverse Line8.
		do
			from
				Line8.start
			until
				Line8.after
			loop
				show_station(Line8.item)
				Line8.forth
			end
		end
	show_station (s: TRAFFIC_STATION)

		require
			station_exists: s /= Void
		do
			 if s.is_exchange then
				 show_blinking_spot (s.location)
			 elseif s.is_railway_connection then
				 show_big_red_spot (s.location)
			 else
				 show_spot (s.location)
			 end
		end
end
