-- Your shapes go here!

-- Other Modules
import MarriageIntro
import Level1
import Level1Complete
import Level2
import Level2CompGame
import Level3
import EndWin



myShapes model =
  case model.state of
        
        MenuScreen ->
            [
            loadFont "https://fonts.googleapis.com/css2?family=Anton&family=Galada&display=swap"
            ,loadFont "https://fonts.googleapis.com/css2?family=Anton&display=swap"
            , loadFont "https://fonts.googleapis.com/css2?family=Kavoon&family=Oi&display=swap"
              ,
           -- Background color
              square 1000
           --   |> filled black
           
              |> filled (rgb 85 206 252)
              |> makeTransparent 0.5
            ,
            -- Garden
            curve (-53.49,-7.907) [Pull (-53.74,-8.277) (-53.99,-8.648),Pull (-54.23,-10.00) (-54.48,-11.36),Pull (-54.11,-12.10) (-53.74,-12.84),Pull (-53.74,-13.83) (-53.74,-14.82),Pull (-53.37,-15.56) (-53.00,-16.30),Pull (-53.12,-17.54) (-53.25,-18.77),Pull (-52.88,-19.52) (-52.50,-20.26),Pull (-52.75,-20.75) (-53.00,-21.25),Pull (-52.88,-22.11) (-52.75,-22.98),Pull (-52.63,-24.09) (-52.50,-25.20),Pull (-52.38,-26.68) (-52.26,-28.16),Pull (-52.01,-28.78) (-51.76,-29.40),Pull (-52.01,-30.51) (-52.26,-31.62),Pull (-52.01,-33.11) (-51.76,-34.59),Pull (-51.52,-36.07) (-51.27,-37.55),Pull (-51.02,-38.42) (-50.77,-39.28),Pull (-50.90,-40.40) (-51.02,-41.51),Pull (-50.65,-42.00) (-50.28,-42.50),Pull (-50.28,-43.49) (-50.28,-44.47),Pull (-50.40,-45.71) (-50.53,-46.94),Pull (-49.42,-47.56) (-48.30,-48.18),Pull (-47.19,-47.93) (-46.08,-47.69),Pull (-45.22,-47.69) (-44.35,-47.69),Pull (-43.61,-47.69) (-42.87,-47.69),Pull (-41.51,-47.81) (-40.15,-47.93),Pull (-38.42,-47.93) (-36.69,-47.93),Pull (-35.58,-47.81) (-34.47,-47.69),Pull (-32.98,-47.81) (-31.50,-47.93),Pull (-29.40,-47.93) (-27.30,-47.93),Pull (-26.93,-47.69) (-26.56,-47.44),Pull (-26.06,-47.44) (-25.57,-47.44),Pull (-25.08,-47.56) (-24.58,-47.69),Pull (-23.59,-47.69) (-22.61,-47.69),Pull (-22.23,-47.69) (-21.86,-47.69),Pull (-21.37,-47.19) (-20.88,-46.70),Pull (-20.26,-46.70) (-19.64,-46.70),Pull (-18.65,-46.94) (-17.66,-47.19),Pull (-17.05,-47.32) (-16.43,-47.44),Pull (-15.44,-47.44) (-14.45,-47.44),Pull (-13.96,-47.56) (-13.46,-47.69),Pull (-11.98,-47.69) (-10.50,-47.69),Pull (-9.389,-47.69) (-8.277,-47.69),Pull (-7.660,-47.56) (-7.042,-47.44),Pull (-7.042,-46.94) (-7.042,-46.45),Pull (-7.289,-44.97) (-7.536,-43.49),Pull (-8.277,-39.90) (-9.019,-36.32),Pull (-9.389,-34.84) (-9.760,-33.35),Pull (-10.50,-29.89) (-11.24,-26.44),Pull (-11.98,-23.35) (-12.72,-20.26),Pull (-13.46,-16.55) (-14.20,-12.84),Pull (-14.33,-11.24) (-14.45,-9.637),Pull (-15.19,-9.513) (-15.93,-9.389),Pull (-16.06,-9.019) (-16.18,-8.648),Pull (-16.92,-8.648) (-17.66,-8.648),Pull (-18.16,-8.525) (-18.65,-8.401),Pull (-18.90,-8.154) (-19.15,-7.907),Pull (-20.38,-8.030) (-21.62,-8.154),Pull (-27.92,-7.907) (-34.22,-7.660),Pull (-35.95,-7.660) (-37.68,-7.660),Pull (-39.78,-8.154) (-41.88,-8.648),Pull (-42.62,-8.401) (-43.36,-8.154),Pull (-44.35,-8.277) (-45.34,-8.401),Pull (-46.45,-8.277) (-47.56,-8.154),Pull (-49.17,-8.154) (-50.77,-8.154),Pull (-51.64,-8.154) (-52.50,-8.154),Pull (-52.75,-8.277) (-53.00,-8.401),Pull (-53.25,-8.277) (-53.49,-8.154),Pull (-53.49,-8.154) (-53.49,-8.154)]
              |> filled (rgb 0 200 0)
              |> move (30,0)
              |> scaleX 6
              |> scaleY 2
              |> addOutline (solid 0.2) black
              |> move (10,0)
              |> makeTransparent 0.9
            ,
            -- Fence
            group[
                group 
                [
                  fence
                  |> move (30,0)
                  ,fence
                  |> move (40,0)
                  ,fence
                  |> move (50,0)
                  ,fence
                  |> move (60,0)
                  ,fence
                  |> move (70,0)
                  ,fence
                  |> move (80,0)
                  ,fence
                  |> move (90,0)
                  ,fence
                  |> move (100,0)
                  ,fence
                  |> move (110,0)
               ]
               ,
               group 
                [fence
                ,fence
                |> move (10,0)
                ,fence
                |> move (20,0)
                ,fence
                |> move (30,0)
                ,fence
                |> move (40,0)
                ,fence
                |> move (50,0)
                ,fence
                |> move (60,0)
                ,fence
                |> move (70,0)
                ,fence
                |> move (80,0)
                ,fence
                |> move (90,0)
               ] |> scaleX -1

                ] |> move (-10,-36)
                ,
                group [   
                    -- Clouds
                    cloud
                    |> addOutline (solid 0.5) black
                    |> scale 0.4
                    |> move (-50,50)
                   ,
                   cloudline
                   |> scale 0.4
                   |> move (-50,49)
                     ] |> move (-12,0)
            , boy
          --  |> makeTransparent 0.9
            |> move (20,-60)
            |> scale 0.5
            |> move ( 65*cos(0.6*model.time) , 0 )
          --  |> move  ( 70*cos (model.time) , 50*cos (model.time)^2)
            , 
            let 
              scaleAmount = if model.isHovering1 then 1.1 else 1.0
            in
            group
              [
               roundedRect 17 40 3
                |> filled (rgb 63 128 10)
                |> scale scaleAmount
                |> rotate (degrees 90)
                |> addOutline (solid (scaleAmount - 0.5)) black
              ,roundedRect 15 38 3
                |> filled (rgb 147 245 66)
                |> scale scaleAmount
                |> rotate (degrees 90)
                |> addOutline (solid (scaleAmount - 0.5)) black
              , text "Start"
                |> customFont "Kavoon"
                |> filled white
                |> scale scaleAmount
                |> addOutline (solid (scaleAmount - 0.3)) (rgb 63 128 10)
                |> move (-14 * scaleAmount,-4 * scaleAmount)
              ] 
                |> move (-30, 10)
                |> scale 1.2
                |> notifyTap Menu2Marriage
                |> notifyEnter HoverEnter1
                |> notifyLeave HoverLeave1
              
            , 
            
            let 
              scaleAmount = if model.isHovering2 then 1.1 else 1.0
            in
            group
              [
                roundedRect 17 36 3
                |> filled blue
                |> scale scaleAmount
                |> rotate (degrees 90)
                |> move(0,-40)
                |> addOutline (solid (scaleAmount - 0.5)) black
              
              
              , roundedRect 15 34 3
                |> filled (rgb 88 193 245)
                |> scale scaleAmount
                |> rotate (degrees 90)
                |> move(0,-40)
                |> addOutline (solid (scaleAmount - 0.5)) black

              , text "Help"
                |> customFont "Kavoon"
                |> filled white
                |> scale scaleAmount
                |> addOutline (solid (scaleAmount - 0.3)) blue
                
                |> move (-13 * scaleAmount,-44 )
                
                
              ] 
                |> move (30, 50)
                |> scale 1.2
                |> notifyTap Menu2Help
                |> notifyEnter HoverEnter2
                |> notifyLeave HoverLeave2

             -- Banner
            , group
            [curve (-59.92,-26.44) [Pull (-53.99,-27.55) (-48.06,-28.66),Pull (-49.42,-26.44) (-50.77,-24.21),Pull (-50.77,-21.99) (-50.77,-19.76),Pull (-50.77,-19.27) (-50.77,-18.77),Pull (-51.02,-18.16) (-51.27,-17.54),Pull (-51.89,-17.05) (-52.50,-16.55),Pull (-53.37,-16.30) (-54.23,-16.06),Pull (-54.98,-15.93) (-55.72,-15.81),Pull (-56.46,-15.93) (-57.20,-16.06),Pull (-58.06,-16.18) (-58.93,-16.30),Pull (-59.67,-16.55) (-60.41,-16.80),Pull (-61.15,-17.05) (-61.89,-17.29),Pull (-62.64,-17.79) (-63.38,-18.28),Pull (-64.37,-18.65) (-65.35,-19.02),Pull (-66.34,-19.27) (-67.33,-19.52),Pull (-68.44,-19.52) (-69.55,-19.52),Pull (-70.67,-19.15) (-71.78,-18.77),Pull (-72.52,-18.40) (-73.26,-18.03),Pull (-73.51,-17.79) (-73.76,-17.54),Pull (-73.14,-18.53) (-72.52,-19.52),Pull (-72.03,-19.76) (-71.53,-20.01),Pull (-70.54,-20.38) (-69.55,-20.75),Pull (-67.95,-21.12) (-66.34,-21.49),Pull (-65.85,-21.62) (-65.35,-21.74),Pull (-65.48,-22.36) (-65.60,-22.98),Pull (-66.22,-23.59) (-66.84,-24.21),Pull (-67.83,-24.95) (-68.81,-25.69),Pull (-69.80,-25.69) (-70.79,-25.69),Pull (-71.53,-25.45) (-72.27,-25.20),Pull (-71.04,-26.06) (-69.80,-26.93),Pull (-68.94,-26.81) (-68.07,-26.68),Pull (-66.96,-26.31) (-65.85,-25.94),Pull (-64.86,-25.57) (-63.87,-25.20),Pull (-62.88,-25.20) (-61.89,-25.20),Pull (-61.40,-25.32) (-60.91,-25.45),Pull (-60.41,-25.82) (-59.92,-26.19),Pull (-59.92,-26.44) (-59.92,-26.68),Pull (-59.92,-26.68) (-59.92,-26.68)]
              |> filled green
              |> makeTransparent 0.7
              |> addOutline (solid 1) black
              |> move (20,50)
            , curve (-58.93,-18.53) [Pull (-58.56,-18.28) (-58.19,-18.03),Pull (-57.57,-17.91) (-56.95,-17.79),Pull (-56.33,-17.79) (-55.72,-17.79),Pull (-55.22,-18.03) (-54.73,-18.28),Pull (-53.99,-18.40) (-53.25,-18.53),Pull (-52.50,-18.28) (-51.76,-18.03),Pull (-51.39,-17.79) (-51.02,-17.54)]
              |> outlined (solid 1) black
              |> move (20,50)
            , curve (-59.92,-26.44) [Pull (-53.99,-27.55) (-48.06,-28.66),Pull (-49.42,-26.44) (-50.77,-24.21),Pull (-50.77,-21.99) (-50.77,-19.76),Pull (-50.77,-19.27) (-50.77,-18.77),Pull (-51.02,-18.16) (-51.27,-17.54),Pull (-51.89,-17.05) (-52.50,-16.55),Pull (-53.37,-16.30) (-54.23,-16.06),Pull (-54.98,-15.93) (-55.72,-15.81),Pull (-56.46,-15.93) (-57.20,-16.06),Pull (-58.06,-16.18) (-58.93,-16.30),Pull (-59.67,-16.55) (-60.41,-16.80),Pull (-61.15,-17.05) (-61.89,-17.29),Pull (-62.64,-17.79) (-63.38,-18.28),Pull (-64.37,-18.65) (-65.35,-19.02),Pull (-66.34,-19.27) (-67.33,-19.52),Pull (-68.44,-19.52) (-69.55,-19.52),Pull (-70.67,-19.15) (-71.78,-18.77),Pull (-72.52,-18.40) (-73.26,-18.03),Pull (-73.51,-17.79) (-73.76,-17.54),Pull (-73.14,-18.53) (-72.52,-19.52),Pull (-72.03,-19.76) (-71.53,-20.01),Pull (-70.54,-20.38) (-69.55,-20.75),Pull (-67.95,-21.12) (-66.34,-21.49),Pull (-65.85,-21.62) (-65.35,-21.74),Pull (-65.48,-22.36) (-65.60,-22.98),Pull (-66.22,-23.59) (-66.84,-24.21),Pull (-67.83,-24.95) (-68.81,-25.69),Pull (-69.80,-25.69) (-70.79,-25.69),Pull (-71.53,-25.45) (-72.27,-25.20),Pull (-71.04,-26.06) (-69.80,-26.93),Pull (-68.94,-26.81) (-68.07,-26.68),Pull (-66.96,-26.31) (-65.85,-25.94),Pull (-64.86,-25.57) (-63.87,-25.20),Pull (-62.88,-25.20) (-61.89,-25.20),Pull (-61.40,-25.32) (-60.91,-25.45),Pull (-60.41,-25.82) (-59.92,-26.19),Pull (-59.92,-26.44) (-59.92,-26.68),Pull (-59.92,-26.68) (-59.92,-26.68)]
              |> filled green
              |> makeTransparent 0.7
              |> addOutline (solid 1) black
              |> scaleX -1
              |> move (-47,0)
              |> move (20,50)

            , curve (-58.93,-18.53) [Pull (-58.56,-18.28) (-58.19,-18.03),Pull (-57.57,-17.91) (-56.95,-17.79),Pull (-56.33,-17.79) (-55.72,-17.79),Pull (-55.22,-18.03) (-54.73,-18.28),Pull (-53.99,-18.40) (-53.25,-18.53),Pull (-52.50,-18.28) (-51.76,-18.03),Pull (-51.39,-17.79) (-51.02,-17.54)]
              |> outlined (solid 1) black
              |> scaleX -1
              |> move (-47,0)
              |> move (20,50)
            , curve (-59.42,-19.27) [Pull (-59.67,-25.82) (-59.92,-32.37),Pull (-59.42,-33.23) (-58.93,-34.10),Pull (-58.19,-34.47) (-57.45,-34.84),Pull (-55.84,-35.08) (-54.23,-35.33),Pull (-52.38,-35.08) (-50.53,-34.84),Pull (-48.55,-34.71) (-46.57,-34.59),Pull (-42.62,-34.47) (-38.67,-34.34),Pull (-35.70,-34.47) (-32.74,-34.59),Pull (-28.54,-34.59) (-24.33,-34.59),Pull (-21.12,-34.71) (-17.91,-34.84),Pull (-14.82,-34.71) (-11.73,-34.59),Pull (-9.389,-34.71) (-7.042,-34.84),Pull (-3.583,-35.21) (-0.123,-35.58),Pull (1.9768,-35.58) (4.0772,-35.58),Pull (6.3011,-35.45) (8.5250,-35.33),Pull (9.6370,-34.96) (10.749,-34.59),Pull (11.737,-33.48) (12.725,-32.37),Pull (12.725,-30.88) (12.725,-29.40),Pull (12.602,-25.69) (12.478,-21.99),Pull (12.231,-20.38) (11.984,-18.77),Pull (11.243,-18.90) (10.501,-19.02),Pull (10.007,-19.27) (9.5135,-19.52),Pull (7.4131,-19.76) (5.3127,-20.01),Pull (3.3359,-20.13) (1.3590,-20.26),Pull (-5.312,-20.01) (-11.98,-19.76),Pull (-17.54,-19.64) (-23.10,-19.52),Pull (-26.31,-19.52) (-29.52,-19.52),Pull (-33.60,-19.64) (-37.68,-19.76),Pull (-41.88,-19.89) (-46.08,-20.01),Pull (-49.66,-20.26) (-53.25,-20.50),Pull (-55.96,-20.13) (-58.68,-19.76),Pull (-59.05,-19.15) (-59.42,-18.53),Pull (-59.55,-18.77) (-59.67,-19.02),Pull (-59.67,-19.02) (-59.67,-19.02)]
              |> filled green
              
            --  |> makeTransparent 0.7
              |> addOutline (solid 1) black
              |> move (20,50)


            , text "Home Garden" 
            --  |> bold
              |> customFont "Galada"
              |> filled white
              |> addOutline (solid 0.7) (rgb 63 128 10)
              |> move (-37,19)
            ] 
              |> scale 1.2
              |> move (5,20)
            
            ,
            
            group [ bird
              |> scale 0.2
              |> move (20,55)
              |> addOutline (solid 3) black

              ,

              circle 0.6
              |> filled black
              |> move (8,62)
            ] 
         --   |> move (50,-48)
            ]|> group
        HelpScreen ->
          [loadFont "https://fonts.googleapis.com/css2?family=Anton&family=Galada&display=swap"
          , loadFont "https://fonts.googleapis.com/css2?family=Anton&family=Galada&display=swap"
          , loadFont "https://fonts.googleapis.com/css2?family=Anton&display=swap"
          , loadFont "https://fonts.googleapis.com/css2?family=Kavoon&family=Oi&display=swap"
          , square 1000
            |> filled green
            |> makeTransparent 0.7
          , circle 100
            |> filled (hsl 156 58 10)
            |> makeTransparent 0.5
          , circle 80
            |> filled (rgb 159 242 110)
            |> makeTransparent 0.5
          , circle 60
            |> filled yellow
            |> makeTransparent 0.5
          , circle 40 
            |> filled (rgb 198 244 90)
            |> makeTransparent 0.5
            
          , group [ roundedRect 100 20 0
                    |> filled brown
                    |> addOutline (solid 1) black
                    |> move (0,35)
                  , text "Instructions"
                    |> centered
                    |> bold
                    |> filled black
                    |> addOutline (solid 0.3) black
                    |> scale 1.5
                    |> move (0,30)
                  ] |> move (0,7)

            , boy |> scale 0.4 |> move ( 10*sin (model.time) , 0) |> move (-40,-40)
            , group [
                    text "Your main goal is to drag"
                      |> centered
                      |> customFont "Galada"
                      |> filled black
                      |> move (0,10)
                    , text "and drop each and every"
                      |> centered
                      |> customFont "Galada"
                      |> filled black
                      |> move (0,0)
                    , text "flower in their respective vases "
                    |> customFont "Galada"
                      |> centered
                      |> filled black
                      |> move (0,-10)
                    , text "within the given time limit"
                    |> customFont "Galada"
                      |> centered
                      |> filled black   
                      |> move (-3,-20)
                      ] |> move (0, 10)
                    , polygon [(0,10),(0,-10),(-30,0)]
                      |> filled black
                      |> scale 0.5
                      |> move (-80, 50)
                      |> notifyTap Help2Menu
                    , text "Back"
                      |> filled black
                      |> scale 0.5
                      |> move (-77.5, 47.5)
                    ] |> group
          
        Marriage mini ->
           MarriageIntro.myShapes mini
           |> group
           |> GraphicSVG.map MarriageMsg
           
        L1 mini ->
           Level1.myShapes mini
           |> group
           |> GraphicSVG.map L1Msg
        
        L1C mini ->
           Level1Complete.myShapes mini
           |> group
           |> GraphicSVG.map L1CMsg
          
        L2 mini ->
           Level2.myShapes mini
           |> group
           |> GraphicSVG.map L2Msg
           
        L2C mini ->
           Level2CompGame.myShapes mini
           |> group
           |> GraphicSVG.map L2CMsg
           
        L3 mini ->
           Level3.myShapes mini
           |> group
           |> GraphicSVG.map L3Msg
           
        End mini ->
           EndWin.myShapes mini
           |> group
           |> GraphicSVG.map EndMsg

