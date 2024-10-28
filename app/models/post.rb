class Post < ApplicationRecord
    validates :content, presence: { message: "投稿内容を入力してください" }
    validates :content, length: { maximum: 140, message: "投稿は140文字以内にしてください" }
  end
  