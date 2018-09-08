(define 

    ;================= Problem definition =================
    (problem gripper-four_balls) 
    (:domain gripper)
    
    ;================= Obsjects definition ================
    (
        
        :objects   

            ; rooms
            room-left 
            room-right
            ; balls
            ball-red 
            ball-green 
            ball-blue 
            ball-yellow
            ; arms
            arm-left 
            arm-right

    )

    ;================= Initial Condition =================
    (
        
        :init
        
            ; rooms
            (room room-left) 
            (room room-right)
            ; balls
            (ball ball-red) 
            (ball ball-green) 
            (ball ball-blue) 
            (ball ball-yellow)
            ; arms
            (gripper-arm arm-left) 
            (gripper-arm arm-right)
            ; arms free
            (arm_free arm-left) 
            (arm_free arm-right)
            ; balls in room
            (ball_in_room   ball-red    room-left) 
            (ball_in_room   ball-green  room-left)
            (ball_in_room   ball-blue   room-left) 
            (ball_in_room   ball-yellow room-left)

    )

    ;================= Goal definition ==================
    (
        :goal  
            
            (and
                
                (ball_in_room   ball-red        room-right) 
                (ball_in_room   ball-green      room-right)
                (ball_in_room   ball-blue       room-right) 
                (ball_in_room   ball-yellow     room-right)

            )

    )

    ;un-comment the following line if metric is needed
    ;(:metric minimize (???))
)
