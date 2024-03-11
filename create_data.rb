Place.destroy_all

cdmx = Place.new
cdmx["name"] = "Mexico City"
cdmx.save

charleston = Place.new
charleston["name"] = "Charleston"
charleston.save

beijing = Place.new
beijing["name"] = "Beijing"
beijing.save

amsterdam = Place.new
amsterdam["name"] = "Amsterdam"
amsterdam.save


puts "There are now #{Place.all.count} places I have visited."


#Entry.destroy_all

#tacos = Entry.new
#tacos["title"] = "Ate tacos"
#tacos["description"] = "Add fantastic details"
#tacos["posted_on"] = "2022-01-01"
#tacos["place_id"] = cdmx.id
#tacos.save

#puts "There are now #{Entry.all.count} entries I have visited."