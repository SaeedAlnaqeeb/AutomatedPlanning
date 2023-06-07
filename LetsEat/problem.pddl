(define (problem letseat-simple)
    (:domain letseat)
    (:objects
        arm - robot
        unicorn - unicorn
        cupcake1 - cupcake
        cupcake2 - cupcake ;Add the second cupcake
        table - location
        plate - location
    )

    (:init
        (on arm table)
        (on cupcake1 table)
        (on cupcake2 table) ;Add the second cupcake on the table
        (arm-empty)
        (path table plate)
        (path plate table) ;Adding a path to return from plate to table
    )
    (:goal
        (and
            (on cupcake1 plate)
            (eaten cupcake1 plate) ;Cupcake1 is eaten
        )
    )
)