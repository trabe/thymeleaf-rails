module Thymeleaf
  module Rails
    class ThymeleafHandler

      def do_render(template_content, locals)
        str = 'th_context = {};'
        str << 'instance_variables.map { |name| th_context[name[1..-1]] = instance_variable_get(name) if name[0].eql?"@" };'
        #str << "instance_variables.merge(#{locals});"
        str << "Thymeleaf::Template.new('#{template_content}', th_context).render.to_s"
        str
      end

      def call(template)
        do_render(template.source, template.locals)
      end
    end
  end
end