require 'open-uri'
require 'net/http'
require 'json'
require 'amatch'
require 'ygoprodeck/version'
require 'ygoprodeck/errors'
require 'ygoprodeck/search/client/endpoint'
require 'ygoprodeck/search/client/image_gapis'
require 'ygoprodeck/search/card_sets'
#require 'ygoprodeck/search/all_card' # performance issue
require 'ygoprodeck/search/random'
require 'ygoprodeck/search/name'
require 'ygoprodeck/search/list'
require 'ygoprodeck/search/match'
require 'ygoprodeck/search/fuzzy_name'
require 'ygoprodeck/search/archetype'
require 'ygoprodeck/search/banlist'
require 'ygoprodeck/search/check_db_version'
include Amatch

module Ygoprodeck
end
