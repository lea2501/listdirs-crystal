module FileUtils
  extend self

  def get_directory_files(path)
    # Get expanded path
    path_expand = File.expand_path(path)

    # Set directory object for the named directory
    directory = Dir.new(path_expand)
    
    # Iterate directory children after sort array items
    print "#{directory} contents:\n"
    directory.children.sort.each do |dir|
        print "  #{dir}\n"
    end
  end
end
