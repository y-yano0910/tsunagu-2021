class MainProduct < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '野菜' },
    { id: 2, name: '果物' },
    { id: 3, name: '米・穀物' },
    { id: 4, name: '鶏' },
    { id: 5, name: '豚' },
    { id: 6, name: '牛' },
    { id: 7, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :producers
   has_many :products
  end