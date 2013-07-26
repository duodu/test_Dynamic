def traverse_dir(file_path)  
  if File.directory? file_path  
    Dir.foreach(file_path) do |file|  
      if file!="." and file!=".."  
        traverse_dir(file_path+"/"+file){|x| yield x}  
      end  
    end  
  else  
    yield  file_path  
  end  
end

traverse_dir("E:\lib")
