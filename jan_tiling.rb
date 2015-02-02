
set=[]
set[3] = [1,8]
for i in 4..100000
	tmp = set[i-1]+4
	set[i] = [(l-2)**2,tmp]
end
for i in 1..gets.chomp.to_i
	n,m = gets.chomp.split(" ").map{|x| x.to_i}
	a=0
	b=0
	for i in 4..100000
		if(set[i][0]==nset[i][0]<=m)
			a=i
		end
		if(set[i][0]>n&&set[i][1]<=m)
			a=i-1
		end

		if(set[i][1]==m&&set[i][0]<=n)
			b=i
		end
		if(set[i][1]>m&&set[i][0]<=n)
			b=i-1
		end
		puts [a,b].max.to_i
	end

end

