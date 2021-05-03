class Document < ApplicationRecord
  belongs_to :step
  belongs_to :skill
end
