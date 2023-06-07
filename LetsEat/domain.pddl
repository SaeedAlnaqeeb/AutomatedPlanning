(define (domain letseat)

    (:requirements :typing)

    (:types
        location locatable - object
        bot cupcake - locatable
        robot - bot
        unicorn - bot ;Unicorn is a type of bot
        )

    (:predicates
        (on ?obj - locatable ?loc - location)
        (holding ?arm - locatable ?cupcake - locatable)
        (arm-empty)
        (path ?location1 - location ?location2 - location)
        (eaten ?cupcake - locatable ?loc - location) ;Predicate to represent cupcake being eaten
    )

    (:action pick-up
        :parameters (?arm - bot ?cupcake - locatable ?loc - location)
        :precondition (and
            (on ?arm ?loc)
            (on ?cupcake ?loc)
            (arm-empty)
        )
        :effect (and
            (not (on ?cupcake ?loc))
            (holding ?arm ?cupcake)
            (not (arm-empty))
        )
    )

    (:action drop
        :parameters (?arm - bot ?cupcake - locatable ?loc - location)
        :precondition (and
            (on ?arm ?loc)
            (holding ?arm ?cupcake)
        )
        :effect (and
            (on ?cupcake ?loc)
            (arm-empty)
            (not (holding ?arm ?cupcake))
        )
    )

    (:action move
        :parameters (?arm - bot ?from - location ?to - location)
        :precondition (and
            (on ?arm ?from)
            (path ?from ?to)
        )
        :effect (and
            (not (on ?arm ?from))
            (on ?arm ?to)
        )
    )

    (:action eat
        :parameters (?unicorn - unicorn ?cupcake - cupcake ?loc - location)
        :precondition (and
            (on ?cupcake ?loc)
        )
        :effect (and
            (eaten ?cupcake ?loc)
        )
    )

)