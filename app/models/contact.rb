class Contact < ApplicationRecord
  belongs_to :kind

  def author
    "Alini Canedo"
  end

  def as_json(options={})
    super(
      root: true,
      methods: :author,
      include: :kind
      
    )
  end
end
