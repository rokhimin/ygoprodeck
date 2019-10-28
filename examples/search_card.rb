require 'ygoprodeck'

z = Ygoprodeck::Name.is('Dark Magician')
puts z[0]['name']