require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  sorted_data = {}
  data.each do |key, value|
    value.each do |key2, value2|
      value2.each do |name|
       if !sorted_data[name]
      sorted_data[name] = {}
       end
       if !sorted_data[name][key]
         sorted_data[name][key] = []
       end
      sorted_data[name][key].push(key2.to_s)
      # binding.pry
      end
      
        
    end
  end
#binding.pry
sorted_data
end
