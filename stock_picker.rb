def stock_picker ary
	diff_ary = Array.new
	ary.length.times do |variable|
		test = ary.shift
		ary.length > 0 ? diff_ary.push(((ary.sort.last)) - test) : ""
	end
	diff_ary.push(0)
	buy_day = diff_ary.sort.last
	sell_day = diff_ary.slice(diff_ary.index(buy_day), diff_ary.length).sort.first
	puts "[#{diff_ary.index(buy_day)}, #{diff_ary.index(sell_day)}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([12,35,35,42,4,3,2,34,52])
stock_picker([334,538,382,583,728,428,473,449])