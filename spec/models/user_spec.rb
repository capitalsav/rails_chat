require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'User associations' do
    it { expect(subject).to have_many(:chat_rooms).dependent(:destroy) }
    it { expect(subject).to have_many(:messages).dependent(:destroy) }
    it { expect(subject).to have_many(:private_chat_rooms).through(:memberships) }
    it { expect(subject).to have_many(:private_messages).dependent(:destroy) }
  end
end
