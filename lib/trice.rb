require 'active_support/all'

require 'trice/controller_methods'
require 'trice/errors'
require 'trice/reference_time'
require 'trice/reference_time_accessor'
require 'trice/current_time'
require 'trice/version'

if defined?(Rails)
  require 'trice/railtie'
end

module Trice
  autoload 'SpecHelper', 'trice/spec_helper'

  extend ReferenceTimeAccessor

  mattr_accessor :support_requested_at_stubbing
  mattr_accessor :use_time_with_zone do
    false
  end
end
