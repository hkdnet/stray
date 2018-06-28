require_relative 'basic_object'
require_relative 'kernel'

module RubyWalker
  module Builtin
    class Object < ::RubyWalker::Builtin::BasicObject
      include ::RubyWalker::Builtin::Kernel

      def send(name, *args, &blk)
        __send__(name, *args, &blk)
      end

      def class
        ::RubyWalker::Builtin::Object
      end

      def to_s
        ::RubyWalker::Builtin::String.new(rb_to_s)
      end

      def rb_to_s
        '#<Object>'
      end
    end
  end
end