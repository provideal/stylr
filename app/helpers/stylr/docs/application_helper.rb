module Stylr::Docs::ApplicationHelper

  def file_contents(file)
    File.readlines(file).collect{ |line| line }.join('')
  end

end
