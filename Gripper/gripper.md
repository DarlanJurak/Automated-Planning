# Gripper

## Domain

### Predicates:

1. is x a room? 
    1. (room ?x)
2. is x a ball? 
    1. (ball ?x)
3. is x in room y? 
    1. (ball_in_room ?x ?y) 
4. is x loose? 
    1. (loose ?x)
5. is x an arm? 
    1. (gripper-arm ?x)
6. is x empty? 
    1. (empty ?x)
7. is x holding y? 
    1. (arm_carrying_ball ?x ?y)
8. is x on room y? 
    1. (ball_in_room ?x ?y)
    

### Action/operators:

    1. getBall
        1. pre 
            1. x is an arm and x is empty and 
            2. y is a ball and y is loose
        2. fc
            1. x is an arm and x is not empty and x is holding y
            2. y is a ball an y is not loose
            
    2. moveBallToRoom r
        1. pre
            1. x is an arm and x is not empty and x is holding y
            2. y is a ball and y is not loose
            3. r is a room
        2. fc
            1. r is a room and x is a ball and x on room y

## Problems

### Objects

    1. room-left
    2. room-right
    3. ball-red
    4. ball-yellow
    5. ball-blue
    6. ball-green
    7. robot_arm-left
    8. robot_arm-right


