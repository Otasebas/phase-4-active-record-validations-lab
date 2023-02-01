class Author < ApplicationRecord
    validates :name, {
        presense: true,
        uniqueness: true
    }

end
