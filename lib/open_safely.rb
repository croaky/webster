require 'fileutils'
require 'tempfile'

class File
  def File.open_safely(path)
    result, temp_path = nil, nil
    Tempfile.open("#{$0}-#{path.hash}") do |file|
      result = yield file
      temp_path = file.path
    end
    FileUtils.move temp_path, path
    result
  end
end

