def get_file_list(path)  
  Dir.entries(path).each do |sub|         
    if sub != '.' && sub != '..'  
      if File.directory?("#{path}/#{sub}")  
        puts "[#{sub}]"  
        get_file_list("#{path}/#{sub}")  
      else  
        puts "  |--#{sub}"  
      end  
    end  
  end  
end

get_file_list("E:\lib")
