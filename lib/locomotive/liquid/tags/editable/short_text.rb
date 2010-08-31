module Locomotive
  module Liquid
    module Tags
      module Editable
        class ShortText < Base

          protected

          def render_element(element)
            element.content
          end

          def document_type
            EditableShortText
          end

        end

        ::Liquid::Template.register_tag('editable_short_text', ShortText)
      end
    end
  end
end