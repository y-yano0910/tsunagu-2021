class Capacity < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '/個' },
    { id: 2, name: '/本' },
    { id: 3, name: '/枚' },
    { id: 4, name: '/pc' },
    { id: 5, name: '/10g' },
    { id: 6, name: '/100g' },
    { id: 7, name: '/1000g(1kg)' },
    { id: 8, name: '/10ml' },
    { id: 9, name: '/100ml' },
    { id: 10, name: '/1000ml(1L)' }
  ]

  include ActiveHash::Associations
  has_many :products
  end