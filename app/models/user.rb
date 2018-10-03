class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys:[:name]

  has_many :comments

  validates :name,
         # uniqueness: { case_sensitive: :false },
         length: { minimum: 4, maximum: 20 },
         format: { with: /\A[a-z0-9]+\z/, message: "は半角英数字です"}

  # :nameをユニークとして設定
  # validates_uniqueness_of :name

  # ログインに必要な項目として登録
  validates_presence_of :name

  # ログイン時に:nameのみでも認証出来るようににする
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      #認証の条件式を変更する
      where(conditions).where(["name = :value", { :value => name }]).first
    else
      where(conditions).first
    end
  end

  # 新規登録時にemailを必須としないようにfalseを返す
  def email_required?
   false
  end

  # 変更登録時にemailを必須としないようにfalseを返す
  def email_changed?
   false
  end

end
