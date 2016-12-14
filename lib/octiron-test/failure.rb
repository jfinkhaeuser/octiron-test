# coding: utf-8
#
# octiron-test
# https://github.com/jfinkhaeuser/octiron-test
#
# Copyright (c) 2016 Jens Finkhaeuser and other octiron contributors.
# All rights reserved.
#

require 'octiron-test/success'

module Octiron
  ##
  # This namespace holds all event classes defined as part of any octiron
  # package. Sub-Namespaces are possible.
  module EventDefinitions
    ##
    # This namespace holds all events relating to software testing.
    module Test

      ##
      # The Failure event contains more fields than the Success event: it adds
      # an exception and a message field.
      class Failure < Success
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
      end # class Failure

      ##
      # Add Error as an alias for Failure
      Error = Failure

    end # module Test
  end # module EventDefinitions
end # module Octiron
