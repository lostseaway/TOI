# def find(i,c,n,set,d)
# 	if(i==-1)
# 		return [0,-1]
# 	end
# 	dif =(set[i]-set[i+1]).abs
# 	pi = [0,0]
# 	np = [0,0]
# 	if dif >=1 && dif<=2
# 		pi = find(i-1,c,n,set,d+1)
# 		pi[0]+=1
# 	elsif c!=0
# 		pi = find(i-1,0,n,set,d+1)
# 		pi[0]+=1
# 		pi[1] = i
# 	elsif c==0
# 		return [0,0]
# 	end
		
# 	np = find(i-1,c,n,set,d+1)
# 	print ">"*d
# 	p [i,pi,np]
# 	if pi[0]>np[0]
# 		return pi
# 	elsif pi[0]==np[0]
# 		if pi[1]<np[1]
# 			return pi
# 		else
# 			return np
# 		end
# 	else
# 		return np
# 	end

# end


def count(i,d,set)
	if i==-1
		return 0
	elsif i>set.length-1
		return 0
	end
	dif =(set[i]-set[i+d]).abs
	if dif >=1 && dif<=2
		return count(i+d,d,set)+1
	else
		return 1
	end
		
end

t= gets.chomp.to_i
for i in 0..t-1
	n = gets.chomp.to_i
	set = gets.chomp.split(" ").map{|x| x.to_i}
	ans = [0,0]
	for j in 0..set.length-1
		if j>0
			dd = set[j-1]-set[j+1]
			lef = count(j-1,-1,set)
			rg = count(j+1,1,set)
			if dd>=0 && dd <=4
				if lef+rg > ans[0]
					if j<ans[1]
						ans[0]=lef+rg
						ans[1]
					end
				end
			else

				if lef>=rg
					if lef>ans[0]
						if j < ans[1]
							ans[0]=lef
							ans[1]=j
						end
					end
				else
					if rg>ans[0]
						if j < ans[1]
							ans[0]=rg
							ans[1]=j
						end
					end
				end
			end
		end

		

	end

	# ans[0]+=1
	puts ans.join(" ")
end