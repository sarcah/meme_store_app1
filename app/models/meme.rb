class Meme < ApplicationRecord
    has_one_attached :image
    validates :image, presence: { message: " - Every meme needs to have an image" }
end
