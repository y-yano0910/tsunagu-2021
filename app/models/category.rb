class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '農業' },
    { id: 2, name: '畜産業' },
    { id: 3, name: '水産業' },
    { id: 4, name: '食品製造業・加工業' },
    { id: 5, name: '飲料・酒造' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :producers
  end