
[1mFrom:[0m /mnt/c/Users/konom/rack-dynamic-routes-lab-online-web-pt-061019/app/application.rb @ line 21 Application#call:

     [1;34m6[0m: [32mdef[0m [1;34mcall[0m(env)
     [1;34m7[0m:   resp = [1;34;4mRack[0m::[1;34;4mResponse[0m.new
     [1;34m8[0m:   req = [1;34;4mRack[0m::[1;34;4mRequest[0m.new(env)
     [1;34m9[0m: 
    [1;34m10[0m:   [32mif[0m req.path.match([35m[1;35m/[0m[35mitems[1;35m/[0m[35m[0m)
    [1;34m11[0m:     item_name = req.path.split([31m[1;31m"[0m[31m/items/[1;31m"[0m[31m[0m).last
    [1;34m12[0m:   
    [1;34m13[0m:     item = [36m@@items[0m.find{|i| i.name == item_name}
    [1;34m14[0m:   
    [1;34m15[0m:     [32mif[0m item.nil?
    [1;34m16[0m:       resp.write [31m[1;31m"[0m[31mItem not found[1;31m"[0m[31m[0m
    [1;34m17[0m:       resp.status = [1;34m400[0m
    [1;34m18[0m:     [32melse[0m
    [1;34m19[0m:       resp.write item.price
    [1;34m20[0m:     [32mend[0m
 => [1;34m21[0m:     binding.pry
    [1;34m22[0m:   [32melse[0m
    [1;34m23[0m:     resp.write [31m[1;31m"[0m[31mRoute not found[1;31m"[0m[31m[0m
    [1;34m24[0m:     resp.status = [1;34m404[0m
    [1;34m25[0m:   [32mend[0m
    [1;34m26[0m:   
    [1;34m27[0m:   resp.finish
    [1;34m28[0m: [32mend[0m

