Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Nigella Bites', :chef => 'Nigella Lawson', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVOwK8HvsStE8JF1VjUahPCCRI5GmGhKjVpP8YBA3e1j2n6rSfJg')

r1 = Recipe.create(:name => 'Chicken with Chorizo and Cannellini', :course => 'Main', :cooktime => '30', :servingsize => '1', :instructions => 'See directions', :image => 'http://img.foodnetwork.com/FOOD/2007/03/22/ne0106_chicken_lg.jpg')
r2 = Recipe.create(:name => 'Hot and Sour Soup', :course => 'Starter', :cooktime => '30', :servingsize => '6', :instructions => 'See directions', :image => 'http://img.foodnetwork.com/FOOD/2007/04/03/ne0110_sweetandsoursoup_lg.jpg')
r3 = Recipe.create(:name => 'Chocolate Fudge Cake', :course => 'Dessert', :cooktime => '85', :servingsize => '10', :instructions => 'Bake it', :image => 'http://img.foodnetwork.com/FOOD/2007/03/16/ne0107_chocolatecake_lg.jpg')

i1 = Ingredient.create(:name => 'Flour', :measurement => '2 2/3 cups', :cost => '2.00', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTBU_og1O21L_ENu7Jed-a1xZflNMmi0n6z0Jn7sgix4WrqHjUbag')
i2 = Ingredient.create(:name => 'Brown sugar', :measurement => '1/3 cup', :cost => '1.00', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT6WibBxjeL3-23KpCeW5SVsIrd72W3gp_avvlEDhqP7IhdYvpq')
i3 = Ingredient.create(:name => 'Salt', :measurement => '1/2 teaspoon', :cost => '0.10', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRcPEnwlUmF36wucarldK2_EA0WUNGMSLnLwBDfWH6TYSKr7VLM')
i4 = Ingredient.create(:name => 'Baking soda', :measurement => '1 teaspoon', :cost => '0.10', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdvf8sbQ-wPs7XnaQN9A00-8Fl3tUqsip6cg4qFMpYe5z14Bezaw')
i5 = Ingredient.create(:name => 'Cocoa Powder', :measurement => '1/4 cup', :cost => '0.50', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSnDn73SUCZB6QkVS7dCjMlzRffbxsJ8AWN4D7KPDGxLLmQ1VcsCQ')
i6 = Ingredient.create(:name => 'Sour cream', :measurement => '1/2 cup', :cost => '1.00', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwbt4vA2C4RrIrDOgcccQeBfO219ibTBO6FKwuOU2d1-t-kOHg')


b1.recipes = [r1, r2]
b1. recipes << r3

r1.ingredients = [i3, i4]
r2.ingredients = [i1, i3, i4]
r3.ingredients = [i1, i2, i3, i4, i5, i6]