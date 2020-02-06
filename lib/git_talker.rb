class GitTalker
  def refresh_repository(directory)
#    system("cd #{directory}; git pull")
  end
  
  
  def commit_and_push_file(filename, user)
    tt = TextTransporter.new
    username =  user.email.sub(/@.*/, '')
    command = "cd #{Rails.application.config.document_root}; git pull; git add #{filename}; git commit -m 'changes by Mashbill user #{username}'; git push"
    system(command)
    raise StandardError.new("Git command failed") if $? != 0
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