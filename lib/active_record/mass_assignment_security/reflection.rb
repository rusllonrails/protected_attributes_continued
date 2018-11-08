module ActiveRecord
  module Reflection
    if defined?(AbstractReflection)
      class AbstractReflection
        undef :build_association

        def build_association(*options, &block)
          klass.new(&block)
        end
      end
    else
      class AssociationReflection
        undef :build_association

        def build_association(*options, &block)
          klass.new(&block)
        end
      end
    end
  end
end
