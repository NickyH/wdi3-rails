Artist.delete_all
Art.delete_all

Artist.create(:name => 'Matisse', :nationality => 'French', :dob => '31/12/1869', :period => 'Impressionism', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTNc7Fa5eIlzCq_bjZXK-be-Ns2pl4UKtIS-TXyF3joFhmR92Sc')
Artist.create(:name => 'Van Gogh', :nationality => 'Dutch', :dob => '30/03/1853', :period => 'Impressionism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg/220px-Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg')
Artist.create(:name => 'Dali', :nationality => 'Spanish', :dob => '11/05/1904', :period => 'Surrealism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Salvador_Dal%C3%AD_1939.jpg/220px-Salvador_Dal%C3%AD_1939.jpg')
Artist.create(:name => 'Munch', :nationality => 'Norwegian', :dob => '12/12/1863', :period => 'Expressionism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Edvard_Munch_1921.jpg/220px-Edvard_Munch_1921.jpg')
Artist.create(:name => 'Warhol', :nationality => 'American', :dob => '06/08/1928', :period => 'Pop art', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Andy_Warhol_by_Jack_Mitchell.jpg/220px-Andy_Warhol_by_Jack_Mitchell.jpg')

Art.create(:title => 'Greek Torso with Flowers', :year => '1919', :medium => 'oil on canvas', :style => 'fauvism', :image => 'http://www.henri-matisse.net/paintings/thmbnls150/ew.jpg')
Art.create(:title => 'Pianist and Checker Players', :year => '1924', :medium => 'oil on canvas', :style => 'fauvism', :image => 'http://www.henri-matisse.net/paintings/orient_191_thmb.jpg')
Art.create(:title => 'Sleep', :year => '1937', :medium => 'oil on canvas', :style => 'Surrealism', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSSWzU-mBAY4rFLyMRPkCI_zezmWJ0a-z92FYRMZJl3vzAGZaWDNg')
Art.create(:title => 'The Starry Night', :year => '1889', :medium => 'oil on canvas', :style => 'impressionism', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/300px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg')
Art.create(:title => 'The Scream', :year => '1893', :medium => 'pastel on cardboard', :style => 'Expressionism', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8t9QB2D8umoYDkcaRMDur8DwV1FtHmwpMJ_qs242bJeIixEtj')