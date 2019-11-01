# Ygoprodeck

![Lang](https://img.shields.io/badge/language-ruby-red)
[![Gem](https://img.shields.io/gem/v/ygoprodeck.svg)](https://rubygems.org/gems/ygoprodeck)
[![Gem](https://img.shields.io/gem/dt/ygoprodeck.svg)](https://rubygems.org/gems/ygoprodeck)
[![Build Status](https://travis-ci.com/rokhimin/ygoprodeck.svg?branch=master)](https://travis-ci.com/rokhimin/ygoprodeck)

API wrapper for search yugioh card

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ygoprodeck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ygoprodeck

## Usage
First :
```ruby
require 'ygoprodeck'
```

Fuzzy search : (RECOMMENDED)
```ruby
Ygoprodeck::Fname.is('dark magician')
```

Normal search :
```ruby
Ygoprodeck::Name.is('time wizard')
```

Random search :
```ruby
Ygoprodeck::Card.random
```

List search :
```ruby
Ygoprodeck::List.is('magician')
```

Archetype search :
```ruby
Ygoprodeck::Archetype.is('blue-eyes')
```

All card sets :
```ruby
Ygoprodeck::Card.sets
```

Banlist (TCG, OCG, GOAT) :
```ruby
Ygoprodeck::Banlist.tcg
Ygoprodeck::Banlist.ocg
Ygoprodeck::Banlist.goat
```

or look [examples](https://github.com/rokhimin/ygoprodeck/blob/master/examples)

#### Noted 
Rate Limiting on the API is enabled. The rate limit is 20 requests per 1 second

#### Response Information

##### Monster Cards
- id - ID or Passocde of the card.
- name - Name of the card.
- type - The type of card you are viewing (Normal Monster, Effect Monster, Synchro Monster, etc).
- desc - Card description/effect.
- atk - The ATK value of the card.
- def - The DEF value of the card.
- level - The Level/RANK of the card.
- race - The card race which is officially called type (Spellcaster, Warrior, Insect, etc).
- attribute - The attribute of the card.

##### Spell/Trap Cards

- id - ID or Passocde of the card.
- name - Name of the card.
- type - The type of card you are viewing (Spell Card or Trap Card).
- desc - Card description/effect.
- race - The card race which is officially called type for Spell/Trap Cards (Field, Equip, Counter, etc).

##### Additional Response for Pendulum Monsters

- scale - The Pendulum Scale Value.

##### Additional Response for Link Monsters

- linkval - The Link Value of the card if it's of type "Link Monster".
- linkmarkers - The Link Markers of the card if it's of type "Link Monster". This information is returned as an array.

## Development

#### Test
```
rake spec 
```

## Contributing
Fork and Pull Request to contibuting https://github.com/rokhimin/ygoprodeck .

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct
Everyone interacting in the Ygoprodeck project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rokhimin/ygoprodeck/blob/master/CODE_OF_CONDUCT.md).