class Reencoder
  def needs_reencoding?(filename)
    /UTF-16/ =~ `file #{filename}`
  end
  
  def reencode_and_reformat(filename)
    doc = File.open(filename) { |f| Nokogiri::XML(f) }
    File.write(filename, doc.to_xml)    
  end
  
  def reencode_directory(path)
    reencoded = false
    Dir.glob(File.join(path, "*.xml")).each do |filename|
      if needs_reencoding?(filename)
        reencode_and_reformat(filename)
        reencoded = true
      end
    end
    
    reencoded
  end
end