require 'ygoprodeck'

z = Ygoprodeck::Name.is('Dark Magician')
puts z

puts Ygoprodeck::Image_small.is(z['id'])
