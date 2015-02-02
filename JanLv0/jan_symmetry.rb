for i in 1..gets.chomp.to_i
	n = gets.chomp.to_i
	line = gets.chomp.split(" ").map{|x| x.to_i}
	c = []
	sub =[]
	sc = 0
	for j in 0..line.length-1
		if(line[j]==1)
			sub[j] = -1
		else
			if(j==0)
				sc+=1
				sub[j]=sc
				c << [1,sc]
			else
				if(sub[j-1]!=-1)	
					c[-1][0]+=1
					sub[j] = sc
				else
					sc+=1
					sub[j] = sc
					c << [1,sc]
				end
			end
		end
		# p line
		# p sub
		# p c
	end
	out = c.select{|x| x[0]%2==1}
	if(out != [])
		max = 0
		for j in out
			if j[0]>max
				max = j[0]
			end
		end
		out = c.select{|x| x[0]==max}[0]
		# p out
		po = (out[0]/2)+1
		# p po
		cp = 1
		for j in 0..line.length-1
			if(sub[j]==out[1])
				if(cp == po)
					puts j 
					break
				end
				cp+=1
			end
		end
	else
		puts -1
	end

end