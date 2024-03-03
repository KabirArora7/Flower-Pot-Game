myShapes model =
  [  
  -- Background
  square 1000
  |> filled (rgb 248 202 208)  
  |> notifyTap Drop2
  ,
  
  
  window
  
  ]
  ++ 

    (case model.flower of
        InHand -> [instruction2 , vase |> notifyTap Drop1]
        InVase -> [success , vase , flower |> scale 0.6 |> move (-5,10) |> notifyTap Pick]
        InPlace -> [instruction1, vase , flower |> move (-50,-20) |> notifyTap Pick]
    )
success = group [
    text "Very Good!"
    |> filled blue
    |> move (-80,40)

    ]

instruction1 = group [
  text "Click to pickup the Flower"
  |> filled blue
  |> move (-90,50)
  |> scale 0.9

    ]
    
instruction2 = group [
  text "Click on the Vase"
  |> filled blue
  |> move (-80,40)

    ]
window = group [
  rectangle 35 45
  |> filled ( rgb 135 206 235 )
  |> addOutline (solid 1) black
  |> move (60,30)
  
  ,
  
  rectangle 2 45
  |> filled black
  |> move (60,30)
  ,
  rectangle 35 2
  |> filled black
  |> move (60,30)
  {- ,
     roundedRect 4 16 3
    |> filled white
    |> rotate (degrees 130)
    |> move (60,30)
    
    ,
    roundedRect 4 16 3
    |> filled white
    |> rotate (degrees 130)
    |> move (50,45)
   
   ,
  
  curve (-19.93,5.3872) [Pull (-20.47,5.2794) (-21.01,5.1717),Pull (-21.22,4.9562) (-21.44,4.7407),Pull (-21.65,4.5252) (-21.87,4.3097),Pull (-21.87,4.0942) (-21.87,3.8787),Pull (-21.76,3.7710) (-21.65,3.6632),Pull (-21.33,3.4478) (-21.01,3.2323),Pull (-20.68,3.1245) (-20.36,3.0168),Pull (-19.82,2.9090) (-19.28,2.8013),Pull (-18.85,2.6936) (-18.42,2.5858),Pull (-17.67,2.4781) (-16.91,2.3703),Pull (-15.94,2.3703) (-14.97,2.3703),Pull (-13.79,2.3703) (-12.60,2.3703),Pull (-11.20,2.2626) (-9.804,2.1548),Pull (-8.727,2.2626) (-7.649,2.3703),Pull (-6.572,2.4781) (-5.494,2.5858),Pull (-4.309,2.8013) (-3.124,3.0168),Pull (-2.262,3.2323) (-1.400,3.4478),Pull (-0.861,3.6632) (-0.323,3.8787),Pull (-0.323,4.0942) (-0.323,4.3097),Pull (-0.430,4.4175) (-0.538,4.5252),Pull (-0.861,4.6329) (-1.185,4.7407),Pull (-1.400,4.8484) (-1.616,4.9562),Pull (-1.831,4.9562) (-2.047,4.9562)]
  |> outlined (solid 1.5) black
  |> move (0,-2)
    
-} 
    
    ]
    
          
        
 
                   
  
