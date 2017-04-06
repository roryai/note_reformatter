# class NoteReformatter
#   attr_reader :contents
#
#   def initialize
#     @file_path = '/Volumes/Secomba/rory/Boxcryptor/Google\ Drive/Coding_encrypted/note_reformatter/notes/note2.txt'
#     @contents = ''
#   end
#
#   def output
#     "Hello, world."
#   end
#
#   def read_file
#     File.open(@file_path, 'r') do |file|
#       file.each_line do |line|
#         puts line
#       end
#     end
#   end
#
# end
#
# NoteReformatter.new.read_file
