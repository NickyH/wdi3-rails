# == Schema Information
#
# Table name: subscriptions
#
#  id           :integer          not null, primary key
#  plan         :string(255)
#  duration     :string(255)
#  cost         :decimal(, )
#  no_of_photos :integer
#  no_of_texts  :integer
#  no_of_emails :integer
#  a_list       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :subscription, class: Subscription do
    plan        'Basic'
    duration    1
  end
end
