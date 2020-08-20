class UsersController < ApplicationController
    before_action :say_hello, except: [:notShow]

    def show
        puts "Goodbye"
    end

    def notShow
        puts "Please be quiet"
        render 'show'
    end

    def alsoShow
        render 'show'
    end

    def say_hello
        puts "Hello"
    end
end
