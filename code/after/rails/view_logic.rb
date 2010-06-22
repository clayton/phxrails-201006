# app/views/products/index.html.erb
display_remaining_items(@featured_product)

# app/helpers/products_helper.rb
def display_remaining_items(product)
  return "" unless product.available?
  remaining = pluralize(product.remaining, "item")
  content_tag(:p, :class => "remaining") do
    "#{remaining} left!"
  end
end