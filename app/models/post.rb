class Post < ApplicationRecord
    
    validates :titles, presence: true

    validates(name, { :length => { :minimum => 250} })
    validate :summary, { :length => { :maximum => 250}}
    validates :category, inclusion ['Fiction', 'Non-Fiction']

    validate :is_clickbaity

    def is_clickbaity
        if !(title.include? "Won't Believe")
            error.add(:title, 'hey this is not clickbaity enough')
        end
    end

end
