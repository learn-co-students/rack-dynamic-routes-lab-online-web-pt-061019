class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
     #get item as a string "Figs", "Pears"
     item_name = req.path.split("/items/").last
     # binding.pry
     # detect method returns the first vaule detected
     if item = @@items.detect { |i| i.name == item_name }
       resp.write item.price
     else
       resp.write "Item not found"
       resp.status = 400
     end
  else
     resp.write "Route not found"
     resp.status = 404
     # binding.pry
   end
    resp.finish
  end
end
