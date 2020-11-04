require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  result = data.each_with_object({}) do |( key, values ), resultArray|
    values.each do |innerKey, namesArray|
      namesArray.each do |name|
        resultArray[ name ] = {} if !resultArray[ name ]
        resultArray[ name ][ key ] = [] if !resultArray[ name ][ key ]
        resultArray[ name ][ key ].push( innerKey.to_s )
      end
    end
  end
  result
end
