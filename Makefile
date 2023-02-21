NAME = push_swap
FILES = $(shell find . -name "*.c")
HEADERS = $(shell find . -name "*.h")
ARGS........................................ = -Wall -Wextra -Werror

$(NAME): $(FILES) $(HEADERS)
	gcc $(ARGS) -c $(FILES) $(HEADERS)

all:
	make
	gcc $(ARGS) -o $(NAME) *.o

clean:
	rm -rf *.o

fclean:
	make clean
	rm -rf *.gch
	rm -rf $(NAME)

re:
	make fclean
	make all

release:
	make re
	make clean
	rm -rf *.gch

leak:
	gcc -g -O1 $(FILES) $(HEADERS)
	valgrind --leak-check=yes --log-file=valgrind.rpt ./a.out 4 67 3 87 23
	cat valgrind.rpt

d:
	make re
	./$(NAME) 2 1 3 6 5 8

100:
	make re
	./$(NAME) 364641 312440 100831 225604 -180643 405465 388196 -376828 259795 -291819 386537 380706 89476 -434260 -312213 346311 -473720 -219201 -273912 -446646 295087 119364 -423065 45463 -119226 -315006 142144 498126 295561 -316862 150412 47391 6533 269719 148202 378155 -232994 203530 -429897 241972 -281722 348826 185300 20749 -44567 -95756 -293816 -378257 -498420 -2750 39790 428798 -279693 419482 -250216 396023 191577 -195609 -144713 -387236 -366277 -225776 -371330 -166161 51367 195121 140009 287729 356656 -205729 -19282 22654 -172584 -399078 78193 200743 54364 -151218 -222488 -191021 -291678 -499276 28674 465782 -312163 398987 -388152 -184669 -309657 125892 -154616 -167376 110827 -489716 -161641 -228728 -268727 202116 -7359 -243185

500:
	make re
	./$(NAME) 465593 -337005 6069 42912 249222 20015 179953 51969 -356645 -44363 -175047 -250811 -370682 -133199 -461107 -7352 228738 -403932 295850 -172013 294340 -94786 -32746 -420488 -321699 388145 -474651 -245644 -220335 -188024 -166889 42969 313818 -475631 432583 313312 359664 475131 381920 183387 478350 -124904 -446163 -310725 -390276 247983 49367 -25845 -397713 76821 -241248 229906 401738 397941 -141342 -280733 58294 68284 -428649 245125 383781 -414408 319957 442752 439065 273686 194206 -251541 -278298 221982 136104 -93775 -272383 -319839 484236 -135671 -10690 56427 -177357 -330369 279642 -79528 343695 -376653 -278599 294358 418716 479389 -491585 6871 -310536 376707 -437619 8880 -309506 62540 -94934 171178 251296 -227213 160546 317806 -324251 387768 -133407 -309055 478395 398141 -441434 153748 -410524 348334 408649 234164 -400461 -432416 -223185 345951 -342435 213473 -127014 31652 262305 432047 -147208 -148400 176882 175869 -258844 -370258 41207 194411 421134 331600 456201 148860 9676 164897 -460656 454022 397456 -236656 12275 22146 -413227 -358128 226845 -189195 154754 -12054 -81008 253798 -93487 -275835 -279382 275770 -142248 90404 -300127 -452222 -19975 -306857 353022 295284 33302 60545 -52797 60486 421827 -328403 -348754 98245 -91920 124893 -1776 -68466 -332567 -25577 -334010 342733 434635 204833 -328906 127010 -29848 -302252 -445998 24151 35792 -258087 234863 -149581 413872 -380824 165863 -415801 7408 -12500 227670 -134574 -39110 -247815 465469 89623 49887 -192804 -147414 -401781 304101 -447806 340249 -108007 443311 499283 89732 350327 43477 -16395 51960 -494326 -468121 -491560 170011 -148534 -470195 38713 -15010 236115 353465 375941 174376 337066 308352 157068 -45059 -452679 350032 -175353 136575 -442810 185332 306673 -418600 30892 305805 138863 -400553 132166 402530 128035 149452 438886 -168128 -126377 99667 -311102 120233 -369389 -222012 468724 148010 167973 -450234 244348 318633 287149 386700 -293937 98482 -121004 -41954 -404774 -64027 -132889 -281737 -341120 468299 -355587 -17875 -372447 -480803 264664 407036 -394465 398334 348851 -15741 -119410 -96468 490903 -62871 -344502 210884 25228 144477 -449134 217683 84465 -86806 26420 132882 -235337 -294925 -175803 -223522 -263266 74003 -48835 -74170 54025 -355969 158064 85293 26870 -332314 -117105 -75427 -260191 58825 461630 365846 -94830 199248 -272133 224035 121302 -262126 274126 428595 468741 -478963 -259355 -38942 -118692 317841 426093 -95808 -39404 -79020 -92689 480374 -285949 352904 453605 26545 166750 -598 -45754 471903 -193991 -310731 415712 81117 167133 301545 136559 -288728 335211 -139112 207832 491275 318455 -45737 27767 348082 263889 -256114 231870 462514 -30962 254324 -44112 175359 101820 -257965 -111262 -185176 307478 -78610 115650 434014 -307579 -479653 6258 184533 3831 -246308 79701 230579 264340 -46663 -218305 197814 145986 -250745 105151 -456113 85871 -366112 74870 427059 -360648 -232697 132176 95426 433664 -267366 -3745 -440895 322359 -244094 -30807 -470257 456776 31182 59658 398565 -77297 108464 316827 252125 138738 149327 144598 305535 25557 344053 331270 228970 251417 -464906 498485 -418492 441996 449825 196699 266813 186681 -423719 -471968 -471397 153960 -450735 204198 -30351 296267 -487296 -345178 -197931 -494619 -198187 -256614 447955 436148 157789 114049 386635 -482373 22863 -234796 -332365 -260905 106725 -319240 482013 95083 -295173 -321116 -475762 436426 -236389 -371765 386989 -29938 266867 118670 -183323 -250589 -274554 119797 -204389 -303929 322938 -379904 252745 62025 329709 35698 -454944 134242 264314 -273129 397049 139103 -235355 113819 -380298 147564 -206200 -66826 | wc -l

test:
	clear
	./$(NAME) 2 1 3 6 5 8 | wc -l
	./$(NAME) 4 67 3 87 23 | wc -l

n:
	clear
	norminette -R CheckForbiddenSourceHeader