for i in 1..gets.chomp.to_i
	m,n = gets.chomp.split(" ").map{|x| x.to_i}
	map = []
	for j in 1..m
		map << gets.chomp.split(" ").map{|x| x.to_i}
	end

	sum = [0,0,0]
	# p [m,n]
	for j in 0..m-1
		for k in 0..n-1
			# p [j,k]
			if(k!=n-1)
				s = map[j][k]+map[j][k+1]
				d = (map[j][k]-map[j][k+1]).abs
				if(d<=10)
					if(s > sum[2])
						sum[0] = j
						sum[1] = k
						sum[2] = s
					end
				end
			end
			if(j!=m-1)
				s = map[j][k]+map[j+1][k]
				d = (map[j][k]-map[j+1][k]).abs
				if(d<=10)
					if(s > sum[2])
						sum[0] = j
						sum[1] = k
						sum[2] = s
					end
				end
			end
		end
	end
	puts [sum[0]+1,sum[1]+1].join(" ")
end