require 'pry'
def nyc_pigeon_organizer(data)
  sorted_hash = {}
  data.each_key do |trait|
    data[trait].each_key do |info|
      data[trait][info].each do |name|
        if sorted_hash[name]
          if sorted_hash[name][trait]
            sorted_hash[name][trait] << info.to_s
          else
            sorted_hash[name][trait] = [info.to_s]
          end
        else
          sorted_hash.store(name,{})
          sorted_hash[name][trait] = [info.to_s]
        end
      end
    end
  end
  sorted_hash
end

