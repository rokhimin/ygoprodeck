require 'ygoprodeck'

z = Ygoprodeck::Name.is('Dark Magician')
puts z
puts '#' *10
puts Ygoprodeck::Image.is(z['id'])
puts '#' *10
puts Ygoprodeck::ImageSmall.is(z['id'])
