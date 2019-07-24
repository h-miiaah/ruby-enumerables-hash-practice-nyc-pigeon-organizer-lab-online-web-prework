pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon_data = {}

  data.each.do |categeories, attributes|
    attributes.each.do |category, names|
      names.each.do |name|
        new_pigeon_data[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  x = new_pigeon_data.keys
  data[:color].each.do |pigeon_color, name|
    name.each do |pigeon_name|
      x.each do |item|
        if pigeon_name === item
          new_pigeon_data[item][:color] << pigeon_color.to_s
        end
      end
    end
  end

  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_pigeon_data[item][:gender] << gender.to_s
        end
      end
    end
  end

  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_pigeon_data[item][:lives] << location
        end
      end
    end
  end

  return new_pigeon_data

end
