# w3c-mvs
[W3C Markup Validation Service](http://validator.w3.org)$B$N7k2L$r=PNO$9$k(BRuby$B%W%m%0%i%`$G$9!#(B

## autocheck.rb
Web$B>e$NJ#?t$N%Z!<%8$N%P%j%G!<%H$r<+F0$G9T$$$^$9!#(B

### $B;H$$J}(B
1. $B0J2<$N=q<0$G%?%V6h@Z$j$N(BURL$B%j%9%H%U%!%$%k(B `url-list.txt` $B$r:n$j!"(B`autocheck.rb` $B$N$"$k%G%#%l%/%H%j$KG[CV$7$^$9!#(B

        #$B%3%a%s%H(B
        $B%?%$%H%k(B1	URL1
        $B%?%$%H%k(B2	URL2
        $B!D(B

2. $B%?!<%_%J%k$G(B `autocheck.rb` $B$N$"$k%G%#%l%/%H%j$^$G0\F0$7!"0J2<$r<B9T$7$^$9!#(B

        $ ruby autocheck.rb$B!J(BUTF-8$B4D6-!K(B
        $ ruby autocheck.rb | tee resut.txt$B!JI8=`=PNO$H%U%!%$%k$NN>J}$K=PNO!K(B
        $ ruby autocheck.rb > result.txt$B!JHs(BUTF-8$B4D6-!"%U%!%$%k$K=PNO!K(B

### $B=PNO(B
$BBEEv$G$J$$%Z!<%8$N0lMw$,(BInvalid$B@a$K=PNO$5$l$^$9!#$^$?!"(BHTTP$B%(%i!<$J$I$K$h$jBEEv@-$,H=Dj$G$-$J$+$C$?%Z!<%8$N0lMw$,(BCannot determined$B@a$K=PNO$5$l$^$9!#(B

### $B4{CN$NLdBj(B
$B8=:_$O=PNO$r(BUTF-8$B$G9T$C$F$$$k$?$a!"Hs(BUTF-8$B4D6-$N%?!<%_%J%k$G$OJ8;z2=$1$,5/$3$j$^$9!#$=$N>l9g$O%U%!%$%k$K=PNO$7$F$/$@$5$$!#(B
