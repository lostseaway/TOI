for i in 1..gets.to_i
	w,l,a,b = gets.chomp.split(" ").map{|x| x.to_i}
	m1 = (w-a)*l
	m2 = w*(l-b)
	puts [m1,m2].max.to_i
end