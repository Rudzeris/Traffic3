class
	ROUTES

inherit

	TOURISM

feature -- Routes

	traverse
			-- Build a route and traverse Line8.
		do
			Paris.display
			from
				Line8 .start
			invariant
				not_before_unless_empty:
					(not Line8.is_empty) implies (not Line8.is_before)
				-- "Точка отображена для всех станций перед позицией курсора"
			until
				Line8.after
			loop
				if (Line8.item.is_exchange) then
					show_blinking_spot (Line8.item.location)
				elseif (Line8.item.is_railway_connection) then
					show_big_red_spot (Line8.item.location)
				else
					show_spot (Line8.item.location)
				end
				Line8.forth
			variant
				Line8 .count - Line8 .index + 1
			end
		end

end
