require 'pry'
def nyc_pigeon_organizer(data)
  organized_data = {}
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |attribute_value, names|
      names.each do |name|
        if !organized_data[name]
          organized_data[name] = {}
        end
        if !organized_data[name][attribute]
          organized_data[name][attribute] = []
        end
        organized_data[name][attribute] << attribute_value.to_s
      end
    end
  end
  organized_data
end
