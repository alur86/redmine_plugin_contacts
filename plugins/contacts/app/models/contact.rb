class Contact < ActiveRecord::Base

  belongs_to :user
  belongs_to :project

  validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
  validates :phone_add,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
  validates :email, presence: true
  validates :email, :email_format => {:message => 'is not valid email format'}


  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end

end
