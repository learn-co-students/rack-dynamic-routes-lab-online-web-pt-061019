class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

      item = req.path.split("/items/").last # This get the item as a string, "Apple"

      if item =@@items.find{ |object| object.name == item }
        resp.write item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

end
