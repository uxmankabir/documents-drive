class Folder < ApplicationRecord
  has_many_attached :documents
  belongs_to :user
end