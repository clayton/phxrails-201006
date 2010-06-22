<% if @panel1_product.max_qty > 0 && @panel1_product.remaining < 20 && @panel1_product.available? %>
	<% if @panel1_product.remaining == 1 %>
		<p class="remaining"><%= @panel1_product.remaining %> item left!</p>
	<% else %>
		<p class="remaining"><%= @panel1_product.remaining %> items left!</p>
	<% end %>
<% end %>