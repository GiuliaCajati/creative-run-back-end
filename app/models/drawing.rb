require 'byebug'
class Drawing < ApplicationRecord
    has_many :markers
end
