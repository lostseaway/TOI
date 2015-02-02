
set=[]
set[3] = [1,8]
for i in 4..1000000
	tmp = set[i-1][1]+4
	set[i] = [(i-2)**2,tmp]
	# p set[i]
end
for i in 1..gets.chomp.to_i
	n,m = gets.chomp.split(" ").map{|x| x.to_i}
	a=0
	b=0
	for i in 3..100000
		if(set[i][0]<=n&&set[i][1]<=m)
			a=i
		else
			break
		end
	end
	puts a

end