type Msg = Tick Float GetKeyState
         | Menu2Marriage
         | Menu2Options
         | Menu2Help
         | Marriage2Menu
         | Options2Menu
         | Help2Menu
         | Marriage2L1
         | MarriageMsg MarriageIntro.Msg
         | L1Msg Level1.Msg
         | L1CMsg Level1Complete.Msg
         | L12L1C
         | L2Msg Level2.Msg
         | L12L2
         | L2CMsg Level2CompGame.Msg
         | L22L2C
         | L3Msg Level3.Msg
         | L22L3
         | EndMsg EndWin.Msg
         | L32End
         | HoverEnter1
         | HoverLeave1
         | HoverEnter2
         | HoverLeave2
    

type State = MenuScreen
           | HelpScreen
           | Marriage MarriageIntro.Model
           | L1 Level1.Model
           | L1C Level1Complete.Model
           | L2 Level2.Model
           | L2C Level2CompGame.Model
           | L3 Level3.Model
           | End EndWin.Model

update msg model =
      case msg of                      
          Tick t key ->                                             
              { model | time = t, state = case model.state of
                                            Marriage submodel ->
                                              MarriageIntro.update (MarriageIntro.Tick t key) submodel
                                              |> Marriage
                                            L1 submodel ->
                                              Level1.update (Level1.Tick t key) submodel
                                              |> L1
                                            L1C submodel ->
                                              Level1Complete.update (Level1Complete.Tick t key) submodel
                                              |> L1C
                                            L2 submodel ->
                                              Level2.update (Level2.Tick t key) submodel
                                              |> L2
                                            L2C submodel ->
                                              Level2CompGame.update (Level2CompGame.Tick t key) submodel
                                              |> L2C
                                            L3 submodel ->
                                              Level3.update (Level3.Tick t key) submodel
                                              |> L3
                                            End submodel ->
                                              EndWin.update (EndWin.Tick t key) submodel
                                              |> End
                                            otherwise -> otherwise
                                            }
          Menu2Help  ->
              case model.state of
                  MenuScreen  ->
                      { model | state = HelpScreen }
                  otherwise ->
                      model
                      
          Menu2Marriage ->
                  case model.state of
                      MenuScreen  ->
                          { model | time = 0, state = Marriage MarriageIntro.init }        -- step 5
                      otherwise ->
                          model
          MarriageMsg submsg -> case model.state of
                                  Marriage submodel ->
                                    let
                                      newState = MarriageIntro.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.play > 0 && ((60 - model.time) > 0)
                                                        then L1 Level1.init
                                                        else HelpScreen -- Change to GameOver
                                      }
                                  _ -> { model | state = MenuScreen }
          
          Marriage2L1 ->
                  case model.state of
                      Marriage _ ->
                          { model | time = 0, state = L1 Level1.init}        -- step 5
                      otherwise ->
                          model
          L1Msg submsg -> case model.state of
                                  L1 submodel ->
                                    let
                                      newState = Level1.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.score == 1 --Change to case time out or score up
                                                        then L1C Level1Complete.init -- Change to level1Complete
                                                        else if newState.loss == 1
                                                        then MenuScreen
                                                        else L1 newState
                                      }
                                  L1C submodel -> { model | state = L1C Level1Complete.init }
                                  _ -> { model | state = MenuScreen }
          L12L1C ->
                  case model.state of
                      L1 _ ->
                          { model | time = 0, state = L1C Level1Complete.init }        -- step 5
                      otherwise ->
                          model                        
          L1CMsg submsg -> case model.state of
                                  L1C submodel ->
                                    let
                                      newState = Level1Complete.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.nextLevel > 0 --Change to case time out or score up
                                                        then L2 Level2.init -- Change to level2
                                                        else L1C newState -- Change to GameOver
                                      }
                                  _ -> { model | state = MenuScreen }
                                  
          L12L2 ->
                  case model.state of
                      L1 _ ->
                          { model | time = 0, state = L2 Level2.init }        -- step 5
                      otherwise ->
                          model                        
          L2Msg submsg -> case model.state of
                                  L2 submodel ->
                                    let
                                      newState = Level2.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.score == 3 --Change to case time out or score up
                                                        then L2C Level2CompGame.init -- Change to level2
                                                        else if newState.loss == 1
                                                        then MenuScreen
                                                        else L2 newState
                                      }
                                  L2C submodel -> { model | state = L2C Level2CompGame.init }
                                  _ -> { model | state = MenuScreen }
                                  
          L22L2C ->
                  case model.state of
                      L2 _ ->
                          { model | time = 0, state = L2C Level2CompGame.init }        -- step 5
                      otherwise ->
                          model                        
          L2CMsg submsg -> case model.state of
                                  L2C submodel ->
                                    let
                                      newState = Level2CompGame.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.nextLevel > 0 --Change to case time out or score up
                                                        then L3 Level3.init -- Change to level2
                                                        else L2C newState -- Change to GameOver
                                      }
                                  _ -> { model | state = MenuScreen }
                                  
          L22L3 ->
                  case model.state of
                      L2 _ ->
                          { model | time = 0, state = L3 Level3.init }        -- step 5
                      otherwise ->
                          model                        
          L3Msg submsg -> case model.state of
                                  L3 submodel ->
                                    let
                                      newState = Level3.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.score == 5 --Change to case time out or score up
                                                        then End EndWin.init -- Change to level2
                                                        else if newState.loss == 1
                                                        then MenuScreen
                                                        else L3 newState
                                      }
                                  End submodel -> { model | time = 0, state = End EndWin.init }
                                  _ -> { model | state = MenuScreen }
                                  
          L32End ->
                  case model.state of
                      L3 _ ->
                          { model | time = 0, state = End EndWin.init }        -- step 5
                      otherwise ->
                          model                        
          EndMsg submsg -> case model.state of
                                  End submodel ->
                                    let
                                      newState = EndWin.update submsg submodel
                                    in
                                      { model | time = 0, state = if newState.playAgain > 0 --Change to case time out or score up
                                                        then MenuScreen -- Change to level2
                                                        else End newState -- Change to GameOver
                                      }
                                  _ -> { model | state = MenuScreen }
          Help2Menu  ->
              case model.state of
                  HelpScreen  ->
                      { model | state = MenuScreen }
                  otherwise ->
                      model
          HoverEnter1 ->
                   { model | isHovering1 = True }
          HoverLeave1 ->
                   { model | isHovering1 = False }
          HoverEnter2 ->
                   { model | isHovering2 = True }
          HoverLeave2 ->
                   { model | isHovering2 = False }
          _ -> model



