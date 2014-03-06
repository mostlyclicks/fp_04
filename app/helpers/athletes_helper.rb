module AthletesHelper
  def magic_splitter(data)
    @data_split = data.split(/\n/)
  end

  def comma_splitter(line)
    a = line.split(', ')

    # a.each do |td|  
    #   "<td>" + td + "</td>"
    # end
    #puts "hello"
    # "<td>#{a}</td>"
    a
  end
end
