t= gets.chomp.to_i
for i in 0..t-1
	w,n,l = gets.chomp.split(" ").map{|x| x.to_i}
	sn = gets.chomp.split(" ").map{|x| x.to_i}
	r = (l.to_f/w.to_f)%1
	left = w*r
	ch = false
	n.times{|x| 
		k = (sn[x]+left.round) % w
		if sn.include?(k)
			puts (x+1).to_s
			ch =true
			break
		end
	}
	if !ch
		puts (-1).to_s
	end

end