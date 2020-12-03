require 'pry'

# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }



def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array|
  # binding.pry
  value.each do |inner_key, name_group|
    name_group.each do |pigeon_name|
      if !final_array[pigeon_name]
        final_array[pigeon_name] = {}
      end
      if !final_array[pigeon_name][key]
        final_array[pigeon_name][key] = []
      end
      final_array[pigeon_name][key].push(inner_key.to_s)
    end
  end
end
# binding.pry
end
