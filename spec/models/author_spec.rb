require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'method checking' do
    it 'if data stores' do
      author = Author.new(id: 1, name: 'abc', email: 'abc@gmail.com')
      expect(author).to be true
    end

    it 'if data first receives' do
      Author.new(id: 1, name: 'pqr', email: 'pqr@gmail.com')
      author = Author.first
      expect(author.name).to eq('pqr')
    end
  end
end
