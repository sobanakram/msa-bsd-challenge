module Api
  module V1
    class HelloWorldController < ApplicationController
      def index
        render plain: "Hello World"
      end
    end
  end
end