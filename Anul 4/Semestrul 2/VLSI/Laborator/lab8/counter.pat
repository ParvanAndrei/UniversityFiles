-- input / output list:

in        vdd B;
in        vss B;;;
in        ck B;;
in        reset B;;
in        i B;;;;
out       o B;;

begin

-- Pattern description:

--        vv  c r i   o
--        ds  k e
--        ds    s
--              e
--              t
--
--

pat_0  :  10  0 1 0  ?0 ; 
pat_1  :  10  1 1 0  ?0 ;
pat_2  :  10  0 1 0  ?0 ;
pat_3  :  10  1 0 0  ?0 ;
pat_4  :  10  0 0 0  ?0 ;
pat_5  :  10  1 0 1  ?0 ;
pat_6  :  10  0 0 1  ?0 ;
pat_7  :  10  1 0 1  ?0 ;
pat_8  :  10  0 0 1  ?0 ;
pat_9  :  10  1 0 1  ?0 ;
pat_10 :  10  0 0 1  ?0 ;
pat_10 :  10  1 0 1  ?0 ;
pat_11 :  10  0 0 1  ?0 ;
pat_12 :  10  1 0 1  ?1 ;
pat_13 :  10  0 0 1  ?1 ;
pat_14 :  10  1 0 1  ?1 ;
pat_15 :  10  0 0 1  ?1 ;
pat_16 :  10  1 1 1  ?0 ;
pat_17 :  10  0 1 1  ?0 ;
pat_18 :  10  1 0 1  ?0 ;
pat_19 :  10  0 0 1  ?0 ;

end;
