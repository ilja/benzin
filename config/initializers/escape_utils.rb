#require 'escape_utils/html/rack' # to patch Rack::Utils
#require 'escape_utils/html/erb' # to patch ERB::Util

module Rack
  module Utils
    def escape(s)
      EscapeUtils.escape_url(s)
    end
  end
end