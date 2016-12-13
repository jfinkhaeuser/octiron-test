# coding: utf-8
#
# octiron-test
# https://github.com/jfinkhaeuser/octiron-test
#
# Copyright (c) 2016 Jens Finkhaeuser and other octiron contributors.
# All rights reserved.
#

require 'octiron-test/version'

module Octiron
  ##
  # This namespace holds all event classes defined as part of any octiron
  # package. Sub-Namespaces are possible.
  module EventDefinitions
    ##
    # This namespace holds all events relating to software testing.
    module Test

      ##
      # The Error class defines an interface for handling test errors. It aims
      # to be simple, extensible, yet complete enough for most applications.
      class Error
        ##
        # The exception field holds any exception that might have been raised.
        # It is strongly recommended to always fill this field.
        # As exceptions encapsulate messages and backtraces, it is probably the
        # most valubale field in the interface.
        attr_accessor :exception

        ##
        # The message field holds any optional message that isn't part of the
        # exception itself. It must be a String, or convertible to String.
        attr_accessor :message

        ##
        # The context field holds any optional context you wish to carry in the
        # event. It is an entirely opaque field to octiron itself.
        attr_accessor :context

        ##
        # The description field holds any human readable description you might
        # want to carry. It allows you to provide more textual context to the
        # exception, without relying on any particular generator to extract it
        # from the above fields. Descriptions must be String, or convertible to
        # String.
        attr_accessor :description

        ##
        # The description type is a textual type identifier for the description
        # field above. The type must be String or convertible to String, and it
        # is recommended to use mime types, such as from the IANA list or others
        # in common use:
        # http://www.iana.org/assignments/media-types/media-types.xhtml
        attr_accessor :description_type
      end # class Error
    end # module Test
  end # module EventDefinitions
end # module Octiron
