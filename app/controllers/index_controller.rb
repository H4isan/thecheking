class IndexController < ApplicationController
    before_action :authenticate_user!
    def index
        @checks = Money.all
    end
end