fence = group [
  curve (-11.49,18.532) [Pull (-11.73,29.528) (-11.98,40.525),Pull (-10.37,42.625) (-8.772,44.725),Pull (-7.413,42.749) (-6.054,40.772),Pull (-6.177,29.405) (-6.301,18.038),Pull (-8.895,18.038) (-11.49,18.038),Pull (-11.49,18.285) (-11.49,18.532),Pull (-11.49,18.532) (-11.49,18.532)]
  |> filled brown
  |> addOutline (solid 0.5) black

      ]


boy = group [
  -- Face and neck
  curve (-55.59,18.405) [Pull (-56.05,18.125) (-56.52,17.845),Pull (-57.08,17.751) (-57.64,17.658),Pull (-58.30,18.032) (-58.95,18.405),Pull (-59.42,18.966) (-59.88,19.527),Pull (-60.07,20.087) (-60.26,20.648),Pull (-60.26,21.395) (-60.26,22.143),Pull (-59.79,22.703) (-59.32,23.264),Pull (-58.95,23.451) (-58.58,23.637),Pull (-58.20,23.731) (-57.83,23.824),Pull (-57.27,23.731) (-56.71,23.637),Pull (-56.43,23.357) (-56.15,23.077),Pull (-55.96,22.797) (-55.77,22.516),Pull (-55.77,23.637) (-55.77,24.759),Pull (-55.59,25.880) (-55.40,27.001),Pull (-55.31,27.935) (-55.21,28.870),Pull (-54.93,30.084) (-54.65,31.299),Pull (-54.47,31.579) (-54.28,31.859),Pull (-51.01,31.953) (-47.74,32.046),Pull (-38.11,32.420) (-28.49,32.794),Pull (-28.58,31.018) (-28.68,29.243),Pull (-28.21,29.150) (-27.74,29.056),Pull (-27.18,28.870) (-26.62,28.683),Pull (-25.97,28.122) (-25.31,27.562),Pull (-24.85,26.814) (-24.38,26.067),Pull (-24.29,25.132) (-24.19,24.198),Pull (-24.10,23.824) (-24.01,23.451),Pull (-23.63,23.637) (-23.26,23.824),Pull (-22.79,23.824) (-22.32,23.824),Pull (-21.86,23.731) (-21.39,23.637),Pull (-20.92,23.357) (-20.46,23.077),Pull (-20.27,22.516) (-20.08,21.956),Pull (-19.99,21.395) (-19.90,20.835),Pull (-19.99,20.181) (-20.08,19.527),Pull (-20.55,19.059) (-21.02,18.592),Pull (-21.39,18.312) (-21.76,18.032),Pull (-22.32,17.938) (-22.89,17.845),Pull (-23.26,17.845) (-23.63,17.845),Pull (-24.01,17.845) (-24.38,17.845),Pull (-24.57,18.032) (-24.75,18.218),Pull (-25.31,16.630) (-25.88,15.042),Pull (-26.62,13.921) (-27.37,12.8),Pull (-28.21,11.678) (-29.05,10.557),Pull (-29.80,10.090) (-30.55,9.6233),Pull (-31.39,9.0627) (-32.23,8.5021),Pull (-33.26,8.1284) (-34.28,7.7547),Pull (-35.22,7.4744) (-36.15,7.1941),Pull (-37.18,7.0072) (-38.21,6.8204),Pull (-38.21,6.1664) (-38.21,5.5124),Pull (-38.21,5.3255) (-38.21,5.1386),Pull (-37.09,5.1386) (-35.97,5.1386),Pull (-35.78,5.1386) (-35.59,5.1386),Pull (-35.69,4.5781) (-35.78,4.0175),Pull (-36.06,3.6437) (-36.34,3.2700),Pull (-36.71,2.7094) (-37.09,2.1489),Pull (-37.46,1.7751) (-37.83,1.4014),Pull (-38.49,1.1211) (-39.14,0.8408),Pull (-40.17,1.0277) (-41.20,1.2145),Pull (-42.04,1.4948) (-42.88,1.7751),Pull (-43.25,2.3357) (-43.63,2.8963),Pull (-43.91,3.3635) (-44.19,3.8306),Pull (-44.37,4.5781) (-44.56,5.3255),Pull (-43.07,5.2321) (-41.57,5.1386),Pull (-41.67,6.0729) (-41.76,7.0072),Pull (-43.07,7.0072) (-44.37,7.0072),Pull (-45.50,7.3810) (-46.62,7.7547),Pull (-47.92,8.5021) (-49.23,9.2496),Pull (-50.63,10.370) (-52.04,11.491),Pull (-52.97,12.893) (-53.90,14.294),Pull (-54.56,15.696) (-55.21,17.097),Pull (-55.49,17.751) (-55.77,18.405),Pull (-55.77,18.405) (-55.77,18.405)]
  |> filled ( rgb 232 190 172)
  ,
  -- Hair under hat
  curve (-61.19,32.046) [Pull (-60.91,31.018) (-60.63,29.991),Pull (-60.07,28.309) (-59.51,26.627),Pull (-58.95,25.132) (-58.39,23.637),Pull (-58.20,23.170) (-58.02,22.703),Pull (-57.08,22.516) (-56.15,22.329),Pull (-55.96,22.610) (-55.77,22.890),Pull (-55.59,24.198) (-55.40,25.506),Pull (-55.40,26.347) (-55.40,27.188),Pull (-54.93,28.683) (-54.47,30.178),Pull (-54.37,30.645) (-54.28,31.112),Pull (-54.09,31.672) (-53.90,32.233),Pull (-51.38,33.728) (-48.86,35.223),Pull (-48.11,33.448) (-47.36,31.672),Pull (-46.90,31.299) (-46.43,30.925),Pull (-45.87,30.645) (-45.31,30.364),Pull (-44.37,30.084) (-43.44,29.804),Pull (-42.60,29.524) (-41.76,29.243),Pull (-41.20,29.150) (-40.64,29.056),Pull (-39.52,28.870) (-38.4,28.683),Pull (-37.37,28.589) (-36.34,28.496),Pull (-34.56,28.589) (-32.79,28.683),Pull (-31.76,28.870) (-30.73,29.056),Pull (-29.89,29.243) (-29.05,29.430),Pull (-28.49,29.337) (-27.93,29.243),Pull (-27.37,28.870) (-26.81,28.496),Pull (-26.06,27.842) (-25.31,27.188),Pull (-25.03,26.534) (-24.75,25.880),Pull (-24.57,24.572) (-24.38,23.264),Pull (-24.29,22.423) (-24.19,21.582),Pull (-22.89,21.862) (-21.58,22.143),Pull (-21.58,22.890) (-21.58,23.637),Pull (-21.30,24.385) (-21.02,25.132),Pull (-20.83,25.973) (-20.64,26.814),Pull (-20.27,27.562) (-19.90,28.309),Pull (-19.71,29.430) (-19.52,30.551),Pull (-19.24,31.205) (-18.96,31.859),Pull (-22.14,35.503) (-25.31,39.147),Pull (-43.07,37.839) (-60.82,36.531),Pull (-61.19,35.410) (-61.57,34.289),Pull (-61.38,33.167) (-61.19,32.046),Pull (-61.19,32.046) (-61.19,32.046)]
  |> filled black
  ,
  
  
  -- Hat
  curve (-67.58,33.359) [Pull (-62.02,36.942) (-56.46,40.525),Pull (-52.88,48.308) (-49.29,56.092),Pull (-40.40,56.092) (-31.50,56.092),Pull (-27.30,48.061) (-23.10,40.030),Pull (-17.85,36.599) (-12.61,33.167),Pull (-13.17,32.700) (-13.73,32.233),Pull (-15.13,32.140) (-16.53,32.046),Pull (-19.43,31.766) (-22.32,31.486),Pull (-25.03,31.392) (-27.74,31.299),Pull (-30.92,31.299) (-34.10,31.299),Pull (-37.55,31.205) (-41.01,31.112),Pull (-43.91,31.205) (-46.80,31.299),Pull (-51.57,31.299) (-56.33,31.299),Pull (-59.70,31.579) (-63.06,31.859),Pull (-64.93,32.233) (-66.80,32.607),Pull (-67.27,32.887) (-67.73,33.167),Pull (-67.73,33.167) (-67.73,33.167)]
  |> filled (rgb 250 20 20)
  ,
  
  
  curve (-49.42,55.778) [Pull (-49.23,55.964) (-49.05,56.151),Pull (-48.39,56.151) (-47.74,56.151),Pull (-46.71,56.245) (-45.68,56.338),Pull (-44.56,56.432) (-43.44,56.525),Pull (-42.32,56.525) (-41.20,56.525),Pull (-39.89,56.525) (-38.58,56.525),Pull (-36.62,56.432) (-34.66,56.338),Pull (-33.07,56.151) (-31.48,55.964),Pull (-33.82,54.656) (-36.15,53.348),Pull (-37.55,52.975) (-38.96,52.601),Pull (-39.70,52.414) (-40.45,52.227),Pull (-42.60,52.788) (-44.75,53.348),Pull (-45.96,53.909) (-47.18,54.470),Pull (-48.21,54.937) (-49.23,55.404),Pull (-49.33,55.497) (-49.42,55.591),Pull (-49.42,55.591) (-49.42,55.591)]
  |> filled ( rgb 1 120 0 ) 
  ,
  
  curve (-55.03,44.005) [Pull (-55.87,42.230) (-56.71,40.455),Pull (-40.17,40.362) (-23.63,40.268),Pull (-24.47,42.137) (-25.31,44.005),Pull (-40.17,43.912) (-55.03,43.818),Pull (-55.03,43.818) (-55.03,43.818)]
  |> filled ( rgb 1 120 0 ) 
  
  ,
  -- Eyebrow
  
  curve (-51.66,26.440) [Pull (-51.38,26.534) (-51.10,26.627),Pull (-50.54,26.908) (-49.98,27.188),Pull (-49.70,27.188) (-49.42,27.188),Pull (-48.95,27.188) (-48.49,27.188),Pull (-47.92,27.281) (-47.36,27.375),Pull (-47.64,27.748) (-47.92,28.122),Pull (-48.49,28.309) (-49.05,28.496),Pull (-49.33,28.496) (-49.61,28.496),Pull (-50.07,28.309) (-50.54,28.122),Pull (-50.82,27.748) (-51.10,27.375),Pull (-51.29,27.001) (-51.48,26.627),Pull (-51.57,26.627) (-51.66,26.627)]
  |> filled brown
  
  ,
  
  
  curve (-51.66,26.440) [Pull (-51.38,26.534) (-51.10,26.627),Pull (-50.54,26.908) (-49.98,27.188),Pull (-49.70,27.188) (-49.42,27.188),Pull (-48.95,27.188) (-48.49,27.188),Pull (-47.92,27.281) (-47.36,27.375),Pull (-47.64,27.748) (-47.92,28.122),Pull (-48.49,28.309) (-49.05,28.496),Pull (-49.33,28.496) (-49.61,28.496),Pull (-50.07,28.309) (-50.54,28.122),Pull (-50.82,27.748) (-51.10,27.375),Pull (-51.29,27.001) (-51.48,26.627),Pull (-51.57,26.627) (-51.66,26.627)]
  |> filled brown
  |> scaleX -1
  |> move (-80,-0)
  
  ,
    -- Eye
  {-  oval 5 6
    |> filled white
   
    |> move (-31,23)
    
    ,
    
    oval 5 6
    |> filled white
   
    |> move (-48,23)
    
    
    , -}
    oval 5 6
    |> filled black
    |> scale 0.8
    |> move (-31,23)
    ,
    oval 5 6
    |> filled black
    |> scale 0.8
    |> move (-48,23)
    
    
    

    
    
    ,
   --Nose 
  curve (-41.57,19.153) [Pull (-41.29,19.340) (-41.01,19.527),Pull (-40.82,19.527) (-40.64,19.527),Pull (-40.36,19.620) (-40.08,19.713),Pull (-39.80,19.713) (-39.52,19.713),Pull (-39.33,19.620) (-39.14,19.527),Pull (-38.86,19.340) (-38.58,19.153)]
  |> outlined (solid 0.5) brown 
  ,
  -- Mouth big
  curve (-44.00,16.910) [Pull (-43.44,16.724) (-42.88,16.537),Pull (-42.32,16.350) (-41.76,16.163),Pull (-41.20,16.070) (-40.64,15.976),Pull (-40.08,15.976) (-39.52,15.976),Pull (-39.14,15.976) (-38.77,15.976),Pull (-38.21,16.256) (-37.65,16.537),Pull (-37.09,16.630) (-36.53,16.724),Pull (-35.97,16.537) (-35.41,16.350),Pull (-35.22,16.163) (-35.03,15.976),Pull (-35.12,15.322) (-35.22,14.668),Pull (-35.41,14.014) (-35.59,13.360),Pull (-35.97,12.8) (-36.34,12.239),Pull (-36.81,11.865) (-37.27,11.491),Pull (-37.83,11.211) (-38.4,10.931),Pull (-39.24,10.744) (-40.08,10.557),Pull (-40.82,10.557) (-41.57,10.557),Pull (-42.23,11.024) (-42.88,11.491),Pull (-43.53,12.145) (-44.19,12.8),Pull (-44.56,13.921) (-44.94,15.042),Pull (-44.84,15.602) (-44.75,16.163),Pull (-44.56,16.443) (-44.37,16.724),Pull (-44.19,16.817) (-44.00,16.910),Pull (-44.00,16.910) (-44.00,16.910)]
  |> filled black
  ,
  -- mouth up
  curve (-44.00,16.910) [Pull (-43.44,16.724) (-42.88,16.537),Pull (-42.32,16.350) (-41.76,16.163),Pull (-41.20,16.070) (-40.64,15.976),Pull (-40.08,15.976) (-39.52,15.976),Pull (-39.14,15.976) (-38.77,15.976),Pull (-38.21,16.256) (-37.65,16.537),Pull (-37.09,16.630) (-36.53,16.724),Pull (-35.97,16.537) (-35.41,16.350),Pull (-35.22,16.163) (-35.03,15.976),Pull (-35.12,15.322) (-35.22,14.668),Pull (-35.41,14.014) (-35.59,13.360),Pull (-35.97,12.8) (-36.34,12.239),Pull (-36.81,11.865) (-37.27,11.491),Pull (-37.83,11.211) (-38.4,10.931),Pull (-39.24,10.744) (-40.08,10.557),Pull (-40.82,10.557) (-41.57,10.557),Pull (-42.23,11.024) (-42.88,11.491),Pull (-43.53,12.145) (-44.19,12.8),Pull (-44.56,13.921) (-44.94,15.042),Pull (-44.84,15.602) (-44.75,16.163),Pull (-44.56,16.443) (-44.37,16.724),Pull (-44.19,16.817) (-44.00,16.910),Pull (-44.00,16.910) (-44.00,16.910)]
  |> filled white
  |> scaleY 0.4
  |> scaleX 0.8
  |> move(-8,10)
  
  ,

  
  -- tongue pink
  curve (-42.88,11.305) [Pull (-42.69,11.491) (-42.51,11.678),Pull (-42.23,11.678) (-41.95,11.678),Pull (-41.38,11.772) (-40.82,11.865),Pull (-40.26,11.865) (-39.70,11.865),Pull (-39.24,11.865) (-38.77,11.865),Pull (-38.21,11.678) (-37.65,11.491),Pull (-37.46,11.305) (-37.27,11.118),Pull (-38.21,10.837) (-39.14,10.557),Pull (-39.70,10.557) (-40.26,10.557),Pull (-41.01,10.651) (-41.76,10.744),Pull (-42.23,11.024) (-42.69,11.305),Pull (-42.69,11.305) (-42.69,11.305)]  
  |> filled pink
  
  ,
  
  -- Handle
  curve (-13.36,-2.335) [Pull (-14.10,-1.868) (-14.85,-1.401),Pull (-15.32,-1.027) (-15.78,-0.654),Pull (-15.97,-0.093) (-16.16,0.4671),Pull (-16.16,1.3080) (-16.16,2.1489),Pull (-15.97,2.8963) (-15.78,3.6437),Pull (-14.94,5.6058) (-14.10,7.5678),Pull (-13.73,8.0350) (-13.36,8.5021),Pull (-12.98,9.0627) (-12.61,9.6233),Pull (-11.95,9.6233) (-11.30,9.6233),Pull (-10.65,9.6233) (-9.997,9.6233),Pull (-9.716,9.4364) (-9.436,9.2496),Pull (-9.623,8.5021) (-9.810,7.7547),Pull (-10.27,7.8481) (-10.74,7.9416),Pull (-11.11,7.9416) (-11.49,7.9416),Pull (-11.67,7.8481) (-11.86,7.7547),Pull (-12.23,7.1941) (-12.61,6.6335),Pull (-12.98,6.1664) (-13.36,5.6992),Pull (-14.01,3.7372) (-14.66,1.7751),Pull (-14.57,1.3080) (-14.48,0.8408),Pull (-14.29,0.4671) (-14.10,0.0934),Pull (-13.92,-0.186) (-13.73,-0.467),Pull (-13.36,-0.654) (-12.98,-0.840),Pull (-13.17,-1.681) (-13.36,-2.522),Pull (-13.36,-2.522) (-13.36,-2.522)]
  |> filled yellow
  
  ,
  
  curve (-8.502,12.613) [Pull (-11.58,3.4569) (-14.66,-5.699),Pull (-14.57,-6.072) (-14.48,-6.446),Pull (-14.10,-6.913) (-13.73,-7.381),Pull (-12.89,-8.035) (-12.05,-8.689),Pull (-10.93,-9.436) (-9.810,-10.18),Pull (-8.782,-10.46) (-7.754,-10.74),Pull (-6.540,-11.11) (-5.325,-11.49),Pull (-3.456,-11.77) (-1.588,-12.05),Pull (-1.214,-12.05) (-0.840,-12.05),Pull (0,-10.65) (0.8408,-9.249),Pull (4.2043,-8.035) (7.5678,-6.820),Pull (10.651,-7.100) (13.734,-7.381),Pull (14.294,-7.100) (14.855,-6.820),Pull (14.855,-6.446) (14.855,-6.072),Pull (14.855,-5.699) (14.855,-5.325),Pull (14.575,-4.297) (14.294,-3.270),Pull (13.921,-2.429) (13.547,-1.588),Pull (13.173,-1.214) (12.8,-0.840),Pull (12.426,-0.467) (12.052,-0.093),Pull (11.118,-1.121) (10.183,-2.148),Pull (8.9693,-3.456) (7.7547,-4.764),Pull (4.7649,-5.699) (1.7751,-6.633),Pull (4.7649,-0.934) (7.7547,4.7649),Pull (7.5678,5.4189) (7.3810,6.0729),Pull (6.9138,6.5401) (6.4467,7.0072),Pull (5.4189,7.6613) (4.3912,8.3153),Pull (3.2700,8.8759) (2.1489,9.4364),Pull (0.9343,9.9970) (-0.280,10.557),Pull (-1.588,11.024) (-2.896,11.491),Pull (-4.110,11.865) (-5.325,12.239),Pull (-6.446,12.332) (-7.567,12.426),Pull (-8.128,12.426) (-8.689,12.426),Pull (-8.689,12.426) (-8.689,12.426)]
  |> filled yellow
  
  ,
  
  
  
  -- Left hand
  curve (-51.29,-4.578) [Pull (-52.22,-6.259) (-53.16,-7.941),Pull (-54.00,-9.529) (-54.84,-11.11),Pull (-55.68,-13.17) (-56.52,-15.22),Pull (-57.08,-16.72) (-57.64,-18.21),Pull (-57.08,-18.68) (-56.52,-19.15),Pull (-56.24,-19.34) (-55.96,-19.52),Pull (-56.15,-19.80) (-56.33,-20.08),Pull (-56.61,-20.08) (-56.89,-20.08),Pull (-57.17,-19.90) (-57.45,-19.71),Pull (-57.27,-21.20) (-57.08,-22.70),Pull (-57.08,-23.17) (-57.08,-23.63),Pull (-57.27,-23.63) (-57.45,-23.63),Pull (-57.64,-23.54) (-57.83,-23.45),Pull (-58.20,-22.51) (-58.58,-21.58),Pull (-58.58,-22.70) (-58.58,-23.82),Pull (-58.76,-24.01) (-58.95,-24.19),Pull (-59.23,-24.10) (-59.51,-24.01),Pull (-59.51,-22.89) (-59.51,-21.76),Pull (-59.79,-22.79) (-60.07,-23.82),Pull (-60.26,-23.91) (-60.44,-24.01),Pull (-60.63,-23.73) (-60.82,-23.45),Pull (-60.63,-22.61) (-60.44,-21.76),Pull (-60.82,-22.23) (-61.19,-22.70),Pull (-61.47,-22.79) (-61.75,-22.89),Pull (-61.75,-22.51) (-61.75,-22.14),Pull (-61.75,-21.11) (-61.75,-20.08),Pull (-61.47,-19.24) (-61.19,-18.40),Pull (-60.72,-18.12) (-60.26,-17.84),Pull (-56.89,-10.37) (-53.53,-2.896),Pull (-53.06,-2.242) (-52.60,-1.588),Pull (-51.76,-1.775) (-50.91,-1.962),Pull (-51.01,-2.616) (-51.10,-3.270),Pull (-51.29,-3.924) (-51.48,-4.578),Pull (-51.48,-4.578) (-51.48,-4.578)]
  |> filled ( rgb 232 190 172)
  ,
  
  -- Right Arm
  curve (-25.69,1.5883) [Pull (-24.85,1.2145) (-24.01,0.8408),Pull (-23.45,0.5605) (-22.89,0.2802),Pull (-22.32,0.2802) (-21.76,0.2802),Pull (-20.92,0.6540) (-20.08,1.0277),Pull (-19.24,1.6817) (-18.40,2.3357),Pull (-17.56,2.9897) (-16.72,3.6437),Pull (-16.63,4.1109) (-16.53,4.5781),Pull (-16.35,5.2321) (-16.16,5.8861),Pull (-15.69,6.1664) (-15.22,6.4467),Pull (-14.57,6.6335) (-13.92,6.8204),Pull (-13.73,6.7270) (-13.54,6.6335),Pull (-13.45,6.2598) (-13.36,5.8861),Pull (-13.73,5.6992) (-14.10,5.5124),Pull (-14.38,5.3255) (-14.66,5.1386),Pull (-14.76,4.8583) (-14.85,4.5781),Pull (-14.66,4.4846) (-14.48,4.3912),Pull (-14.20,4.6715) (-13.92,4.9518),Pull (-13.54,5.1386) (-13.17,5.3255),Pull (-12.89,5.3255) (-12.61,5.3255),Pull (-12.33,5.2321) (-12.05,5.1386),Pull (-12.05,4.9518) (-12.05,4.7649),Pull (-12.23,4.6715) (-12.42,4.5781),Pull (-12.51,4.3912) (-12.61,4.2043),Pull (-12.42,4.1109) (-12.23,4.0175),Pull (-12.14,3.8306) (-12.05,3.6437),Pull (-12.23,3.4569) (-12.42,3.2700),Pull (-12.61,3.2700) (-12.8,3.2700),Pull (-12.70,3.0832) (-12.61,2.8963),Pull (-12.51,2.8029) (-12.42,2.7094),Pull (-12.42,2.5226) (-12.42,2.3357),Pull (-12.70,2.3357) (-12.98,2.3357),Pull (-12.98,2.1489) (-12.98,1.9620),Pull (-12.98,1.6817) (-12.98,1.4014),Pull (-13.17,1.4014) (-13.36,1.4014),Pull (-13.73,1.3080) (-14.10,1.2145),Pull (-14.38,1.3080) (-14.66,1.4014),Pull (-15.13,1.8686) (-15.60,2.3357),Pull (-15.22,2.4291) (-14.85,2.5226),Pull (-15.32,2.8029) (-15.78,3.0832),Pull (-15.78,3.3635) (-15.78,3.6437),Pull (-15.32,3.5503) (-14.85,3.4569),Pull (-14.94,3.6437) (-15.04,3.8306),Pull (-15.41,3.9240) (-15.78,4.0175),Pull (-15.97,3.0832) (-16.16,2.1489),Pull (-16.16,1.5883) (-16.16,1.0277),Pull (-16.25,0.7474) (-16.35,0.4671),Pull (-16.35,0.1868) (-16.35,-0.093),Pull (-18.96,-1.401) (-21.58,-2.709),Pull (-22.04,-2.802) (-22.51,-2.896),Pull (-23.26,-2.802) (-24.01,-2.709),Pull (-25.03,-2.148) (-26.06,-1.588),Pull (-26.44,-1.401) (-26.81,-1.214),Pull (-28.02,-0.654) (-29.24,-0.093),Pull (-28.87,1.4014) (-28.49,2.8963),Pull (-27.09,2.1489) (-25.69,1.4014),Pull (-25.69,1.4014) (-25.69,1.4014)]
  |> filled ( rgb 232 190 172)
  
  ,
  
  -- Tshirt
  curve (-44.37,4.9518) [Pull (-44.94,4.9518) (-45.50,4.9518),Pull (-46.15,4.8583) (-46.80,4.7649),Pull (-47.27,4.4846) (-47.74,4.2043),Pull (-48.49,3.7372) (-49.23,3.2700),Pull (-50.17,2.5226) (-51.10,1.7751),Pull (-51.57,1.3080) (-52.04,0.8408),Pull (-52.32,0.4671) (-52.60,0.0934),Pull (-52.97,-0.280) (-53.34,-0.654),Pull (-53.81,-1.308) (-54.28,-1.962),Pull (-54.00,-2.335) (-53.72,-2.709),Pull (-53.44,-2.989) (-53.16,-3.270),Pull (-52.69,-3.643) (-52.22,-4.017),Pull (-51.85,-4.297) (-51.48,-4.578),Pull (-50.91,-4.858) (-50.35,-5.138),Pull (-49.79,-5.325) (-49.23,-5.512),Pull (-48.86,-5.699) (-48.49,-5.886),Pull (-48.30,-9.062) (-48.11,-12.23),Pull (-39.52,-12.70) (-30.92,-13.17),Pull (-31.01,-11.11) (-31.11,-9.062),Pull (-31.20,-5.418) (-31.29,-1.775),Pull (-30.45,-2.055) (-29.61,-2.335),Pull (-28.96,-2.709) (-28.30,-3.083),Pull (-27.93,-2.709) (-27.56,-2.335),Pull (-27.09,-1.681) (-26.62,-1.027),Pull (-26.25,-0.186) (-25.88,0.6540),Pull (-25.69,1.6817) (-25.50,2.7094),Pull (-26.16,3.0832) (-26.81,3.4569),Pull (-27.65,3.7372) (-28.49,4.0175),Pull (-29.52,4.2978) (-30.55,4.5781),Pull (-31.67,4.8583) (-32.79,5.1386),Pull (-33.72,5.1386) (-34.66,5.1386),Pull (-35.12,5.2321) (-35.59,5.3255),Pull (-35.78,4.8583) (-35.97,4.3912),Pull (-36.25,3.9240) (-36.53,3.4569),Pull (-37.74,3.2700) (-38.96,3.0832),Pull (-41.29,3.4569) (-43.63,3.8306),Pull (-43.91,4.3912) (-44.19,4.9518),Pull (-44.19,4.9518) (-44.19,4.9518)]
  |> filled (rgb 250 20 20)
  
  ,
  -- Apron
  curve (-47.18,5.1386) [Pull (-46.15,5.1386) (-45.12,5.1386),Pull (-45.12,0.4671) (-45.12,-4.204),Pull (-39.89,-4.204) (-34.66,-4.204),Pull (-34.75,0.4671) (-34.84,5.1386),Pull (-33.82,5.1386) (-32.79,5.1386),Pull (-32.79,0.4671) (-32.79,-4.204),Pull (-32.60,-4.391) (-32.42,-4.578),Pull (-32.14,-5.232) (-31.85,-5.886),Pull (-31.57,-6.820) (-31.29,-7.754),Pull (-31.11,-8.502) (-30.92,-9.249),Pull (-30.45,-10.09) (-29.99,-10.93),Pull (-29.80,-11.11) (-29.61,-11.30),Pull (-29.99,-24.85) (-30.36,-38.4),Pull (-30.55,-39.52) (-30.73,-40.64),Pull (-33.91,-40.64) (-37.09,-40.64),Pull (-37.46,-39.70) (-37.83,-38.77),Pull (-38.86,-32.98) (-39.89,-27.18),Pull (-41.01,-32.98) (-42.13,-38.77),Pull (-42.97,-39.98) (-43.81,-41.20),Pull (-46.43,-40.92) (-49.05,-40.64),Pull (-49.33,-39.80) (-49.61,-38.96),Pull (-49.61,-38.77) (-49.61,-38.58),Pull (-49.98,-25.03) (-50.35,-11.49),Pull (-50.07,-11.21) (-49.79,-10.93),Pull (-49.61,-10.37) (-49.42,-9.810),Pull (-49.23,-9.156) (-49.05,-8.502),Pull (-48.77,-7.567) (-48.49,-6.633),Pull (-48.30,-5.699) (-48.11,-4.764),Pull (-47.83,-4.391) (-47.55,-4.017),Pull (-47.27,-3.643) (-46.99,-3.270),Pull (-47.18,0.9343) (-47.36,5.1386),Pull (-47.36,5.1386) (-47.36,5.1386)]
  |> filled blue
  
  ,
  
  
  curve (-43.44,-11.67) [Pull (-43.44,-12.61) (-43.44,-13.54),Pull (-43.44,-14.48) (-43.44,-15.41),Pull (-43.07,-16.63) (-42.69,-17.84),Pull (-42.04,-18.59) (-41.38,-19.34),Pull (-40.73,-19.62) (-40.08,-19.90),Pull (-39.61,-19.80) (-39.14,-19.71),Pull (-38.58,-19.43) (-38.02,-19.15),Pull (-37.55,-18.59) (-37.09,-18.03),Pull (-36.71,-17.19) (-36.34,-16.35),Pull (-36.34,-15.32) (-36.34,-14.29),Pull (-36.43,-12.98) (-36.53,-11.67),Pull (-39.89,-11.67) (-43.25,-11.67),Pull (-43.25,-11.67) (-43.25,-11.67)]
  |> filled (rgb 1 0 100)
  ,
  
  -- Left shoe
  
  curve (-49.98,-38.4) [Pull (-49.61,-43.44) (-49.23,-48.49),Pull (-49.70,-49.23) (-50.17,-49.98),Pull (-50.63,-50.91) (-51.10,-51.85),Pull (-51.01,-52.41) (-50.91,-52.97),Pull (-50.54,-53.34) (-50.17,-53.72),Pull (-49.61,-53.72) (-49.05,-53.72),Pull (-48.21,-53.62) (-47.36,-53.53),Pull (-46.15,-52.32) (-44.94,-51.10),Pull (-44.47,-50.63) (-44.00,-50.17),Pull (-43.81,-49.05) (-43.63,-47.92),Pull (-43.35,-46.52) (-43.07,-45.12),Pull (-42.69,-43.35) (-42.32,-41.57),Pull (-42.04,-40.08) (-41.76,-38.58),Pull (-42.41,-38.77) (-43.07,-38.96),Pull (-44.00,-39.14) (-44.94,-39.33),Pull (-45.68,-39.24) (-46.43,-39.14),Pull (-47.55,-38.96) (-48.67,-38.77),Pull (-49.33,-38.58) (-49.98,-38.4),Pull (-49.98,-38.4) (-49.98,-38.4)]
  |> filled yellow
  
  ,
  

  curve (-38.21,-38.58) [Pull (-37.09,-43.91) (-35.97,-49.23),Pull (-35.78,-49.98) (-35.59,-50.73),Pull (-35.03,-51.38) (-34.47,-52.04),Pull (-33.82,-52.50) (-33.16,-52.97),Pull (-32.32,-53.34) (-31.48,-53.72),Pull (-30.92,-53.81) (-30.36,-53.90),Pull (-30.08,-53.72) (-29.80,-53.53),Pull (-29.43,-53.25) (-29.05,-52.97),Pull (-29.05,-52.41) (-29.05,-51.85),Pull (-29.24,-51.29) (-29.43,-50.73),Pull (-29.52,-50.26) (-29.61,-49.79),Pull (-29.99,-49.33) (-30.36,-48.86),Pull (-30.45,-48.49) (-30.55,-48.11),Pull (-30.27,-43.16) (-29.99,-38.21),Pull (-30.45,-38.4) (-30.92,-38.58),Pull (-31.76,-38.77) (-32.60,-38.96),Pull (-33.35,-39.05) (-34.10,-39.14),Pull (-34.84,-39.14) (-35.59,-39.14),Pull (-36.25,-39.05) (-36.90,-38.96),Pull (-37.55,-38.68) (-38.21,-38.4),Pull (-38.30,-38.4) (-38.4,-38.4),Pull (-38.4,-38.4) (-38.4,-38.4)]
  |> filled yellow

  ]  




