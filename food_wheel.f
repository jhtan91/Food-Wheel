
        !This program resembles a wheel that will randomly select a food.
        !This is a simple program to learn the usage of random_number function in FORTRAN.
        
        program food_wheel
        
        implicit none
        
        character::confirm
        character(len=3),dimension(5)::food
        real::r,a
		
	food = ["jap","kor","kfc","mcd","diy"]
        !food(1)="jap"
        !food(2)="kor"
        !food(3)="kfc"
        !food(4)="mcd"
        !food(5)="diy"
        
        print*,"Don't know what to eat? Press Y"
        
        read*,confirm
        
        if(confirm=="y") then
            
            call random_seed()
            call random_number(r)
            
            !random_number() returns real number between 0 to 1.
            !Therefore, for x number of options, multiply the variable r with x.
            !Then, +1 to achieve random integers between 1 to x.
            a=r*5.0+1.0
            
            print*,"Eat ",food(int(a))
            
        else
            print*,"Okay then."
            
        endif
        
        end program food_wheel
        
