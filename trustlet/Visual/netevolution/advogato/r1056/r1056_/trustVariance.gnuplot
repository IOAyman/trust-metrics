#!/usr/bin/env gnuplot
# Title: Trust Variance on time
# Date: Thu Dec 11 18:16:32 2008
# Network: Advogato
# >>> trustAverage( fromdate, todate, dpath, noObserver=False )

set title "Trust Variance on time"
set data style linespoint
set xlabel "date"
set ylabel "trust variance"
set xdata time
set timefmt "%Y-%m-%d"
set terminal png
set output "trustVariance.png"
plot "-" using 1:2 title ""
2000-02-25 0.022520584521
2000-07-18 0.0277533902134
2000-08-11 0.0280075001773
2000-09-28 0.0279579207471
2000-11-07 0.0282342976504
2001-02-13 0.0294418752326
2001-03-06 0.0293764357467
2001-03-23 0.0293706263259
2001-05-07 0.0306703127267
2001-06-08 0.0311792533017
2001-06-21 0.0311055767666
2001-07-04 0.0311897720803
2001-07-16 0.03189734468
2001-08-04 0.0318893408156
2001-08-22 0.0319766869536
2001-09-04 0.0320658372744
2001-09-15 0.0320323379248
2001-09-28 0.0320818379337
2001-10-09 0.0320764498383
2001-10-29 0.0319850608576
2001-11-12 0.0324594775882
2001-11-23 0.0324013695657
2001-12-10 0.032310895729
2001-12-26 0.0322354890372
2002-01-05 0.0322052621979
2002-01-19 0.0327146264041
2002-02-02 0.0326568439641
2002-02-12 0.0326314268042
2002-02-27 0.0325096913593
2002-03-18 0.0324719847158
2002-03-28 0.0324720621925
2002-04-08 0.0327015465953
2002-04-18 0.0326269295703
2002-05-01 0.0326697995947
2002-05-13 0.0326782697805
2002-05-24 0.0326509210238
2002-06-06 0.0325930160088
2002-06-21 0.0327810118344
2003-03-04 0.0340218748118
2003-03-24 0.0339802151332
2003-04-10 0.034058434653
2004-07-05 0.0350696585917
2004-10-28 0.0351113107882
2005-11-11 0.0347992350277
2006-02-11 0.0328936840646
2006-05-20 0.0327673421913
2006-10-01 0.03257060179
2006-11-07 0.035174324744
2006-12-01 0.0349875788793
2007-01-01 0.0349287088891
2007-02-01 0.0349491083883
2007-03-01 0.0349529375725
2007-04-01 0.0350533627333
2007-05-01 0.0350207482134
2007-06-06 0.0343780797446
2007-07-01 0.0342860354421
2007-08-01 0.0342865080942
2007-08-27 0.0337214305487
2007-10-13 0.0342400095862
2007-10-23 0.0342190841288
2007-11-02 0.0342003505414
2007-11-12 0.0342072375266
2007-11-22 0.0342041142187
2007-12-02 0.0341997402876
2007-12-12 0.0341976116827
2007-12-22 0.0342040262936
2008-01-01 0.0342034999995
2008-01-11 0.0342225595168
2008-01-21 0.0342103010391
2008-01-31 0.0342077931847
2008-02-10 0.0341973228871
2008-02-20 0.0341931455802
2008-03-01 0.0341939780402
2008-03-11 0.0341922291865
2008-03-21 0.0341789919597
2008-03-31 0.0341781566857
2008-04-10 0.0341747980982
2008-04-20 0.0341677727205
2008-04-30 0.0341533626077
2008-05-10 0.0341527265023
2008-05-20 0.0341522939976
2008-05-30 0.0341512790517
2008-06-09 0.0341704073239
2008-06-19 0.0341780124967
2008-06-29 0.0341895041538
2008-07-09 0.034181381335
2008-07-19 0.0341521973965
2008-07-29 0.0341527197718
2008-08-08 0.0341293904579
2008-08-18 0.0341297062998
2008-08-28 0.0341347997253
2008-09-07 0.0340938928564
2008-09-17 0.0340953988443
2008-09-27 0.034097323462
2008-10-07 0.0340586343716
2008-10-17 0.0340587656647
2008-10-27 0.0340595063023
2008-11-06 0.0340574930554
2008-11-16 0.0340576138772
e
