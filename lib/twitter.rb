require 'uri'
require 'cgi'
require 'net/http'
require 'yaml'
require 'time'
require 'rubygems'
require 'hpricot'

$:.unshift(File.dirname(__FILE__))
require 'twitter/version'
require 'twitter/easy_class_maker'
require 'twitter/base'
require 'twitter/user'
require 'twitter/search'
require 'twitter/status'
require 'twitter/direct_message'
require 'twitter/rate_limit_status'

module Twitter
  class Unavailable < StandardError; end
  class CantConnect < StandardError; end
  class BadResponse < StandardError; end
  class UnknownTimeline < ArgumentError; end
  class RateExceeded < StandardError; end

  SourceName = 'twittergem'
end