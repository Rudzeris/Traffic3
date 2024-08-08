class QUERIES_AND_COMMANDS inherit
	TOURISM

feature -- Commands and Queries

	tryout
			-- Try out queries and commands on lines.
		do
			Paris.display
			Line8.remove_all_segments
			Line8.extend (station_la_motte)
			Line8.extend (station_bastille)
			console.show (line8.count)
			console.show (line8.north_end.name)
			console.show (line8.i_th (1))
			console.show (line8.i_th (3))
		end

end
