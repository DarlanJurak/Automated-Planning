;Header and description

(define 
    
    ;================= Domain definition ================= 
    (domain gripper)

    ;================= Requirements definition ===========
    ;remove requirements that are not needed
    ; (:requirements :strips :fluents :durative-actions :timed-initial-literals :typing :conditional-effects :negative-preconditions :duration-inequalities :equality)
    (
        :requirements 
        :strips
    )

    ;================= Types definition ==================
    (
        :types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    )

    ; un-comment following line if constants are needed
    ;(:constants )

    ;================= Predicates definition =============
    (
        :predicates 

            (room ?x)                   ; x is a room
            (ball ?x)                   ; x is a ball
            (gripper-arm ?x)            ; x is a gripper`s arm
            (loose ?x)                  ; x is loose
            (arm_free ?x)               ; x is free
            (arm_carrying_ball ?x ?y)   ; arm x is carrying ball y
            (ball_in_room ?x ?y)        ; ball x is in room y

    )


    ;================= Functions definition ==============
    (   
        :functions ;todo: define numeric functions here
    )

    ;================= Actions definition ================
    (   
        :action get-ball 
        :parameters (?x ?y)
        :precondition 
            (and    (gripper-arm ?y) 
                    (arm_free ?y)
                    (ball ?x) 
                    (loose ?x))
        :effect       
            (and    (not (arm_free ?y)) 
                    (arm_carrying_ball ?y ?x)
                    (not (loose ?x)))
    )
)