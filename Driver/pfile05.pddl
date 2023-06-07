(define (problem driverlog-problem)
    (:domain driverlog)
    (:objects
        loc1 loc2 loc3 - location
        truck1 - truck
        obj1 obj2 obj3 - obj
        driver1 driver2 - driver
    )
    (:init
        ; Initializing locations of objects, track, and driver
        (at obj1 loc1)
        (at obj2 loc2)
        (at obj3 loc3)
        (at truck1 loc1)
        (at driver1 loc1)

        ; Linking paths 
        (path loc1 loc2)
        (path loc2 loc3)
        (link loc1 loc2)
        (link loc2 loc3)

        (empty truck1)
    )
    (:goal
        (and
            (at obj1 loc3) ; Delivering obj1 to location 3
            (at obj2 loc3) ; Delivering obj2 to location 3
            (at obj3 loc3) ; Delivering obj3 to location 3, but it'll be already there so it should not show as delivered
        )
    )
)