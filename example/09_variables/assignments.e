class
	ASSIGNMENTS

inherit

	TOURISM

feature -- Path building

	startup

		do
			paris.display
			console.show (total_time8)
			console.show (highest_name (Line8))
		end


	total_time8 : REAL_64
			-- Return the travel time on the Metro Line 8
		do
			from
				Line8.start

				Result := 0.0
			invariant
				-- "Значение Result - это время поездки от первой станции
				-- до текущей станции, заданной позицией курсора"
			until
				Line8.index = Line8.count
			loop
				Result := Result + Line8.stops[Line8.index].time_to_next
				Line8.forth
			variant
				Line8.count - Line8.index
			end
		end

	highest_name(line: TRAFFIC_LINE): STRING
			-- Alphabetically last of names of stations on line
		require
			line_exists: line /= Void
		local
			i: INTEGER
			new: STRING
		do
			from
				Result := line.south_end.name
				i := 1
			invariant
				-- "Значение Result - это 'максимальное'(в лексическом порядке)
				-- название среди названий от первой до текущей станции,
				-- заданной позицией курсора"
			until
				i = line.count
			loop
				new := line.i_th (1).name
				if new > Result then
					Result := new
				end
				i := i + 1
			end
		end

end
