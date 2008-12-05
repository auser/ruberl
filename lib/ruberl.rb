$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require "socket"

module Ruberl
end

require "#{File.dirname(__FILE__)}/ruberl/base"