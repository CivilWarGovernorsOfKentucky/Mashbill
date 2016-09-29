class GitTalker
  def refresh_repository
    
  end
  
  def commit_and_push(document)
    # find filename
    # commit_and_push_file(filename)
  end
  
  def commit_and_push_file(filename)
    
  end
  
  # called by webhook to update the encoding on any UTF-16LE files
  def update_encoding
    # sleep for a bit so we don't get a race condition from our own pushes
    
    # loop through files in documents directory
    # if this file's encoding is not UTF-8
    #   iconv
    #   commit_and_push_file(filename)
  end
  
  
end