cloud = group [
  curve (-69.16,0.7600) [Pull (-67.64,2.8883) (-66.12,5.0166),Pull (-64.30,6.5368) (-62.47,8.0570),Pull (-60.50,8.6650) (-58.52,9.2731),Pull (-57.00,9.1211) (-55.48,8.9691),Pull (-54.27,8.6650) (-53.05,8.3610),Pull (-52.75,9.4251) (-52.44,10.489),Pull (-50.62,12.009) (-48.79,13.529),Pull (-46.06,14.593) (-43.32,15.657),Pull (-41.50,15.201) (-39.67,14.745),Pull (-38.76,16.114) (-37.85,17.482),Pull (-35.57,19.914) (-33.29,22.346),Pull (-30.25,24.323) (-27.21,26.299),Pull (-24.77,26.907) (-22.34,27.515),Pull (-20.06,27.363) (-17.78,27.211),Pull (-15.96,26.907) (-14.13,26.603),Pull (-12.46,25.995) (-10.79,25.387),Pull (-8.665,23.714) (-6.536,22.042),Pull (-4.712,20.674) (-2.888,19.306),Pull (-0.456,20.218) (1.9762,21.130),Pull (5.0166,20.978) (8.0570,20.826),Pull (10.185,20.218) (12.313,19.610),Pull (13.985,18.394) (15.657,17.178),Pull (17.178,15.049) (18.698,12.921),Pull (19.154,10.033) (19.610,7.1448),Pull (22.346,6.0807) (25.083,5.0166),Pull (27.363,2.8883) (29.643,0.7600),Pull (29.947,-2.280) (30.251,-5.320),Pull (29.643,-8.209) (29.035,-11.09),Pull (27.819,-12.76) (26.603,-14.44),Pull (24.323,-15.80) (22.042,-17.17),Pull (19.154,-17.48) (16.266,-17.78),Pull (14.137,-17.17) (12.009,-16.57),Pull (10.945,-18.09) (9.8812,-19.61),Pull (8.6650,-20.97) (7.4489,-22.34),Pull (5.4726,-23.56) (3.4964,-24.77),Pull (1.2161,-25.53) (-1.064,-26.29),Pull (-3.648,-26.14) (-6.232,-25.99),Pull (-8.057,-25.38) (-9.881,-24.77),Pull (-11.40,-24.01) (-12.92,-23.25),Pull (-13.52,-22.65) (-14.13,-22.04),Pull (-15.65,-22.95) (-17.17,-23.86),Pull (-19.15,-23.41) (-21.13,-22.95),Pull (-22.49,-21.89) (-23.86,-20.82),Pull (-25.23,-22.34) (-26.60,-23.86),Pull (-29.18,-24.93) (-31.77,-25.99),Pull (-35.42,-25.84) (-39.06,-25.69),Pull (-42.26,-24.32) (-45.45,-22.95),Pull (-47.42,-20.82) (-49.40,-18.69),Pull (-50.01,-16.72) (-50.62,-14.74),Pull (-52.75,-15.65) (-54.87,-16.57),Pull (-57.46,-16.26) (-60.04,-15.96),Pull (-62.32,-14.74) (-64.60,-13.52),Pull (-66.58,-11.70) (-68.56,-9.881),Pull (-69.16,-6.992) (-69.77,-4.104),Pull (-69.32,-1.672) (-68.86,0.7600),Pull (-68.86,0.7600) (-68.86,0.7600)] 
  |> filled lightBlue
  ]



