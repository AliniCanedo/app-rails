class Contact < ApplicationRecord
  belongs_to :kind#, optional: true
  has_many :phones
  has_one :address

  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address, update_only: true

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
