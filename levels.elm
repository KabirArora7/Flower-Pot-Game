-- This is the page for selecting different levels in our game
-- Link to the working mode of levels:
-- https://stabl.rocks/ShowModulePublish?modulePublishId=d238cacf-1307-4e5e-a4fa-68d39110b95e

-- Your shapes go here!
myShapes model =
  [
  
    square 1000
    |> filled green
    ,
    circle 100
    |> filled (hsl 156 58 10)
    |> makeTransparent 0.6
    ,
    circle 80
    |> filled (rgb 159 242 110)

    
    |> makeTransparent 0.6
    
    ,
    circle 60
    |> filled yellow

    |> makeTransparent 0.6
    
    ,
    circle 40 
    |> filled (rgb 198 244 90)
    |> makeTransparent 0.6

    
  
  ,
    
    text "Select Level"
    |> filled red
    |> scale 1.5
    |> addOutline (solid 0.8) black
    |> move (-30,40)
    
    ,
    
      roundedRect 22 21 5
    |> filled red
    |> addOutline (solid 1) black
    
    ,
    text "1"
    |> filled black
    
    
   
    
    
    
    
    
    
    
  ]
