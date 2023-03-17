require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'method checking' do
    it 'if data stores using new' do
      post = Post.new({ title: 'mayur', body: 'good boy vaaf abvf av' }).save
      expect(post).to be true
    end

    it 'if data stores using create' do
      post = Post.create({ title: 'mayur', body: 'good boy vaaf abvf av' }).save
      expect(post).to be true
    end

    it 'if first data deletes' do
      post = Post.first.delete
      expect(post).to be true
    end
  end
end
