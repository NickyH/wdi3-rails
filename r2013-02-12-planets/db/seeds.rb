Planet.delete_all

Planet.create(:name => 'Earth', :orbit => 1, :moons => 1)
Planet.create(:name => 'Mars', :orbit => 2, :moons => 2)
Planet.create(:name => 'Venus', :orbit => 3, :moons => 0)
Planet.create(:name => 'Jupiter', :orbit => 2, :moons => 7)
Planet.create(:name => 'Neptune', :orbit => 4, :moons => 3)
