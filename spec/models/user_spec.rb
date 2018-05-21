# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default("")
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  avatar                 :string
#  provider               :string
#  uid                    :string
#  name                   :string
#  image                  :text
#

RSpec.describe User, type: :model do
  it 'User has many comments' do
    expect(subject).to have_many(:chat_rooms).dependent(:destroy)
  end
  it 'User has many categories ' do
    expect(subject).to have_many(:private_chat_rooms).through(:memberships)
  end
  it 'User has many likes' do
    expect(subject).to have_many(:messages).dependent(:destroy)
  end
  it 'User has many likes' do
    expect(subject).to have_many(:private_messages).dependent(:destroy)
  end

  it 'validates the email ' do
    expect(subject).to validate_presence_of(:username)
  end
  it 'validates the title ' do
    expect(subject).to validate_presence_of(:username)
  end
  it { is_expected.to allow_value("vladfree").for(:username) }

  it { is_expected.to_not allow_value("./,91$32").for(:username) }

  it 'SEARCH' do
    user = create(:user)
    user.__elasticsearch__.index_document
    User.__elasticsearch__.refresh_index! # Manually refresh the index instead of waiting
    expect(User.search(user.username).results.map(&:_id)).to include(user.id.to_s)
  end
end
