-- input / output list:

in        ck B;;
in        reset B;;
in        i B;;;;
out       o B;;;;
out       s0_flag B;;;
out       s1_flag B;;;
out       s2_flag B;;;
out       s3_flag B;;;
out       s4_flag B;;

begin

-- Pattern description:

--        c r i   o   s  s  s  s  s
--        k e         0  1  2  3  4
--          s         _  _  _  _  _
--          e         f  f  f  f  f
--          t         l  l  l  l  l
--                    a  a  a  a  a
--                    g  g  g  g  g

pat_0  :  0 1 0  ?0  ?0 ?0 ?0 ?0 ?0 ;
pat_1  :  1 1 0  ?0  ?0 ?0 ?0 ?0 ?0 ;
pat_2  :  0 1 0  ?0  ?0 ?0 ?0 ?0 ?0 ;
pat_3  :  1 0 0  ?0  ?1 ?0 ?0 ?0 ?0 ;
pat_4  :  0 0 0  ?0  ?1 ?0 ?0 ?0 ?0 ;
pat_5  :  1 0 1  ?0  ?1 ?0 ?0 ?0 ?0 ;
pat_6  :  0 0 1  ?0  ?1 ?0 ?0 ?0 ?0 ;
pat_7  :  1 0 1  ?0  ?0 ?1 ?0 ?0 ?0 ;
pat_8  :  0 0 1  ?0  ?0 ?1 ?0 ?0 ?0 ;
pat_9  :  1 0 1  ?0  ?0 ?0 ?1 ?0 ?0 ;
pat_10 :  0 0 1  ?0  ?0 ?0 ?1 ?0 ?0 ;
pat_10 :  1 0 1  ?0  ?0 ?0 ?0 ?1 ?0 ;
pat_11 :  0 0 1  ?0  ?0 ?0 ?0 ?1 ?0 ;
pat_12 :  1 0 1  ?1  ?0 ?0 ?0 ?0 ?1 ;
pat_13 :  0 0 1  ?1  ?0 ?0 ?0 ?0 ?1 ;
pat_14 :  1 0 1  ?1  ?0 ?0 ?0 ?0 ?1 ;
pat_15 :  0 0 1  ?1  ?0 ?0 ?0 ?0 ?1 ;
pat_16 :  1 1 1  ?0  ?0 ?0 ?0 ?0 ?0 ;
pat_17 :  0 1 1  ?0  ?0 ?0 ?0 ?0 ?0 ;
pat_18 :  1 0 1  ?0  ?0 ?1 ?0 ?0 ?0 ;
pat_19 :  0 0 1  ?0  ?0 ?1 ?0 ?0 ?0 ;

end;
