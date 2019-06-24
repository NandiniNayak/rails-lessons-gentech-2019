class Author < ApplicationRecord
    has_one :address, dependent: :destroy
    has_many :books, dependent: :destroy
end
