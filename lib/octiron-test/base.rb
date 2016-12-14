# coding: utf-8
#
# octiron-test
# https://github.com/jfinkhaeuser/octiron-test
#
# Copyright (c) 2016 Jens Finkhaeuser and other octiron contributors.
# All rights reserved.
#

module Octiron
  ##
  # This namespace holds all event classes defined as part of any octiron
  # package. Sub-Namespaces are possible.
  module EventDefinitions
    ##
    # This namespace holds all events relating to software testing.
    module Test

      ##
      # The Base event class takes initializer options. Any symbol key for
      # which the (derived) class knows a getter and a setter is automatically
      # set from the options.
      class Base
        def initialize(options = nil)
          @options = options.dup if options

          if @options.nil?
            return
          end

          methods = public_methods - [:options]
          methods.each do |meth|
            setter = "#{meth}=".to_sym
            if not respond_to?(setter)
              next
            end

            if not @options.key?(meth)
              next
            end

            send(setter, @options[meth])
          end
        end

        attr_reader :options
      end # class Base

    end # module Test
  end # module EventDefinitions
end # module Octiron
