class Contact < ApplicationRecord
  belongs_to :kind#, optional: true
  has_many :phones

  accepts_nested_attributes_for :phones, allow_destroy: true

  # def author
  #   "Alini Canedo"
  # end

  # def as_json(options={})
  #   super(
  #     root: true,
  #     methods: :author,
  #     include: :kind      
  #   )
  # end
end
