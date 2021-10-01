# location: spec/unit/unit_spec.rb
require 'rails_helper'

# Book > Title unit test
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', price: 14.99, author: "Nathan R", published_date: Date.new(2021, 10, 10))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end


# # Book > Price unit test
# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(title: 'harry potter', price: 14.99)
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a name' do
#     subject.price = nil
#     expect(subject).not_to be_valid
#   end
# end

# # Book > Author unit test
# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(title: 'harry potter', author: "Nathan R")
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a name' do
#     subject.author = nil
#     expect(subject).not_to be_valid
#   end
# end

# # Book > published_date unit test
# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(title: 'harry potter', published_date: Date.new(2021, 10, 10))
#   end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end

#   it 'is not valid without a name' do
#     subject.published_date = nil
#     expect(subject).not_to be_valid
#   end
# end
