require 'ygoprodeck'

yugi = Ygoprodeck::Card.random
    puts yugi

    puts '#' *10

        puts yugi['id']
        puts yugi['name'] 
        puts yugi['attribute'] 
        puts yugi['type'] 
        puts yugi['race'] 
        puts yugi['level'] 
        puts yugi['desc']
        puts yugi['atk'] 
        puts yugi['def']
        puts Ygoprodeck::Image.is(yugi['id']) 
        puts Ygoprodeck::Image_small.is(yugi['id'])