class Contact < ActiveRecord::Base

  validates :email, confirmation: true

  validate :validate_name
  validate :validate_email
  validate :validate_city_ids
  validate :validate_description

  serialize :city_ids

  def validate_name
    unless name.presence
      errors.add(:name, "お名前を入力してください")
    end
  end

  def validate_email
    errors.add(:email, "メールアドレスを確認してください") unless email.match(/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i) and email == email_confirmation 
  end

  def validate_city_ids
    unless city_ids
      errors.add(:city_ids, "都市を選択してください")
    end
  end

  def validate_description
    unless description.presence
      errors.add(:description, "内容を入力してください")
    end
  end
end