flower = group [
    
    curve (-7.371,23.567) [Pull (-7.706,22.897) (-8.041,22.226),Pull (-8.265,21.556) (-8.488,20.886),Pull (-8.712,20.216) (-8.935,19.546),Pull (-9.270,18.652) (-9.605,17.759),Pull (-9.717,16.865) (-9.828,15.972),Pull (-9.828,15.413) (-9.828,14.855),Pull (-9.717,13.961) (-9.605,13.068),Pull (-9.270,12.621) (-8.935,12.174),Pull (-8.488,11.727) (-8.041,11.280),Pull (-7.706,11.057) (-7.371,10.834),Pull (-6.813,10.499) (-6.254,10.164),Pull (-5.696,10.052) (-5.137,9.9406),Pull (-4.356,9.8289) (-3.574,9.7172),Pull (-2.792,9.8289) (-2.010,9.9406),Pull (-1.340,10.052) (-0.670,10.164),Pull (0.3350,10.387) (1.3403,10.610),Pull (2.3455,11.057) (3.3507,11.504),Pull (4.0209,11.951) (4.6910,12.397),Pull (5.2495,12.956) (5.8080,13.514),Pull (6.2547,14.184) (6.7015,14.855),Pull (6.9249,15.525) (7.1483,16.195),Pull (7.3717,16.642) (7.5951,17.089),Pull (7.5951,17.759) (7.5951,18.429),Pull (7.3717,18.876) (7.1483,19.322),Pull (6.7015,19.993) (6.2547,20.663),Pull (5.6963,21.333) (5.1378,22.003),Pull (4.3560,22.897) (3.5741,23.790),Pull (3.1273,24.349) (2.6806,24.907),Pull (2.4572,25.130) (2.2338,25.354),Pull (3.3507,24.349) (4.4677,23.343),Pull (5.0261,23.120) (5.5846,22.897),Pull (6.0314,22.785) (6.4781,22.673),Pull (7.1483,22.450) (7.8184,22.226),Pull (8.6003,22.003) (9.3821,21.780),Pull (10.164,21.780) (10.945,21.780),Pull (11.727,21.891) (12.509,22.003),Pull (13.291,22.338) (14.073,22.673),Pull (14.743,23.120) (15.413,23.567),Pull (15.860,24.013) (16.307,24.460),Pull (16.753,25.354) (17.200,26.247),Pull (17.424,27.476) (17.647,28.705),Pull (17.647,29.710) (17.647,30.715),Pull (17.424,31.497) (17.200,32.279),Pull (16.753,33.284) (16.307,34.289),Pull (15.525,34.736) (14.743,35.183),Pull (13.849,35.406) (12.956,35.630),Pull (12.174,35.741) (11.392,35.853),Pull (10.052,35.741) (8.7120,35.630),Pull (7.5951,35.294) (6.4781,34.959),Pull (5.4729,34.624) (4.4677,34.289),Pull (3.5741,33.842) (2.6806,33.396),Pull (1.8987,32.949) (1.1169,32.502),Pull (2.7923,33.619) (4.4677,34.736),Pull (5.1378,35.183) (5.8080,35.630),Pull (6.4781,36.300) (7.1483,36.970),Pull (7.5951,37.640) (8.0418,38.310),Pull (8.6003,38.980) (9.1588,39.650),Pull (9.6055,40.767) (10.052,41.884),Pull (9.9406,42.890) (9.8289,43.895),Pull (9.4938,44.677) (9.1588,45.458),Pull (8.7120,46.017) (8.2652,46.575),Pull (7.5951,47.134) (6.9249,47.692),Pull (6.2547,48.027) (5.5846,48.363),Pull (4.8027,48.809) (4.0209,49.256),Pull (3.0157,49.479) (2.0104,49.703),Pull (1.0052,49.815) (0,49.926),Pull (-0.781,49.926) (-1.563,49.926),Pull (-2.568,49.815) (-3.574,49.703),Pull (-4.020,49.479) (-4.467,49.256),Pull (-4.914,48.809) (-5.361,48.363),Pull (-5.808,47.916) (-6.254,47.469),Pull (-6.701,46.799) (-7.148,46.129),Pull (-7.260,45.235) (-7.371,44.342),Pull (-7.483,43.336) (-7.595,42.331),Pull (-7.706,41.549) (-7.818,40.767),Pull (-7.706,40.097) (-7.595,39.427),Pull (-7.371,38.869) (-7.148,38.310),Pull (-6.701,36.970) (-6.254,35.630),Pull (-7.036,37.305) (-7.818,38.980),Pull (-8.376,39.874) (-8.935,40.767),Pull (-9.605,41.438) (-10.27,42.108),Pull (-11.05,42.666) (-11.83,43.225),Pull (-12.73,43.783) (-13.62,44.342),Pull (-14.52,44.565) (-15.41,44.788),Pull (-16.41,44.788) (-17.42,44.788),Pull (-18.09,44.565) (-18.76,44.342),Pull (-19.54,44.006) (-20.32,43.671),Pull (-20.77,43.225) (-21.22,42.778),Pull (-21.55,42.443) (-21.89,42.108),Pull (-22.22,41.549) (-22.56,40.991),Pull (-22.89,40.321) (-23.23,39.650),Pull (-23.45,38.980) (-23.67,38.310),Pull (-23.79,37.640) (-23.90,36.970),Pull (-23.79,36.188) (-23.67,35.406),Pull (-23.56,34.624) (-23.45,33.842),Pull (-23.12,33.284) (-22.78,32.726),Pull (-22.45,32.390) (-22.11,32.055),Pull (-21.66,31.609) (-21.22,31.162),Pull (-20.66,30.938) (-20.10,30.715),Pull (-19.43,30.380) (-18.76,30.045),Pull (-17.87,29.821) (-16.97,29.598),Pull (-15.86,29.486) (-14.74,29.375),Pull (-12.73,29.151) (-10.72,28.928),Pull (-12.95,28.928) (-15.19,28.928),Pull (-15.97,28.928) (-16.75,28.928),Pull (-17.64,28.816) (-18.54,28.705),Pull (-19.43,28.593) (-20.32,28.481),Pull (-21.66,28.146) (-23.00,27.811),Pull (-23.45,27.141) (-23.90,26.471),Pull (-24.23,25.689) (-24.57,24.907),Pull (-24.68,23.902) (-24.79,22.897),Pull (-24.68,22.115) (-24.57,21.333),Pull (-24.23,20.663) (-23.90,19.993),Pull (-23.67,19.546) (-23.45,19.099),Pull (-23.12,18.652) (-22.78,18.205),Pull (-22.33,17.759) (-21.89,17.312),Pull (-21.44,16.977) (-20.99,16.642),Pull (-20.43,16.307) (-19.88,15.972),Pull (-19.09,15.636) (-18.31,15.301),Pull (-17.64,15.078) (-16.97,14.855),Pull (-15.97,14.855) (-14.96,14.855),Pull (-14.29,14.966) (-13.62,15.078),Pull (-12.84,15.413) (-12.06,15.748),Pull (-11.50,16.530) (-10.94,17.312),Pull (-10.49,17.982) (-10.05,18.652),Pull (-9.493,19.657) (-8.935,20.663),Pull (-8.600,21.445) (-8.265,22.226),Pull (-7.930,22.785) (-7.595,23.343),Pull (-7.483,23.455) (-7.371,23.567),Pull (-7.371,23.567) (-7.371,23.567)]
    |> filled purple
    |> addOutline (solid 1) black
    ,
    circle 6
    |> filled yellow
    |> addOutline (solid 1) black
    |> move (-4,29)
    
    ,
    -- Stem
  curve (-1.340,10.610) [Pull (-1.116,9.8289) (-0.893,9.0471),Pull (-0.670,8.0418) (-0.446,7.0366),Pull (-0.223,6.2547) (0,5.4729),Pull (0.2233,4.5794) (0.4467,3.6858),Pull (0.6701,2.6806) (0.8935,1.6753),Pull (1.0052,0.5584) (1.1169,-0.558),Pull (1.3403,-1.563) (1.5636,-2.568),Pull (1.7870,-3.574) (2.0104,-4.579),Pull (2.3455,-6.366) (2.6806,-8.153),Pull (3.1273,-11.39) (3.5741,-14.63),Pull (3.7975,-16.75) (4.0209,-18.87),Pull (4.2443,-21.55) (4.4677,-24.23),Pull (4.5794,-27.02) (4.6910,-29.82),Pull (4.8027,-34.40) (4.9144,-38.98),Pull (5.0261,-44.23) (5.1378,-49.47),Pull (4.9144,-51.60) (4.6910,-53.72),Pull (4.6910,-55.73) (4.6910,-57.74),Pull (5.2495,-57.74) (5.8080,-57.74),Pull (5.9197,-55.17) (6.0314,-52.60),Pull (6.0314,-50.70) (6.0314,-48.80),Pull (6.0314,-44.45) (6.0314,-40.09),Pull (5.9197,-34.06) (5.8080,-28.03),Pull (5.5846,-24.90) (5.3612,-21.78),Pull (5.2495,-19.76) (5.1378,-17.75),Pull (4.6910,-14.40) (4.2443,-11.05),Pull (3.9092,-7.818) (3.5741,-4.579),Pull (3.2390,-2.568) (2.9040,-0.558),Pull (2.3455,2.3455) (1.7870,5.2495),Pull (1.5636,6.5898) (1.3403,7.9301),Pull (0.8935,9.4938) (0.4467,11.057),Pull (-0.446,10.834) (-1.340,10.610),Pull (-1.340,10.610) (-1.340,10.610)]
  |> filled green
  |> addOutline (solid 0.7) black
  
  ,
  -- Leaf
  curve (6.4781,-21.78) [Pull (6.2547,-21.22) (6.0314,-20.66),Pull (5.9197,-19.76) (5.8080,-18.87),Pull (5.5846,-17.98) (5.3612,-17.08),Pull (5.3612,-15.97) (5.3612,-14.85),Pull (5.6963,-13.84) (6.0314,-12.84),Pull (6.5898,-11.83) (7.1483,-10.83),Pull (7.9301,-9.605) (8.7120,-8.376),Pull (9.3821,-7.706) (10.052,-7.036),Pull (10.834,-6.366) (11.616,-5.696),Pull (12.174,-5.249) (12.732,-4.802),Pull (13.738,-4.356) (14.743,-3.909),Pull (15.190,-3.462) (15.636,-3.015),Pull (16.083,-2.568) (16.530,-2.122),Pull (16.530,-2.904) (16.530,-3.685),Pull (16.642,-4.802) (16.753,-5.919),Pull (16.977,-7.483) (17.200,-9.047),Pull (17.089,-10.49) (16.977,-11.95),Pull (16.977,-13.29) (16.977,-14.63),Pull (16.753,-15.74) (16.530,-16.86),Pull (16.195,-17.87) (15.860,-18.87),Pull (15.636,-19.76) (15.413,-20.66),Pull (15.078,-21.44) (14.743,-22.22),Pull (14.296,-23.00) (13.849,-23.79),Pull (13.068,-24.34) (12.286,-24.90),Pull (11.616,-25.13) (10.945,-25.35),Pull (10.052,-25.24) (9.1588,-25.13),Pull (8.7120,-24.79) (8.2652,-24.46),Pull (7.8184,-23.90) (7.3717,-23.34),Pull (6.9249,-22.67) (6.4781,-22.00),Pull (6.5898,-21.89) (6.7015,-21.78),Pull (6.7015,-21.78) (6.7015,-21.78)]
  |> filled green
  |> addOutline (solid 0.7) black
  ,
  --Leaf inside line
  curve (14.073,-9.047) [Pull (13.626,-9.828) (13.179,-10.61),Pull (12.844,-11.61) (12.509,-12.62),Pull (11.951,-13.73) (11.392,-14.85),Pull (10.834,-15.74) (10.275,-16.64),Pull (9.6055,-17.64) (8.9354,-18.65),Pull (8.4886,-19.32) (8.0418,-19.99),Pull (7.4834,-20.77) (6.9249,-21.55),Pull (6.2547,-22.45) (5.5846,-23.34)]
  |> outlined (solid 0.7) black
  
  ]
    

