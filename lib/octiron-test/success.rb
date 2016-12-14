# coding: utf-8
#
# octiron-test
# https://github.com/jfinkhaeuser/octiron-test
#
# Copyright (c) 2016 Jens Finkhaeuser and other octiron contributors.
# All rights reserved.
#

require 'octiron-test/base'

module Octiron
  ##
  # This namespace holds all event classes defined as part of any octiron
  # package. Sub-Namespaces are possible.
  module EventDefinitions
    ##
    # This namespace holds all events relating to software testing.
    module Test

      ##
      # The Success Event class extends Base by providing a context and a
      # textual description of the event.
      class Success < Base
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
      end # class Success

    end # module Test
  end # module EventDefinitions
end # module Octiron
