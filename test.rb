require 'Ipgeobase'

meta = Ipgeobase.lookup('217.147.165.12')

#p meta.methods
p meta.city
p meta.country_code
p meta.lat
p meta.lon