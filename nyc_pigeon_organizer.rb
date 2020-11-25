require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, val), output|
    val.each do |key2, val2|
      val2.each do |name|
        if !output[name]
            output[name] = {}
        end
        if !output[name][key]
           !output[name][key] = []
        end
      output[name][key].push(key2.to_s)
      end 
    end
  end
end
