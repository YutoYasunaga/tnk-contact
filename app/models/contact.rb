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
    if name.match(/[0-9]/) or name.match(/[０-９]/)
      errors.add(:name, "名前に番号がありません")
    end
    if name.length > 20
      errors.add(:name, "名前はとても長いです")
    end
  end

  def validate_email
    unless email.match(/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i)
      errors.add(:email, "メールアドレスのフォーマットが違います")
    end
    if email.include?(".@")
      errors.add(:email, "@の前にドットがありません")
    end
    if email != email_confirmation
      errors.add(:email, "メールを確認してください")
    end
  end

  def validate_city_ids
    unless city_ids.presence
      errors.add(:city_ids, "都市を選択してください")
    end
  end

  def validate_description
    unless description.presence
      errors.add(:description, "内容を入力してください")
    end
    
    if description.length < 5
      errors.add(:description, "問い合わせ内容がとても短いです")
    end
  end
end
