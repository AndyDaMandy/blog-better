class AdminController < ApplicationController
    def new
        @admin = Admin.new
    end
end