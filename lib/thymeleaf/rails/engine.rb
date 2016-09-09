require_relative 'handler'

module Thymeleaf
  module Rails
    class Engine < ::Rails::Engine
      
      initializer "thymeleaf.register_template_handler" do
        
        ActionView::Template.register_template_handler :th, ThymeleafHandler.new
        ActionView::Template.register_template_handler :thymeleaf, ThymeleafHandler.new
        Mime::Type.register "text/html", :th
      end
    end
  end
end

