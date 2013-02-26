Author.delete_all
Book.delete_all

Author.create(:name => 'Leo Tolstoy', :dob => '1828', :nationality => 'Russian', :publisher => 'Vintage', :image => 'http://d.gr-assets.com/books/1352422904l/15823480.jpg')
Author.create(:name => 'JRR Tolkien', :dob => '1892', :nationality => 'English', :publisher => 'Allen & Unwin', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQYAuzbXc9afVaXRh07o70T9p5A4JEeqmwmLWqsvequo4I091jG')
Author.create(:name => 'Emily Bronte', :dob => '1818', :nationality => 'English', :publisher => 'Penguin', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Emilybronte_retouche.jpg/200px-Emilybronte_retouche.jpg')
Author.create(:name => 'Jane Austen', :dob => '1775', :nationality => 'English', :publisher => 'Penguin', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/CassandraAusten-JaneAusten%28c.1810%29_hires.jpg/200px-CassandraAusten-JaneAusten%28c.1810%29_hires.jpg')

Book.create(:title => 'Anna Karenina', :date => '1877', :genre => 'Classic', :image => 'http://upload.wikimedia.org/wikipedia/commons/c/c6/L.N.Tolstoy_Prokudin-Gorsky.jpg')
Book.create(:title => 'The Hobbit', :date => '1937', :genre => 'Fantasy', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVEBRSQNadexsqsBViBAjRk8z_0VNUsKIvaP8piKH0YL3F-D9wKA')
Book.create(:title => 'Wuthering Heights', :date => '1847', :genre => 'Romanticism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Wuthering.jpg/200px-Wuthering.jpg')
Book.create(:title => 'Pride and Prejudice', :date => '1813', :genre => 'Romanticism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/17/PrideAndPrejudiceTitlePage.jpg/180px-PrideAndPrejudiceTitlePage.jpg')


