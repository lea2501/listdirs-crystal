require "option_parser"
require "../lib/fileutils"

extend FileUtils

# Set default directory to current dir
directory = "."

# Parse command line arguments
OptionParser.parse do |parser|
  parser.banner = "Usage: listdirs [arguments]"
  parser.on("-d PATH", "--dir=PATH", "Specifies the directory to list files") { |path| directory = path }
  parser.on("-h", "--help", "Show this help") do
    puts parser
    exit
  end
  parser.invalid_option do |flag|
    STDERR.puts "ERROR: #{flag} is not a valid option."
    STDERR.puts parser
    exit(1)
  end
end

# Get files in directory
base_dir = get_directory_files(directory)

# TODO get random file from base_dir