cloudline = group [
    curve (-68.70,-4.988) [Pull (-67.99,-6.271) (-67.27,-7.554),Pull (-66.28,-8.409) (-65.28,-9.265),Pull (-63.85,-9.977) (-62.43,-10.69),Pull (-59.86,-10.97) (-57.30,-11.26),Pull (-56.01,-11.11) (-54.73,-10.97),Pull (-53.30,-9.977) (-51.88,-8.979),Pull (-50.60,-8.124) (-49.31,-7.269),Pull (-48.74,-8.552) (-48.17,-9.835),Pull (-47.46,-11.40) (-46.75,-12.97),Pull (-45.89,-13.96) (-45.04,-14.96),Pull (-43.90,-15.82) (-42.76,-16.67),Pull (-41.19,-17.53) (-39.62,-18.38),Pull (-37.63,-18.38) (-35.63,-18.38),Pull (-33.49,-18.24) (-31.35,-18.10),Pull (-29.79,-17.38) (-28.22,-16.67),Pull (-26.51,-15.25) (-24.80,-13.82),Pull (-23.80,-12.54) (-22.80,-11.26),Pull (-21.95,-12.68) (-21.09,-14.11),Pull (-19.67,-14.68) (-18.24,-15.25),Pull (-17.10,-15.10) (-15.96,-14.96),Pull (-14.68,-14.53) (-13.39,-14.11),Pull (-12.97,-13.68) (-12.54,-13.25),Pull (-11.97,-14.11) (-11.40,-14.96),Pull (-10.40,-16.53) (-9.407,-18.10),Pull (-8.124,-18.95) (-6.841,-19.81),Pull (-5.131,-20.09) (-3.420,-20.38),Pull (-1.567,-20.38) (0.2850,-20.38),Pull (2.4231,-19.52) (4.5612,-18.67),Pull (5.5590,-17.95) (6.5567,-17.24),Pull (7.1269,-16.67) (7.6971,-16.10),Pull (8.5523,-14.68) (9.4075,-13.25),Pull (9.6926,-12.54) (9.9777,-11.83),Pull (11.545,-12.11) (13.113,-12.40),Pull (14.824,-12.54) (16.534,-12.68),Pull (17.959,-12.40) (19.385,-12.11),Pull (21.238,-11.68) (23.091,-11.26),Pull (24.089,-10.54) (25.086,-9.835),Pull (26.227,-8.267) (27.367,-6.699),Pull (27.937,-5.559) (28.507,-4.418),Pull (28.792,-3.135) (29.077,-1.853),Pull (29.790,-1.853) (30.503,-1.853),Pull (30.788,-4.561) (31.073,-7.269),Pull (30.218,-9.407) (29.363,-11.54),Pull (28.222,-12.97) (27.082,-14.39),Pull (25.799,-15.39) (24.516,-16.39),Pull (22.093,-16.96) (19.670,-17.53),Pull (18.244,-17.53) (16.819,-17.53),Pull (14.396,-16.96) (11.973,-16.39),Pull (11.403,-17.67) (10.832,-18.95),Pull (9.6926,-20.52) (8.5523,-22.09),Pull (7.2694,-23.09) (5.9866,-24.08),Pull (4.2761,-24.80) (2.5657,-25.51),Pull (0.8552,-25.94) (-0.855,-26.36),Pull (-2.993,-26.36) (-5.131,-26.36),Pull (-7.982,-25.37) (-10.83,-24.37),Pull (-12.40,-23.23) (-13.96,-22.09),Pull (-15.82,-23.09) (-17.67,-24.08),Pull (-19.10,-23.94) (-20.52,-23.80),Pull (-21.80,-22.94) (-23.09,-22.09),Pull (-23.66,-21.38) (-24.23,-20.66),Pull (-25.65,-22.66) (-27.08,-24.65),Pull (-29.93,-25.51) (-32.78,-26.36),Pull (-36.06,-26.08) (-39.34,-25.79),Pull (-41.62,-24.80) (-43.90,-23.80),Pull (-45.61,-22.66) (-47.32,-21.52),Pull (-48.74,-19.95) (-50.17,-18.38),Pull (-50.60,-16.67) (-51.02,-14.96),Pull (-52.59,-15.82) (-54.16,-16.67),Pull (-55.30,-16.81) (-56.44,-16.96),Pull (-59.01,-16.24) (-61.57,-15.53),Pull (-64.57,-13.54) (-67.56,-11.54),Pull (-68.84,-8.552) (-70.12,-5.559),Pull (-69.70,-4.703) (-69.27,-3.848),Pull (-68.98,-4.561) (-68.70,-5.273),Pull (-68.70,-5.273) (-68.70,-5.273)]  
    |> filled black  
    |> makeTransparent 0.8
  ]

