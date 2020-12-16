def firstDuplicate(a)
	@builder = {}
	a.each_with_index do |ele, i|
			
			if @builder[ele].nil? 
					@builder[ele] = [1, i] 
			else
					@builder[ele] = [ (@builder[ele][0] += 1) , i]
			end
	end
	
	defaults_back =  @builder.values.any? do |ele|
			ele[0] > 1
	end
	
	@sorted_builter = @builder.sort_by do |k,v|
			v[0]
	end
	
	if defaults_back 
			return @sorted_builter[-1][0]
	else
			return -1
	end
end