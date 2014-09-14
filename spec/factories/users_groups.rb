# == Schema Information
#
# Table name: group_members
#
#  id                 :integer          not null, primary key
#  group_access       :integer          not null
#  group_id           :integer          not null
#  user_id            :integer          not null
#  created_at         :datetime
#  updated_at         :datetime
#  notification_level :integer          default(3), not null
#

FactoryGirl.define do
  factory :users_group do
    group_access { GroupMember::OWNER }
    group
    user
  end
end
