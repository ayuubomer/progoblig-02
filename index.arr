include color


fun draw-flag(land):
  # function that draw the northern flags
  # arg: land can be one of iceland, norway, finland, sweden, denmark, faroe-islands
  
  fun get_background_color_of_flag():
    ask:
      | land == "iceland" then: color(2, 82, 156, 1)
      | land == "norway" then: color(186, 12, 47, 1)
      | land == "finland" then: color(255, 255, 255, 1)
      | land == "sweden" then: color(0, 106, 167, 1)
      | land == "denmark" then: color(200, 16, 46, 1)
      | land == "faroe-islands" then: color(255, 255, 255, 1)
    end
  end

  fun get-inner-cross-color():
    ask:
      | land == "iceland" then: color(220, 30, 53, 1)
      | land == "norway" then: color(0, 32, 91, 1)
      | land == "finland" then: color(0, 47, 108, 1)
      | land == "sweden" then: color(254, 204, 2, 1)
      | land == "denmark" then: color(255, 255, 255, 1)
      | land == "faroe-islands" then: color(237, 41, 57, 1)
    end
  end

  fun get-outer-cross-color():
    ask:
      | land == "iceland" then: color(225, 225, 225, 1)
      | land == "norway" then: color(225, 225, 225, 1)
      | land == "finland" then: color(0, 47, 108, 1)
      | land == "sweden" then: color(254, 204, 2, 1)
      | land == "denmark" then: color(255, 255, 255, 1)
      | land == "faroe-islands" then: color(0, 101, 189, 1)
    end
  end


  fun get-width():
    ask:
      | land == "iceland" then: 250 # x10
      | land == "norway" then: 220 # x10
      | land == "finland" then: 360 # x20
      | land == "sweden" then: 320 # x20
      | land == "denmark" then: 370 # x10
      | land == "faroe-islands" then: 220 # x10
    end
  end

  fun get-height():
    ask:
      | land == "iceland" then: 180 # x10
      | land == "norway" then: 160 # x10
      | land == "finland" then: 220 # x20
      | land == "sweden" then: 200 # x20
      | land == "denmark" then: 280 # x10
      | land == "faroe-islands" then: 160 # x10
    end
  end
  
  
  fun get-inner-cross-width(): 
    ask:
      | land == "finland" then: 60 # x 20
      | land == "denmark" then: 40 # x 10
      | land == "iceland" then: 20 # x10
      | land == "norway" then: 20 # x10
      | land == "faroe-islands" then: 20 # x 10
      | land == "sweden" then: 40 # x 20
    end
  end
  
  #fun get-outer-cross-width(): 
  #  ask:
  #    | land == "finland" then: 0
  #    | land == "denmark" then: 0
  #    | land == "iceland" then: 10 # x10
  #    | land == "norway" then: 10 # x10
  #    | land == "faroe-islands" then: 10 # x 10
  #    | land == "sweden" then: 40 # x 20
  #  end
  
  #end
  
  fun get-cross-x-position():
    ask:
      | land == "finland" then: 100 + (get-inner-cross-width() / 2) # x20
      | land == "denmark" then: 120 + (get-inner-cross-width() / 2) # x20
      | land == "norway" then: 70 + (get-inner-cross-width() / 2) # x20
      | land == "sweden" then: 100 + (get-inner-cross-width() / 2) # x20
      | land == "faroe-islands" then: 70 + (get-inner-cross-width() / 2) # x20
      | land == "iceland" then: 70 + (get-inner-cross-width() / 2) # x20
    end
  end

  
  background-color = get_background_color_of_flag()
  inner-cross-color = get-inner-cross-color()
  outer-cross-color = get-outer-cross-color()
  
  
  width = get-width()
  height = get-height()
  
  #print(width)
  #print(height)
  

  background = rectangle(width, height, "solid", background-color) 

  first-horizontal-line= rectangle(width, 40, "solid", outer-cross-color)
  second-horizontal-line = rectangle(width, get-inner-cross-width(), "solid", inner-cross-color)

  first-vertical-line = rectangle(get-inner-cross-width(), height, "solid", inner-cross-color)
  second-vertical-line = rectangle(40, height, "solid", outer-cross-color)  


  put-image(second-horizontal-line, width / 2, height / 2,
    put-image(first-vertical-line, get-cross-x-position(), height / 2, # (line, x, y)
      put-image(first-horizontal-line, width / 2, height / 2,
        put-image(second-vertical-line,  get-cross-x-position(), height / 2,
          background))))
end



# For use in the console so that you can type country name and get the flag

norway = draw-flag("norway")
faroe-islands = draw-flag("faroe-islands")
iceland = draw-flag("iceland")
sweden = draw-flag("sweden")
denmark = draw-flag("denmark")
finland = draw-flag("finland")

# norsk

sverige = sweden
island = iceland
faarooyene = faroe-islands
norge = norway
danmark = denmark