vase = group [

    curve (-27.86,-0.582) [Pull (-28.79,-1.632) (-29.72,-2.681),Pull (-31.00,-4.196) (-32.29,-5.712),Pull (-32.99,-7.810) (-33.69,-9.908),Pull (-34.15,-12.93) (-34.62,-15.97),Pull (-34.50,-18.06) (-34.38,-20.16),Pull (-34.15,-22.49) (-33.92,-24.83),Pull (-33.10,-27.39) (-32.29,-29.95),Pull (-31.00,-33.22) (-29.72,-36.48),Pull (-28.32,-39.05) (-26.92,-41.61),Pull (-25.76,-43.13) (-24.59,-44.64),Pull (-23.19,-45.69) (-21.79,-46.74),Pull (-22.14,-47.56) (-22.49,-48.37),Pull (-22.14,-49.19) (-21.79,-50.01),Pull (-19.70,-50.82) (-17.60,-51.64),Pull (-13.75,-51.87) (-9.908,-52.10),Pull (-6.877,-51.75) (-3.846,-51.40),Pull (-2.448,-50.71) (-1.049,-50.01),Pull (-0.582,-49.42) (-0.116,-48.84),Pull (-0.233,-47.79) (-0.349,-46.74),Pull (0.9326,-45.34) (2.2149,-43.94),Pull (4.4298,-40.68) (6.6448,-37.42),Pull (8.0437,-34.62) (9.4426,-31.82),Pull (10.375,-28.67) (11.307,-25.53),Pull (11.774,-21.44) (12.240,-17.36),Pull (11.424,-13.75) (10.608,-10.14),Pull (9.7923,-8.160) (8.9763,-6.178),Pull (8.1602,-4.779) (7.3442,-3.380),Pull (6.1785,-2.214) (5.0127,-1.049),Pull (5.8287,0) (6.6448,1.0491),Pull (6.8779,2.4480) (7.1111,3.8469),Pull (5.7122,4.8961) (4.3132,5.9453),Pull (2.4480,6.2950) (0.5828,6.6448),Pull (-1.398,6.9945) (-3.380,7.3442),Pull (-6.061,7.5774) (-8.743,7.8105),Pull (-11.54,7.6939) (-14.33,7.5774),Pull (-17.48,7.2276) (-20.63,6.8779),Pull (-23.54,6.2950) (-26.46,5.7122),Pull (-27.39,5.0127) (-28.32,4.3132),Pull (-29.02,3.0309) (-29.72,1.7486),Pull (-29.26,1.1657) (-28.79,0.5828),Pull (-28.21,0) (-27.62,-0.582),Pull (-27.74,-0.582) (-27.86,-0.582)]
  |> filled red
  |> addOutline (solid 2) black
  ,
  
  curve (-20.66,-2.340) [Pull (-21.60,-2.206) (-22.53,-2.073),Pull (-23.47,-2.006) (-24.40,-1.939),Pull (-25.34,-1.538) (-26.28,-1.136),Pull (-26.48,-1.003) (-26.68,-0.869)]
  |> filled black
  |> addOutline (solid 2) black
  ,
    curve (-20.66,-2.340) [Pull (-21.60,-2.206) (-22.53,-2.073),Pull (-23.47,-2.006) (-24.40,-1.939),Pull (-25.34,-1.538) (-26.28,-1.136),Pull (-26.48,-1.003) (-26.68,-0.869)]
  |> filled black
  |> addOutline (solid 2) black
  |> move (22,0)
  |> scaleX -1
  ,
  curve (-19.93,5.3872) [Pull (-20.47,5.2794) (-21.01,5.1717),Pull (-21.22,4.9562) (-21.44,4.7407),Pull (-21.65,4.5252) (-21.87,4.3097),Pull (-21.87,4.0942) (-21.87,3.8787),Pull (-21.76,3.7710) (-21.65,3.6632),Pull (-21.33,3.4478) (-21.01,3.2323),Pull (-20.68,3.1245) (-20.36,3.0168),Pull (-19.82,2.9090) (-19.28,2.8013),Pull (-18.85,2.6936) (-18.42,2.5858),Pull (-17.67,2.4781) (-16.91,2.3703),Pull (-15.94,2.3703) (-14.97,2.3703),Pull (-13.79,2.3703) (-12.60,2.3703),Pull (-11.20,2.2626) (-9.804,2.1548),Pull (-8.727,2.2626) (-7.649,2.3703),Pull (-6.572,2.4781) (-5.494,2.5858),Pull (-4.309,2.8013) (-3.124,3.0168),Pull (-2.262,3.2323) (-1.400,3.4478),Pull (-0.861,3.6632) (-0.323,3.8787),Pull (-0.323,4.0942) (-0.323,4.3097),Pull (-0.430,4.4175) (-0.538,4.5252),Pull (-0.861,4.6329) (-1.185,4.7407),Pull (-1.400,4.8484) (-1.616,4.9562),Pull (-1.831,4.9562) (-2.047,4.9562)]
  |> filled red
  |> addOutline (solid 1.5) black
  |> move (0,-2)
  
  

  ]
  |> move (10,-10)

type Msg = Tick Float GetKeyState
          | Pick
          | Drop1
          | Drop2

type alias Model = { time : Float
                   , flower : UniqueItem 
                   }

type UniqueItem = InVase
    | InHand
    | InPlace

update msg model = case msg of
                     Tick t _ -> { model | time = t }
                     Pick -> { model | flower = InHand}
                     Drop1 -> { model | flower =  InVase}
                     Drop2-> {model | flower =  InPlace}
                     

init = { time = 0
       , flower = InPlace
        }

main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)