bird = group [
  
    curve (-66.42,31.786) [Pull (-66.13,32.926) (-65.85,34.066),Pull (-65.14,35.492) (-64.42,36.917),Pull (-63.42,37.915) (-62.43,38.913),Pull (-61.00,39.340) (-59.58,39.768),Pull (-58.01,39.768) (-56.44,39.768),Pull (-55.59,39.483) (-54.73,39.198),Pull (-53.87,38.628) (-53.02,38.057),Pull (-51.88,36.917) (-50.74,35.777),Pull (-50.17,34.066) (-49.60,32.356),Pull (-49.46,29.505) (-49.31,26.654),Pull (-48.46,26.084) (-47.60,25.514),Pull (-46.61,24.516) (-45.61,23.518),Pull (-43.90,21.665) (-42.19,19.812),Pull (-41.47,18.244) (-40.76,16.677),Pull (-39.34,14.396) (-37.91,12.115),Pull (-36.48,9.9777) (-35.06,7.8396),Pull (-34.06,6.6993) (-33.06,5.5590),Pull (-32.07,4.7037) (-31.07,3.8485),Pull (-29.79,2.8507) (-28.50,1.8530),Pull (-28.08,0.9977) (-27.65,0.1425),Pull (-27.65,-0.427) (-27.65,-0.997),Pull (-28.08,-0.712) (-28.50,-0.427),Pull (-26.65,-1.853) (-24.80,-3.278),Pull (-25.22,-3.706) (-25.65,-4.133),Pull (-26.93,-3.706) (-28.22,-3.278),Pull (-27.22,-4.703) (-26.22,-6.129),Pull (-24.94,-7.697) (-23.66,-9.265),Pull (-22.09,-11.40) (-20.52,-13.54),Pull (-19.52,-15.53) (-18.53,-17.53),Pull (-18.67,-18.81) (-18.81,-20.09),Pull (-19.24,-20.81) (-19.67,-21.52),Pull (-20.52,-21.80) (-21.38,-22.09),Pull (-22.66,-21.38) (-23.94,-20.66),Pull (-24.65,-19.95) (-25.37,-19.24),Pull (-26.36,-18.24) (-27.36,-17.24),Pull (-28.08,-17.24) (-28.79,-17.24),Pull (-29.64,-16.10) (-30.50,-14.96),Pull (-31.78,-12.97) (-33.06,-10.97),Pull (-35.06,-7.839) (-37.06,-4.703),Pull (-40.05,-3.848) (-43.04,-2.993),Pull (-45.61,-2.138) (-48.17,-1.282),Pull (-49.31,-0.855) (-50.45,-0.427),Pull (-50.88,-0.855) (-51.31,-1.282),Pull (-52.45,-0.997) (-53.59,-0.712),Pull (-55.73,0.5701) (-57.87,1.8530),Pull (-59.72,3.4209) (-61.57,4.9888),Pull (-62.57,6.6993) (-63.57,8.4097),Pull (-63.85,8.4097) (-64.14,8.4097),Pull (-65.14,9.6926) (-66.13,10.975),Pull (-66.56,12.115) (-66.99,13.256),Pull (-66.99,14.538) (-66.99,15.821),Pull (-66.85,17.247) (-66.70,18.672),Pull (-67.27,18.244) (-67.84,17.817),Pull (-67.56,20.240) (-67.27,22.663),Pull (-67.27,23.946) (-67.27,25.229),Pull (-67.27,26.512) (-67.27,27.795),Pull (-68.56,28.080) (-69.84,28.365),Pull (-70.84,28.792) (-71.83,29.220),Pull (-72.55,29.220) (-73.26,29.220),Pull (-72.40,29.790) (-71.55,30.360),Pull (-70.41,30.930) (-69.27,31.501),Pull (-67.99,31.928) (-66.70,32.356),Pull (-66.56,32.356) (-66.42,32.356)]
  |> filled pink  
  
  ]


type alias Model =
    { time: Float, state : State, isHovering1: Bool, isHovering2: Bool }

init : Model
init = { time = 0, state = MenuScreen, isHovering1 = False, isHovering2 = False }
    
    
main = gameApp Tick { model = init, view = view, update = update, title = "Home Garden" }

view model = collage 192 128 [myShapes model]

