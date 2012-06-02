=begin
a = [1, 'cat', 3.14]
puts a[0]
puts a[1]
=end


=begin
#inst_section ={
	:cello => 'string', 
	:clarinet=> 'woodwind',
	:drum => 'percussion',
	:oboe => 'woodwind'
}

puts "inst section#1: #{inst_section[:cello]}"
=end
=begin
test = Hash.new

test['test1'] = Hash.new()
test['test1']['key'] = 'val'

puts " test=> #{test['test1']['key']}"
=end

h0  = {'one'=> 1, 'two' => 2, 'three' => 3}
puts h0