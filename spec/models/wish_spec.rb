require 'rails_helper'

# TODO: FactoryBotを使ってテストデータを作成する
RSpec.describe Wish, type: :model do
  describe 'writerのテスト' do
    context "writerの文字数が0の場合" do
      it "保存に失敗する" do
        wish = Wish.new(writer: '', context: 'test')
        expect(wish).not_to be_valid
      end
    end

    context "writerの文字数が1の場合" do
      it "保存に成功する" do
        wish = Wish.new(writer: 'a', context: 'test')
        expect(wish).to be_valid
      end
    end

    context "writerの文字数が25の場合" do
      it "保存に成功する" do
        wish = Wish.new(writer: 'a' * 25, context: 'test')
        expect(wish).to be_valid
      end
    end

    context "writerの文字数が26の場合" do
      it "保存に失敗する" do
        wish = Wish.new(writer: 'a' * 26, context: 'test')
        expect(wish).not_to be_valid
      end
    end
  end
end
