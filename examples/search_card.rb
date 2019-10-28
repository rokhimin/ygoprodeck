require 'ygoprodeck'

z = Ygoprodeck::Fname.is('diamond core')
puts z
puts '#' *10
puts Ygoprodeck::Image.is(z['id'])
puts '#' *10
puts Ygoprodeck::Image_small.is(z['id'])
