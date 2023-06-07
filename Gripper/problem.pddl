(define (problem gripper-problem)
    (:domain gripper-strips)
    (:objects
        rooma roomb ball1 ball2 left-gripper right-gripper
    )
    (:init
        ;Initializing rooms a and b
        (room rooma)
        (room roomb)

        ;Ball objects
        (ball ball1)
        (ball ball2)

        ;Positions and states
        (at-robby rooma)
        (free left-gripper)
        (free right-gripper)

        (at ball1 rooma)
        (at ball2 rooma)

        (gripper left-gripper)
        (gripper right-gripper)
    )
    (:goal
        (and
            (at ball1 roomb) ; The goal is to get both balls to room b
            (at ball2 roomb))
    )
)