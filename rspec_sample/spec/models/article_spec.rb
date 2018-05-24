require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:each) {p "毎回の前準備"}
  before(:all) {p "最初の一回のみの前準備"}
  after(:each) {p "毎回の後処理"}
  after(:all) {p "一番最後の後処理"}

  # pending "add some examples to (or delete) #{__FILE__}"
  describe '.abbreviated_title' do
    context '記事タイトルが20文字未満の場合' do
      it '記事のタイトルがそのままのこと' do
        article = Article.new(title: 'そのままのタイトル')
        expect(article.abbreviated_title).to eq 'そのままのタイトル'
      end
    end
    context '記事タイトルが20以上の時' do
      it '記事が省略されることを確認' do
        article = Article.new(title: 'a' * 20)
        expect(article.abbreviated_title).to eq "#{'a' * 19}..."
      end
    end
  end

  describe '.published' do
    before(:each) {p "テストグループ内の前準備"}
    context '記事が未公開の場合' do
      it '記事が公開状態になっているか' do
        article = Article.new(status: :draft)
        article.publish
        expect(article.published?).to be_truthy
      end
    end
  end
  context '記事が公開されている場合' do
    it '記事が公開状態のままであること' do
      article = Article.new(status: :published)
      article.publish
      expect(article.published?).to be_truthy
    end
  end

  it 'pendingの振る舞いチェク' do
    pending "テストを保留します"
    expect(1).to eq 2
  end

  skip '全体をスキップ' do
    it 'skip振る舞いテスト' do
      expect(1).to ep 2
    end
  end
end
