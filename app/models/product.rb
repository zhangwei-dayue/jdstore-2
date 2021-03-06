# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string
#  description       :text
#  price             :integer
#  stock             :integer
#  can_sell          :boolean
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  image             :string
#  category_id       :integer
#  brand_id          :integer
#  new_product       :boolean          default(FALSE)
#  promotive_product :boolean          default(FALSE)
#  friendly_id       :string
#
# Indexes
#
#  index_products_on_friendly_id  (friendly_id) UNIQUE
#

class Product < ApplicationRecord

  validates :name, presence: { message: "請輸入商品名稱" }
  validates :price, presence: { message: "請輸入商品售價" }
  validates :price, numericality: { greater_than: 0, message: "請輸入商品售價，必須大於零" }
  validates :stock, presence: { message: "請入庫存數量" }, numericality: { greater_than_or_equal: 0 }
  validates :category_id, presence: { message: "請選擇商品分類" }
  validates :brand_id, presence: { message: "請選擇商品品牌" }
  validates_presence_of :name, :friendly_id
  validates_uniqueness_of :friendly_id
  validates_format_of :friendly_id, :with => /\A[a-z0-9\-]+\z/

  before_validation :generate_friendly_id, :on => :create

  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :category
  belongs_to :brand

  # 收藏功能相关开始
  has_many :favorites
  has_many :fans, through: :favorites, source: :user
  # 收藏功能相关结束

  # 多图上传与photos的关系
  has_many :photos
  accepts_nested_attributes_for :photos
  # 多图上传与photos的关系结束

  # 商品详情添加多张图片与pictures的关系
  has_many :pictures
  accepts_nested_attributes_for :pictures
  # 商品详情添加多张图片与pictures的关系结束

  # 评论相关
  has_many :comments
  # 评论相关结束

  acts_as_votable  #点赞功能

  def to_param
    self.friendly_id
  end

  scope :selling, -> { where(can_sell: true) } # 选出正在销售中的商品
  scope :newest, -> { where(new_product: true, can_sell: true) } # 选出最新的商品
  scope :promotive, -> { where(promotive_product: true,can_sell: true) } # 选出活动的商品
  scope :ordinary, -> { where(promotive_product: false, new_product: false, can_sell: true) } # 选出普通的商品
  scope :recent, -> { order('created_at DESC') }  #按照发布时间的顺序
  scope :random8, -> { limit(8).order('RANDOM()') } #随机选出8个样品
  scope :random4, -> { limit(4).order('RANDOM()') } #随机选出4个样品

  protected

   def generate_friendly_id
     self.friendly_id ||= SecureRandom.uuid
   end
end
