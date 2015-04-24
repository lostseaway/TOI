# def find(set,i,q)
# 	if i == 0
# 		return 0
# 	end
# 	if i-q<0
# 		return 0
# 	end
# 	if set[i-q]!=0&&set[i]!=0
# 		# p ["in",i,i-q]
# 		return find(set,i-1,q)+1
# 	else
# 		# p [i,i-q]
# 		return find(set,i-1,q)
# 	end
# end
def find(set,q)
	sum = 0
	for i in 0..set.length-1
		if i+q>=set.length
			break
		end
		if set[i]==1&&set[i+q]==1
			sum+=1
		end
	end
	return sum
end
t = gets.chomp.to_i
for i in 0..t-1
	n,h,q = gets.chomp.split(" ").map{|x| x.to_i}
	arr = []
	n.times{|x| arr[x]=0}
	gets.chomp.split(" ").map{|x| arr[x.to_i]=1}
	# p arr
	ans = []
	gets.chomp.split(" ").map{|x| ans << find(arr,x.to_i)}
	puts ans.join(" ")
	
end