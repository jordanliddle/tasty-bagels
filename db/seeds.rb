# encoding: utf-8
Product.delete_all
Product.create!(title: 'Ham and Cheese',
  description: 
    %{<p>
        The classic ham and cheese sandwich contains two fresh slices of Grade-A italian nested
        between a fresh layer of crisp lettuce and a warm slice of swiss cheese.
      </p>},
  image_url:   'hamcheese.jpg',    
  price: 3.45)
# . . .
Product.create!(title: 'BLT',
  description:
    %{<p>
        A favorite among many, the BLT showcases our favorite Canadian-smoked bacon, cooked to a
        perfect crisp and layered on top of salted garden tomatoes and a mix of fresh crisp
        lettuce and mayonnaise. This one is destined to please the crowd.
      </p>},
  image_url: 'blt.jpg',
  price: 4.95)
# . . .

Product.create!(title: 'Tuna',
  description: 
    %{<p>
       You've never tried Tuna like this. Our fisherman grade, fresh cut tuna is served in a warm crusty
baguette with the perfect proportions of tuna, mayonnaise, onion and our very own secret sauce. If
your tastebuds don't pursuade you to make this sandwich a weekly tradition, we're not sure what
will!
			</p>},
  image_url: 'tuna.jpg',
  price: 3.95)
