#glpsol --math opt_Z.mod

var X01; # vegetables
var X02; # fresh fruits
var X03; # dried fruits
var X04; # irrigated wheat
var X05; # irrigated corn
var X06; # irrigated hemp
var X07; # irrigated beans
var X08; # wheat
var X09; # associated wheat
var X10; # corn
var X11; # rye and wheat mixture
var X12; # barley
var X13; # fodder
var X14; # potatoes
var X15; # beans
var X16; # vetches
var X17; # lupines
var X18; # olives
var X19; # vines
var X20; # fallow
var X21; # pasture
var X22; # forest

## other variables ##
var X23;
var X24;
var X25;
var X26;
var X27;
var X28;
var X29;
var X30;
var X31;
var X32;
var X33;
var X34;
var X35;
var X36;
var X37;
var X38;
var X39;
var X40;
var X41;
var X42;
var X43;
var X44;
var X45;
var X46;
var X47;
var X48;
var X49;
var X50;
var X51;
var X52;
var X53;
var X54;
var X55;
var X56;
var X57;
var X58;
var X59;
var X60;
var X61;
var X62;
var X63;
var X64;
var X65;
var X66;
var X67;
var X68;
var X69;
var X70;
var X71;
var X72;
var X73;
var X74;
var X75;
var X76;
var X77;
var X78;
var X79;
var X80;
var X81;
var X82;
var X83;
var X84;
var X85;
var X86;
var X87;
var X88;
var X89;
var X90;
var X91;
var X92;
var X93;
var X94;
var X95;
var X96;
var X97;
var X98;
var X99;
var X100;
var X101;
var X102;
var X103;
var X104;
var X105;
var X106;
var X107;
var X108;
var X109;
var X110;
var X111;
var X112;
var X113;
var X114;
var X115;
var X116;
var X117;
var X118;
var X119;
var X120;
var X121;
var X122;
var X123;
var X124;
var X125;
var X126;
var X127;
var X128;
var X129;
var X130;
var X131;
var X132;
var X133;
var X134;
var X135;
var X136;
var X137;
var X138;
var X139;
var X140;
var X141;
var X142;
var X143;
var X144;
var X145;
var X146;
var X147;
var X148;
var X149;
var X150;
var X151;
var X152;
var X153;
var X154;

param Z :=5;
param M :=0.09165*6.51802362847002;
param D :=134.037344288403;
param P :=1-0.55*D/365;


#maximize Profit: -(X01 + X02 + X03 + X04 + X06 + X08 + X29 + X13 + X15 + X16 + X18 + X19 + X21 + X22); #RMU#
#maximize Profit: - (1044.6*X01+365.5*(X02+X03)+361.85*X04+360.38*X05+1513.17*X06+291.67*X07+365.5*X08+372.81*X09+361.85*X10+353.07*X11+351.61*X12+365.5*X13+557.75*X14+300.45*X15+277.78*X16+358.19*X17+593.57*X18+304.83*X19+79.68*(X22)+7.31*X21+(4.87*(X26-X100-X101)+3.79*(X27-X102-X103)+2.04*(X09-X104-X105)+2.09*(X28-X106-X107)+3.79*(X29-X108-X109)+3.02*X113+2.45*X115+1.89*X117+1.89*X119+1.70*X121+1.70*X123+1.39*X125+3.59*X133+4.34*(X136+X137)+12.09*(X139+X140+X141)+9.07*(X143+X144+X145)+6.05*(X147+X148+X149)+2.22*X19+1.45*X22)*7.31+2.98*P*M+0.42*M+0.61*Z+259.51*M+40.74*Z); #RPU#
maximize Profit: X19; #MSS#


#### restrictions for quality ####
subject to restriction01: X23 + X24 + X25 - X04 = 0;
subject to restriction02: X26 + X27 - X08 = 0;
subject to restriction03: X28 + X29 - X11 = 0;
subject to restriction031: X152 + X153 + X154 - X14 = 0;
subject to restriction04: X30 + X31 + X32 - X18 = 0;
subject to restriction05: X33 + X34 + X35 - X19 = 0;
subject to restriction06: X36 + X37 + X38 - X22 = 0;
subject to restriction07: X01 + X02 + X03 + 2*X23 + X26 + X09 + X152 + X154 + X15 + X33 + X36 + - 2055/12037*(X01 + X02 + X03 + X04 + X06 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X19 + X21 + X22) <= 0; # qualitat 1 #
subject to restriction08: 2*X24 + X27 + X10 + X29 + X13 + X153 + X34 + X37 - 3401/12037*(X01 + X02 + X03 + X04 + X06 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X19 + X21 + X22) <= 0; # qualitat 2 #

#### restrictions for irrigated fallow ###
subject to restriction09: X04 -X06 = 0;
subject to restriction10: X05 - 0.5*X04 = 0;
subject to restriction11: X07 - 0.5*X06 = 0;
subject to restriction12: X20 - X04 = 0;

#### restrictions for dry herbaceous fallow ###
subject to restriction13: X15 - 0.5*X26 = 0;
subject to restriction131: X152 - 0.5*X26 = 0;
subject to restriction14: X13 - 0.5*X27 = 0;
subject to restriction141: X153 - 0.5*X27 = 0;
subject to restriction15: X16 - X29 = 0;

#### restrictions for olive groves fallow ###
subject to restriction16: X09 - 0.5*X30 = 0;
subject to restriction17: X154 - 0.5*X30 = 0;
subject to restriction18: X10 - 0.5*X31 = 0;
subject to restriction19: X28 - 0.5*X31 = 0;
subject to restriction20: X12 - 0.5*X32 = 0;
subject to restriction21: X17 - 0.5*X32 = 0;

#### restrictions for general livestock feeding ### 
subject to restriction22: X39 + X40 + X41 = 1;
subject to restriction23: X42 + X43 + X44 - X01 = 0;
subject to restriction24: X45 + X46 + X47 + X48 - X12 <= 0;
subject to restriction25: X49 + X50 + X51 + X52 - 0.5*X23 <= 0;
subject to restriction26: X53 + X54 + X55 + X56 - 0.5*X24 <= 0;
subject to restriction27: X57 + X58 + X59 + X60 - 0.5*X25 <= 0;
subject to restriction28: X61 + X62 + X63 + X64 - X10 <= 0;
subject to restriction29: X65 + X66 + X67 - X13 <= 0;
subject to restriction30: X68 + X69 + X70 + X71 - 0.5*X23 <= 0;
subject to restriction31: X72 + X73 + X74 + X75 - 0.5*X24 <= 0;
subject to restriction32: X76 + X77 + X78 + X79 - 0.5*X25 <= 0;
subject to restriction33: X80 + X81 + X82 + X83 - X15 <= 0;
subject to restriction34: X84 + X85 + X86 - X16 <= 0;
subject to restriction35: X87 + X88 + X89 - X17 <= 0;
subject to restriction36: X90 + X91 - X21 = 0;
subject to restriction37: X92 + X93 - X22 <= 0;
subject to restriction38: X94 + X95 - X23 <= 0;
subject to restriction39: X96 + X97 - X24 <= 0;
subject to restriction40: X98 + X99 - X25 <= 0;
subject to restriction41: X100 + X101 - X26 <= 0;
subject to restriction42: X102 + X103 - X27 <= 0;
subject to restriction43: X104 + X105 - X09 <= 0;
subject to restriction44: X106 + X107 - X28 <= 0;
subject to restriction45: X108 + X109 - X29 <= 0;
subject to restriction46: X110 + X111 - X12 <= 0;
subject to restriction47: X112 + X113 - 0.5*X23 <= 0;
subject to restriction48: X114 + X115 - 0.5*X24 <= 0;
subject to restriction49: X116 + X117 - 0.5*X25 <= 0;
subject to restriction50: X118 + X119 - X15 <= 0;
subject to restriction51: X120 + X121 - X16 <= 0;
subject to restriction52: X122 + X123 - X17 <= 0;

#### restrictions for specific livestock feeding ###
subject to restriction54: 13530.28*X67 - 0.15*1481.85*Z <= 0; #pigs #
subject to restriction55: 1627.75*X22 + 13530.28*X67 + 4171.80*X30 +
2571.63*X31 + 1800.19*X32 + 1111.33*X33 + 873.19*X34 + 476.28*X35 +
97.07*Z*X39 + 4459.18*X42 + 4833.66*X48 + 16442.95*X52 + 13112.89*X56 +
9782.82*X60 + 6111.21*X64 - 1481.85*Z = 0; #pigs #
subject to restriction56: 77.66*Z*X40 + 2182.87*X43 + 4422.96*X45 +
15424.36*X49 + 12300.58*X53 + 9176.81*X57 + 5732.64*X61 + 9967.88*X68 +
7887.38*X72 + 5917.85*X76 + 6084.29*X80 + 4882.22*X84 + 5091.09*X87 - 381.85*Z
= 0; # hens and chikens #
subject to restriction57: 116.48*Z*X41 + 4548.36*X44 + 4896.84*X46 +
15278.85*X50 + 12184.54*X54 + 9090.23*X58 + 5678.56*X62 + 11693.09*X69 +
9252.51*X73 + 6942.09*X77 + 7137.34*X81 + 5717.02*X85 + 5972.24*X88 - 62.89*Z
= 0; # rabits #
subject to restriction58: 10761.32*X66 - 0.35*957.24*Z <= 0; # sheeps #
subject to restriction59: 13493*X90 + 5206.25*X92 + 10761.32*X66 - 957.24*Z =
0; # sheeps #
subject to restriction60: (9162.10*X91+3535.31*X93)*365/(19076.26*M) <= 365; # mules #
subject to restriction61: 10760.93*X65 - 0.45*19076.26*M <= 0; # mules #
subject to restriction62: 7485.30*X94 + 6303.43*X96 + 4727.57*X98 + 7091.35*X100 + 5515.62*X102 + 4581.98*X104 + 3045.95*X106 + 4188.85*X108 + 3301.68*X110 - 0.25*19076.26*M <= 0; # mules #
subject to restriction63: 9162*X91 + 3535.31*X93 + 10769.93*X65 + 5212.77*X47 + 16782.48*X51 + 13383.65*X55 + 9984.43*X59 + 6237.41*X63 + 11961.45*X70 + 9464.86*X74 + 7101.42*X78 + 7301.15*X82 + 5848.23*X86 + 6109.31*X89 + 7485.30*X94 + 6303.43*X96 + 4707.57*X98 + 7091.35*X100 + 5515.62*X102 + 4581.98*X104 + 3045.95*X106 + 4188.85*X108 + 3301.68*X110 + 8169.84*X112 + 6641.92*X114 + 5109.17*X116 + 5109.17*X118 + 4598.25*X120 + 4598.25*X122 - 19076.26*M = 0; # mules #
subject to restriction64: 2889*X95 + 2433*X97 + 1825*X99 + 2737*X101 + 2129*X103 + 1521*X105 + 1176*X107 + 1617*X109 + 1096*X111 + 2521*X23 + 2189*X24 + 1858*X25 + 783*X10 - 730*M -139.95*Z = 0; # stall bedding #

#### restrictions for general fertilitzation ###
subject to restriction65: X126 + X127 + X128 = 1;
subject to restriction66: X129 + X130 + X131 + X132 = 1;
subject to restriction67: X133 + X134 - X18 = 0;
subject to restriction68: X135 + X136 + X137 - X19 = 0;
subject to restriction69: X138 + X139 + X140 + X141 - X36 = 0;
subject to restriction70: X142 + X143 + X144 + X145 - X37 = 0;
subject to restriction71: X146 + X147 + X148 + X149 - X38 = 0;

#### restrictions for specific fertilitzation ###
subject to restriction73: 51*X01 + 8.35*X02 + 26.63*X03 - 4.42*X126*Z <= 0; # N crops and orchards #
subject to restriction74: 3.42*X01 - 2.07*X02 + 0.23*X03 - 1.98*X126*Z <= 0; # P crops and orchards #
subject to restriction75: 11.43*X01 -4.88*X02 + 2.97*X03 - 1.33*X126*Z <= 0; # K crops and orchards #
subject to restriction76: 90.43*X23 + 76.23*X24 + 59.30*X25 - 4.42*Z*X127 -
18.39*P*M*X129 - 2.60*M*X129 - 3.78*Z*X129 - 3.91*X136 <= 0; # N irrigation #
subject to restriction77: 10.82*X23 + 8.16*X24 + 5.06*X25 - 1.98*Z*X127 - 7.46*P*M*X129 - 0.57*M*X129 - 1.83*Z*X129 - 0.42*X136 <= 0; # P irrigtation #
subject to restriction78: 30.71*X23 + 22.58*X24 + 13.28*X25 - 1.33*Z*X127 - 21.82*P*M*X129 - 3.04*M*X129 - 3.17*Z*X129 - 6.08*X136 <= 0; # K irrigation #
subject to restriction79: 41.46*X26 + 30.56*X27 + 21.51*X29 + 24.67*X13 -
4.60*X15 - 0.96*X16 + 13.41*X152 + 9.69*X153- 10.51*X26 + 10.51*X100 +
10.51*X101 - 8.18*X27 + 8.18*X102 + 8.18*X103 - 6.21*X29 + 6.21*X108 +
6.21*X109 - 14.11*X113 - 11.46*X115 - 8.82*X117 - 8.82*X119 - 7.94*X121 -
4*X152 - 3*X153 - 4.42*Z*X128 - 18.39*P*M*X130 - 2.60*M*X130 - 3.78*Z*X130 -
17.40*X139 - 13.05*X143 - 8.70*X147 <= 0; # N dry cropland #
subject to restriction80: 6.31*X26 + 4.61*X27 + 3.21*X29 + 4.72*X13 + 3.65*X15
+ 2.29*X16 + 1.62*X152 + 1.34*X153 - 2.63*X26 + 2.63*X100 + 2.63*X101 -
2.04*X27 + 2.04*X102 + 2.04*X103 - 1.55*X29 + 1.55*X108 + 1.55*X109 -
2.81*X113 - 2.29*X115 - 1.76*X117 - 1.76*X119 - 1.58*X121 - 0.71*X152 -
0.54*X153 - 1.98*Z*X128 - 7.46*P*M*X130 - 0.57*M*X130 - 1.83*Z*X130 -
1.72*X139 - 1.29*X143 - 0.86*X147 <= 0; # P dry cropland #
subject to restriction81: 5.30*X26 + 0.64*X27 - 3.27*X29 + 14.91*X13 +
1.98*X15 + 3.16*X16 + 10.14*X152 - 1.58*X153 - 14.13*X26 + 14.13*X100 +
14.13*X101 - 11.13*X27 + 11.13*X102 + 11.13*X103 - 8.46*X29 + 8.46*X108 +
8.46*X109 - 15.06*X113 - 12.23*X115 - 9.41*X117 - 9.41*X119 - 8.57*X121 -
3.64*X152 - 2.73*X153 - 1.33*Z*X128 - 21.82*P*M*X130 - 3.04*M*X130 -
3.17*Z*X130 - 13.99*X139 - 10.49*X143 - 7*X147 <= 0; # K dry cropland #
subject to restriction82: 27.45*X09 + 14.88*X10 + 21.40*X28 + 18.79*X12 +
17.76*X154 + 2.64*X17 + 25.43*X30 + 21.36*X31 + 17.88*X32 - 5.84*X09 +
5.84*X104 + 5.84*X105 - 4.52*X28 + 4.52*X106 + 4.52*X107 - 3.07*X154 -
3.82*X123 - 12.10*X133 - 18.39*P*M*X131 - 2.60*M*X131 - 3.78*Z*X131 -
17.40*X140 - 13.05*X144 - 8.70*X148 <= 0; # N dry olives #
subject to restriction83: 3.71*X09 + 1.64*X10 + 2.79*X28 + 2.10*X12 + 0.76*X154 + 4.11*X17 + 3.10*X30 + 2.74*X31 + 2.44*X32 - 1.46*X09 + 1.46*X104 + 1.46*X105 - 1.13*X28 + 1.13*X106 + 1.13*X107 - 0.55*X154 - 0.46*X123 - 2.56*X133 - 7.46*P*M*X131 - 0.57*M*X131 - 1.83*Z*X131 - 1.72*X140 - 1.29*X144 - 0.86*X148 <= 0; # P dry olives #
subject to restriction84: 11.04*X09 + 3.94*X10 + 8.42*X28 + 10.49*X12 - 5.21*X154 + 6.14*X17 - 4.39*X30 - 5.48*X31 - 6.35*X32 - 7.95*X09 + 7.95*X104 + 7.95*X105 - 6.15*X28 + 6.15*X106 + 6.15*X107 - 2.80*X154 - 1.19*X123 - 6.54*X133 - 21.82*P*M*X131 - 3.04*M*X131 - 3.17*Z*X131 - 13.99*X140 - 10.49*X144 - 7*X148 <= 0; # K dry olives #
subject to restriction85: 11.28*X33 + 8.55*X34 + 4.01*X35 - 18.39*P*M*X132 -
2.60*M*X132 - 3.78*Z*X132 - 3.91*X137 - 17.40*X141 - 13.05*X145 - 8.70*X149 <=
0; # N vineyards #
subject to restriction86: 2*X33 + 1.67*X34 + 1.13*X35 - 7.46*P*M*X132 -
0.57*M*X132 - 1.83*Z*X132 - 0.42*X137 - 1.72*X141 - 1.29*X145 - 0.86*X149 <=
0; # P vineyards #
subject to restriction861: 1.17*X33 - 21.82*P*M*X132 - 3.04*M*X132 -
3.17*Z*X132 - 6.08*X137 - 13.99*X141 - 10.49*X145 - 7*X149 <= 0; # K vineyards #

#### restrictions for feedings and firewood ###
#subject to restriction87: 1242*X23 + 1023*X24 + 731*X25 + 1169*X26 + 877*X27 + 585*X09 + 424*X28 + 636*X29 - 146.56*Z >= 0;
#subject to restriction88: 273*X30 + 202*X31 + 141*X32 - 12.46*Z >= 0;
subject to restriction89: 2142*X33 + 1683*X34 + 918*X35 - 29.37*Z >= 0;
#subject to restriction90: 851.62*X71 + 673.87*X75 + 505.60*X79 + 319.82*X83 - 8.70*Z >= 0;
subject to restriction91: 5069.59*X01 - 63.06*Z = 0;
#subject to restriction92: 1679.28*X152 + 1214.75*X153 + 1250.5*X154 - 116.04*Z >= 0;
subject to restriction93: 4147.5*X02 - 10.09*Z = 0;
subject to restriction94: 525*X03 - 5.05*Z = 0;
subject to restriction95: 2475*X02 + 2847*X03 + 1997*X134 + 1627.73*X135 + 5438*X138 + 4078*X142 + 2719*X146  - 569.4*Z = 0;
subject to restriction96: 1627.73*X135 - 0.1*569.4*Z <= 0;


### restrictions for labor (human and livestock) ###

#subject to restriction97: 6.1*X01 + 18.2*X06 + 9.2*(X07 + X15 + X16 + X17) +
5.2*X13 + 6.8*X18 + 2.96*M + 0.46*Z - 7.55*Z <= 0; # january #
#subject to restriction98: 6.1*X01 + 3.3*(X02 + X03) + 4.9*X04 + 4.2*X05 +
9.1*(X07 + X15 + X16 + X17) + 4.9*X08 + 5*X09 + 4.2*X10 + 6.2*X11 + 2.1*X12 +
5.2*X13 + 2.96*M + 0.46*Z + 0.03*Z*X126 + 0.06*Z*X127 + 0.41*P*M*X129 +
0.06*M*X129 + 0.08*Z*X129 + 4.34*X136- 8.37*Z <= 0; # february #
#subject to restriction99: 8.5*X01 + 8.7*X04 + 7.3*X05 + 26.1*X06 + 8.8*X08 +
9*X10 + 7.3*X10 + 9.7*X11 + 4.2*X12 + 5.7*X13 + 14.9*X14 + 14.9*X18 + 5.1*X19
+ 2.96*M + 0.46*Z + 28.36*X88 + 12.15*X89 + 0.03*Z*X128 + 0.205*P*M*X130 +
0.03*M*X130 + 0.04*Z*X130 + 12.09*X139 + 9.07*X143 + 6.05*X147- 9.45*Z <= 0; #
march #
#subject to restriction100: 13.6*X01 + 2.4*X04 + 1*X05 + 5.3*X06 + 9.1*(X07 +
X15 + X16 + X17) + 2.5*X08 + 2.5*X09 + 1*X10 + 4.2*X11 + 2.1*X12 + 14.9*X18 +
13.1*X19 + 2.96*M + 0.46*Z - 10.60*Z <= 0; # april #
#subject to restriction101: 15.3*X01 + 9.1*X05 + 3.3*X06 + 9.1*X10 + 8.6*X13 +
6.4*X14 + 12.2*X18 + 4.7*X19 + 2.96*M + 0.46*Z + 0.41*P*M*X132 + 0.06*M*X132 +
0.08*Z*X132 + 3.67*X19 + 4.34*X137 + 12.09*X141 + 9.07*X145 + 6.05*X149 -
11.57*Z <= 0; # may #
#subject to restriction102: 15.3*X01 + 1.9*(X02 + X03) + 4.8*X04 + 7.2*X05 +
3.3*X06 + 10.6*(X07 + X15 + X16 + X17) + 4.8*X08 + 4.9*X09 + 7.2*X10 + 4.2*X11
+ 4.7*X12 + 4.4*X13 + 6.4*X14 + 5.4*X18 + 5*X19 + 2.96*M + 0.46*Z - 12.05*Z <=
0; # june #
#subject to restriction103: 18.8*X01 + 1.9*(X02 + X03) + 14.1*X04 + 3.3*X06 +
4.8*(X07 + X15 + X16 + X17) + 14.2*X08 + 14.5*X09 + 9.6*X11 + 14.3*X12 +
7.4*X13 + 0.6*X19 + 2.96*M + 0.46*Z - 11.82*Z <= 0; # july #
#subject to restriction104: 18.8*X01 + 5.3*(X02 + X03) + 3.9*X04 + 4.4*X05 +
3.3*X06 + 3.9*X08 + 4*X09 + 4.4*X10 + 3.4*X11 + 14.7*X12 + 5.9*X13 + 2.96*M +
0.46*Z + 0.03*Z*X126 + 0.41*P*M*X131 + 0.06*M*X131 + 0.08*Z*X131 + 2.04*(X09 -
X104 - X105) + 2.09*(X28 - X106 - X107) + 1.70*X123 + 1.39*X154 + 3.59*X133 +
12.09*X140 + 9.07*X144 + 6.05*X148 - 10.96*Z <= 0; # august #
#subject to restriction105: 17*X01 + 5.3*(X02 + X03) + 1.9*X04 + 1.9*X05 +
14.4*X06 + 12.8*(X07 + X15 + X16 + X17) + 2*X08 + 2*X09 + 1.9*X10 + 2.9*X11 +
3*X12 + 3.9*X13 + 35.5*X14 + 1.8*X19 + 2.96*M + 0.46*Z + 0.03*Z*X128 +
0.205*P*M*X130 + 0.03*M*X130 + 0.04*Z*X130 + 4.87*(X26 - X100 - X101) +
3.79*(X27 - X102 - X103) + 3.79*(X29 - X108 - X109) + 3.02*X113 + 2.45*X115 +
1.89*X117 + 1.89*X119 + 1.70*X121 + 1.81*X152 + 1.36*X153- 9.85*Z <= 0; #
september #
#subject to restriction106: 10*X01 + 5.3*X04 + 8.3*X05 + 13.8*X06 + 5.4*X08 +
5.5*X09 + 8.4*X10 + 4.7*X11 + 2.5*X12 + 3.9*X13 + 10.6*X14 + 12*X19 + 2.96*M +
0.46*Z - 8.70*Z <= 0; # october #
#subject to restriction107: 6.8*X01 + 3.4*X04 + 40.1*X06 + 8*(X07 + X15 + X16
+ X17) + 3.4*X08 + 3.5*X09 + 3.5*X11 + 0.4*X12 + 5.2*X14 + 1.1*X19 + 2.96*M +
0.46*Z - 7.74*Z <= 0; # november #
#subject to restriction108: 6.1*X01 + 8.7*X05 + 62.6*X06 + 1.5*(X07 + X15 +
X16 + X17) + 8.8*X10 + 27.1*X18 + 2.96*M + 0.46*Z - 7.28*Z <= 0; # december #
#subject to restriction109: 22.9*X01 + 8.9*X02 + 8.9*X03 + 13.4*X04 + 8.3*X05
+ 22.9*X06 + 4.4*X07 + 13.4*X08 + 14*X09 + 8.3*X10 + 14*X11 + 14*X12 + 5.7*X13
+ 5.5*X14 + 4.4*X15 + 5.7*X16 + 14.6*X17 + 8.9*X18 + 4.2*X19 - 220*M <= 0; #
livestock #

### restrictions alternatives ###
subject to restriction110: X04 + X06 - 1.30/100*(X01 + X02 + X03 + X04 + X06 +
X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X19 + X21 + X22)
<= 0; #irrigation limitation#
subject to restriction111: X01 + X02 + X03 + X04 + X06 + X08 + X09 + X10 + X11
+ X12 + X13 + X14 + X15 + X16 + X17 + X19 + X21 + X22 - 1.52*Z = 0; # MSS surface limitation #
subject to restriction112: 104.9 + 21.84*Z - 1.625 + 5.11*(X01 + X02 + X03 +
X04 + X06) + 9.94*(X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17)
+ 5.48*X19 + 2.95*(X21+X22) + 1.7*M + 0.1*Z - (5069.59*X01 - 63.06*Z)*1.06 - (
1250.5*X154 + 1679.28*X152 + 1214.75*X153 - 116.04*Z)*0.11 - (1242*X23 +
1023*X24 + 731*X25 + 1169*X26 + 877*X27 + 585*X09 + 424*X28 + 636*X29 -
118.30*Z)*0.31 - (1348*(0.5*X23 - X49 - X50 - X51 - X52) + 1075*(0.5*X24 - X53
- X54 - X55 - X56) + 802*(0.5*X25 - X57 - X58 - X59 - X60) + 501*(X10 - X61 -
X62 - X63 - X64))*0.29 - (1213*X23 + 1104*X24 + 996*X25)*0.9625 -
(1078*(0.5*X23 - X68 - X69 - X70 - X71) + 853*(0.5*X24 - X72 - X73 - X74 -
X75) + 640*(0.5*X25 - X76 - X77 - X78 - X79) + 658*(X15 - X80 - X81 - X82 -
X83))*0.42 - 439*(X12 - X45 - X46 - X47 - X48)*0.20 - 6754*0.28*(X13 - X65 -
X66 - X67)*0.08 - 560*(X16 - X84 - X85 - X86)*0.15 - 585*(X17 - X87 - X88 -
X89)*0.15 - (273*X30 + 202*X31 + 141*X32 - 12.42*Z)*1.24 - (2142*X33 +
1683*X34 + 918*X35 - 29.37*Z)*0.12 - 1627.73*(X19 - X135 - X136 - X137)*0.01
<= 0; # economic restriction #
#subject to restriction113: X119 = 0;
#subject to restriction114: X120 = 0;
#subject to restriction115: X121 = 0;
#subject to restriction116: X122 = 0;
#subject to restriction117: 104.9 + 21.84*Z - 1.625 + 5.11*(X01 + X02 + X03 +
X04 + X06) + 9.94*(X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17)
+ 5.48*X19 + 2.95*(X21+X22) + 1.7*M + 0.1*Z  - (2142*X33 + 1683*X34 + 918*X35
- 29.37*Z)*0.12 - 1627.73*(X19 - X135 - X136 - X137)*0.01 <= 0; #economic
  restriction minimum vineyard#
#subject to restriction118: M - 0.1011*(X01 + X02 + X03 + X04 + X06 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19) = 0; 
#subject to restriction119: X01 + X02 + X03 = 0; #no humans limitation#
#subject to restriction120: X19 - 48.72/100*(X01 + X02 + X03 + X04 + X06 + X08
+ X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X21 + X22)
>= 0; #limitation for vineyard#
#subject to restriction123: M - 1 = 0;


### limits ###
subject to X01_limit: 0 <= X01;
subject to X02_limit: 0 <= X02;
subject to X03_limit: 0 <= X03;
subject to X04_limit: 0 <= X04;
subject to X05_limit: 0 <= X05;
subject to X06_limit: 0 <= X06;
subject to X07_limit: 0 <= X07;
subject to X08_limit: 0 <= X08;
subject to X09_limit: 0 <= X09;
subject to X10_limit: 0 <= X10;
subject to X11_limit: 0 <= X11;
subject to X12_limit: 0 <= X12;
subject to X13_limit: 0 <= X13;
subject to X14_limit: 0 <= X14;
subject to X15_limit: 0 <= X15;
subject to X16_limit: 0 <= X16;
subject to X17_limit: 0 <= X17;
subject to X18_limit: 0 <= X18;
subject to X19_limit: 0 <= X19;
subject to X20_limit: 0 <= X20;
subject to X21_limit: 0 <= X21;
subject to X22_limit: 0 <= X22;
subject to X23_limit: 0 <= X23;
subject to X24_limit: 0 <= X24;
subject to X25_limit: 0 <= X25;
subject to X26_limit: 0 <= X26;
subject to X27_limit: 0 <= X27;
subject to X28_limit: 0 <= X28;
subject to X29_limit: 0 <= X29;
subject to X30_limit: 0 <= X30;
subject to X31_limit: 0 <= X31;
subject to X32_limit: 0 <= X32;
subject to X33_limit: 0 <= X33;
subject to X34_limit: 0 <= X34;
subject to X35_limit: 0 <= X35;
subject to X36_limit: 0 <= X36;
subject to X37_limit: 0 <= X37;
subject to X38_limit: 0 <= X38;
subject to X39_limit: 0 <= X39;
subject to X40_limit: 0 <= X40;
subject to X41_limit: 0 <= X41;
subject to X42_limit: 0 <= X42;
subject to X43_limit: 0 <= X43;
subject to X44_limit: 0 <= X44;
subject to X45_limit: 0 <= X45;
subject to X46_limit: 0 <= X46;
subject to X47_limit: 0 <= X47;
subject to X48_limit: 0 <= X48;
subject to X49_limit: 0 <= X49;
subject to X50_limit: 0 <= X50;
subject to X51_limit: 0 <= X51;
subject to X52_limit: 0 <= X52;
subject to X53_limit: 0 <= X53;
subject to X54_limit: 0 <= X54;
subject to X55_limit: 0 <= X55;
subject to X56_limit: 0 <= X56;
subject to X57_limit: 0 <= X57;
subject to X58_limit: 0 <= X58;
subject to X59_limit: 0 <= X59;
subject to X60_limit: 0 <= X60;
subject to X61_limit: 0 <= X61;
subject to X62_limit: 0 <= X62;
subject to X63_limit: 0 <= X63;
subject to X64_limit: 0 <= X64;
subject to X65_limit: 0 <= X65;
subject to X66_limit: 0 <= X66;
subject to X67_limit: 0 <= X67;
subject to X68_limit: 0 <= X68;
subject to X69_limit: 0 <= X69;
subject to X70_limit: 0 <= X70;
subject to X71_limit: 0 <= X71;
subject to X72_limit: 0 <= X72;
subject to X73_limit: 0 <= X73;
subject to X74_limit: 0 <= X74;
subject to X75_limit: 0 <= X75;
subject to X76_limit: 0 <= X76;
subject to X77_limit: 0 <= X77;
subject to X78_limit: 0 <= X78;
subject to X79_limit: 0 <= X79;
subject to X80_limit: 0 <= X80;
subject to X81_limit: 0 <= X81;
subject to X82_limit: 0 <= X82;
subject to X83_limit: 0 <= X83;
subject to X84_limit: 0 <= X84;
subject to X85_limit: 0 <= X85;
subject to X86_limit: 0 <= X86;
subject to X87_limit: 0 <= X87;
subject to X88_limit: 0 <= X88;
subject to X89_limit: 0 <= X89;
subject to X90_limit: 0 <= X90;
subject to X91_limit: 0 <= X91;
subject to X92_limit: 0 <= X92;
subject to X93_limit: 0 <= X93;
subject to X94_limit: 0 <= X94;
subject to X95_limit: 0 <= X95;
subject to X96_limit: 0 <= X96;
subject to X97_limit: 0 <= X97;
subject to X98_limit: 0 <= X98;
subject to X99_limit: 0 <= X99;
subject to X100_limit: 0 <= X100;
subject to X101_limit: 0 <= X101;
subject to X102_limit: 0 <= X102;
subject to X103_limit: 0 <= X103;
subject to X104_limit: 0 <= X104;
subject to X105_limit: 0 <= X105;
subject to X106_limit: 0 <= X106;
subject to X107_limit: 0 <= X107;
subject to X108_limit: 0 <= X108;
subject to X109_limit: 0 <= X109;
subject to X110_limit: 0 <= X110;
subject to X111_limit: 0 <= X111;
subject to X112_limit: 0 <= X112;
subject to X113_limit: 0 <= X113;
subject to X114_limit: 0 <= X114;
subject to X115_limit: 0 <= X115;
subject to X116_limit: 0 <= X116;
subject to X117_limit: 0 <= X117;
subject to X118_limit: 0 <= X118;
subject to X119_limit: 0 <= X119;
subject to X120_limit: 0 <= X120;
subject to X121_limit: 0 <= X121;
subject to X122_limit: 0 <= X122;
subject to X123_limit: 0 <= X123;
subject to X124_limit: 0 <= X124;
subject to X125_limit: 0 <= X125;
subject to X126_limit: 0 <= X126;
subject to X127_limit: 0 <= X127;
subject to X128_limit: 0 <= X128;
subject to X129_limit: 0 <= X129;
subject to X130_limit: 0 <= X130;
subject to X131_limit: 0 <= X131;
subject to X132_limit: 0 <= X132;
subject to X133_limit: 0 <= X133;
subject to X134_limit: 0 <= X134;
subject to X135_limit: 0 <= X135;
subject to X136_limit: 0 <= X136;
subject to X137_limit: 0 <= X137;
subject to X138_limit: 0 <= X138;
subject to X139_limit: 0 <= X139;
subject to X140_limit: 0 <= X140;
subject to X141_limit: 0 <= X141;
subject to X142_limit: 0 <= X142;
subject to X143_limit: 0 <= X143;
subject to X144_limit: 0 <= X144;
subject to X145_limit: 0 <= X145;
subject to X146_limit: 0 <= X146;
subject to X147_limit: 0 <= X147;
subject to X148_limit: 0 <= X148;
subject to X149_limit: 0 <= X149;
subject to X150_limit: 0 <= X150;
subject to X151_limit: 0 <= X151;
subject to X152_limit: 0 <= X152;
subject to X153_limit: 0 <= X153;
subject to X154_limit: 0 <= X154;

solve;

display
X01, X02, X03, X04, X05, X06, X07, X08, X09, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20, X21, X22, X23, X24, X25, X26, X27, X28, X29, X30, X31, X32, X33, X34, X35, X36, X37, X38, X39, X40, X41, X42, X43, X44, X45, X46, X47, X48, X49, X50, X51, X52, X53, X54, X55, X56, X57, X58, X59, X60, X61, X62, X63, X64, X65, X66, X67, X68, X69, X70, X71, X72, X73, X74, X75, X76, X77, X78, X79, X80, X81, X82, X83, X84, X85, X86, X87, X88, X89, X90, X91, X92, X93, X94, X95, X96, X97, X98, X99, X100, X101, X102, X103, X104, X105, X106, X107, X108, X109, X110, X111, X112, X113, X114, X115, X116, X117, X118, X119, X120, X121, X122, X123, X124, X125, X126, X127, X128, X129, X130, X131, X132, X133, X134, X135, X136, X137, X138, X139, X140, X141, X142, X143, X144, X145, X146, X147, X148, X149, X150, X151, X152, X153, X154, M, P, D, 
X01 + X02 + X03 + X04 + X06 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X19 + X21 + X22, 
#UB#
33810*X01+2347*X02+4380.1*X03+8998.6*X23+7577.8*X24+5683.3*X25+5306*X23+4244.8*X24+3183.6*X25+10659.7*X23+9771.4*X24+8883.1*X25+12986.4*X23+10551.35*X24+8116.45*X25+8525*X26+6630.5*X27+4736.1*X09+3976.9*X10+3652*X28+5021.6*X29+3003.8*X12+5039.9*X13+6455.3*X152+4841.3*X153+4965.6*X154+16232.9*X15+13958.7*X16+13958.7*X17+1588.6*X30+1175.3*X31+820.5*X32+18407.9*X33+18212.8*X34+17887.6*X35+5039.9*X21+54208*X36+38717*X37+23226*X38,
# FFP available for humans # 
8474.95*X01+16039.8*X02+29143.53*X02+29875*X03+33591.75*X03+19546.60*X23+16099.97*X24+11504.48*X25+19662.24*X23+17895.40*X24+16274.44*X25+16493.4*(0.5*X23-X68-X69-X70)+13142.7*(0.5*X24-X72-X73-X74)+9792*(0.5*X25-X76-X77-X78)+18397.72*X26+13802.23*X27+9206.73*X09+6599.98*X28+9899.98*X29+7569.41*X152+5473.78*X153+5636.4*X154+10067.4*(X15-X80-X81-X82)+10838.1*X30+8019.4*X31+5597.7*X32+27993.67*X134+6226.07*X33+4891.85*X34+2671.06*X35+27151.08*(X19-X136-X137)+67431.2*(X36-X139-X140-X141)+50567.2*(X37-X143-X144-X145)+33715.6*(X38-X147-X148-X149),
# FFP available for livestock # 
46465.72*(X23-X94-X95)+39129.11*(X24-X96-X97)+29346.43*(X25-X98-X99)+21446.68*(0.5*X23-X49-X50-X51-X52)+17103.25*(0.5*X24-X53-X54-X55-X56)+12759.82*(0.5*X25-X57-X58-X59-X60)+23057.55*(0.5*X23-X112-X113)+18734*(0.5*X24-X114-X115)+14410.56*(0.5*X25-X116-X117)+41898*(X26-X100-X101)+32590.73*(X27-X102-X103)+23278.88*(X09-X104-X105)+7970.91*(X10-X61-X62-X63-X64)+18310.29*(X28-X106-X107)+25178.01*(X29-X108-X109)+6871.23*(X12-X45-X46-X47-X48)+17148.33*(X12-X110-X111)+34419.91*(X13-X65-X66-X67)+14410.56*(X15-X118-X119)+9285.19*(X16-X84-X85-X86)+12970.32*(X16-X120-X121)+9682.63*(X17-X87-X88-X89)+12970.32*(X17-X122-X123),
# FFP #
8474.95*X01+16039.8*X02+29143.53*X02+29875*X03+33591.75*X03+19546.60*X23+16099.97*X24+11504.48*X25+19662.24*X23+17895.40*X24+16274.44*X25+16493.4*(0.5*X23-X68-X69-X70)+13142.7*(0.5*X24-X72-X73-X74)+9792*(0.5*X25-X76-X77-X78)+18397.72*X26+13802.23*X27+9206.73*X09+6599.98*X28+9899.98*X29+7569.41*X152+5473.78*X153+5636.4*X154+10067.4*(X15-X80-X81-X82)+10838.1*X30+8019.4*X31+5597.7*X32+27993.67*X134+6226.07*X33+4891.85*X34+2671.06*X35+27151.08*(X19-X136-X137)+67431.2*(X36-X139-X140-X141)+50567.2*(X37-X143-X144-X145)+33715.6*(X38-X147-X148-X149)+46465.72*(X23-X94-X95)+39129.11*(X24-X96-X97)+29346.43*(X25-X98-X99)+21446.68*(0.5*X23-X49-X50-X51-X52)+17103.25*(0.5*X24-X53-X54-X55-X56)+12759.82*(0.5*X25-X57-X58-X59-X60)+23057.55*(0.5*X23-X112-X113)+18734*(0.5*X24-X114-X115)+14410.56*(0.5*X25-X116-X117)+41898*(X26-X100-X101)+32590.73*(X27-X102-X103)+23278.88*(X09-X104-X105)+7970.91*(X10-X61-X62-X63-X64)+18310.29*(X28-X106-X107)+25178.01*(X29-X108-X109)+6871.23*(X12-X45-X46-X47-X48)+17148.33*(X12-X110-X111)+34419.91*(X13-X65-X66-X67)+14410.56*(X15-X118-X119)+9285.19*(X16-X84-X85-X86)+12970.32*(X16-X120-X121)+9682.63*(X17-X87-X88-X89)+12970.32*(X17-X122-X123),
# LFP #
510.73*Z,
# FP #
8474.95*X01+16039.8*X02+29143.53*X02+29875*X03+33591.75*X03+19546.60*X23+16099.97*X24+11504.48*X25+19662.24*X23+17895.40*X24+16274.44*X25+16493.4*(0.5*X23-X68-X69-X70)+13142.7*(0.5*X24-X72-X73-X74)+9792*(0.5*X25-X76-X77-X78)+18397.72*X26+13802.23*X27+9206.73*X09+6599.98*X28+9899.98*X29+7569.41*X152+5473.78*X153+5636.4*X154+10067.4*(X15-X80-X81-X82)+10838.1*X30+8019.4*X31+5597.7*X32+27993.67*X134+6226.07*X33+4891.85*X34+2671.06*X35+27151.08*(X19-X136-X137)+67431.2*(X36-X139-X140-X141)+50567.2*(X37-X143-X144-X145)+33715.6*(X38-X147-X148-X149)+46465.72*(X23-X94-X95)+39129.11*(X24-X96-X97)+29346.43*(X25-X98-X99)+21446.68*(0.5*X23-X49-X50-X51-X52)+17103.25*(0.5*X24-X53-X54-X55-X56)+12759.82*(0.5*X25-X57-X58-X59-X60)+23057.55*(0.5*X23-X112-X113)+18734*(0.5*X24-X114-X115)+14410.56*(0.5*X25-X116-X117)+41898*(X26-X100-X101)+32590.73*(X27-X102-X103)+23278.88*(X09-X104-X105)+7970.91*(X10-X61-X62-X63-X64)+18310.29*(X28-X106-X107)+25178.01*(X29-X108-X109)+6871.23*(X12-X45-X46-X47-X48)+17148.33*(X12-X110-X111)+34419.91*(X13-X65-X66-X67)+14410.56*(X15-X118-X119)+9285.19*(X16-X84-X85-X86)+12970.32*(X16-X120-X121)+9682.63*(X17-X87-X88-X89)+12970.32*(X17-X122-X123)+510.73*Z,
# EXCEDENT #
8474.95*X01+16039.8*X02+29143.53*X02+29875*X03+33591.75*X03+19546.60*X23+16099.97*X24+11504.48*X25+19662.24*X23+17895.40*X24+16274.44*X25+16493.4*(0.5*X23-X68-X69-X70)+13142.7*(0.5*X24-X72-X73-X74)+9792*(0.5*X25-X76-X77-X78)+18397.72*X26+13802.23*X27+9206.73*X09+6599.98*X28+9899.98*X29+7569.41*X152+5473.78*X153+5636.4*X154+10067.4*(X15-X80-X81-X82)+10838.1*X30+8019.4*X31+5597.7*X32+27993.67*X134+6226.07*X33+4891.85*X34+2671.06*X35+27151.08*(X19-X136-X137)+67431.2*(X36-X139-X140-X141)+50567.2*(X37-X143-X144-X145)+33715.6*(X38-X147-X148-X149)+46465.72*(X23-X94-X95)+39129.11*(X24-X96-X97)+29346.43*(X25-X98-X99)+21446.68*(0.5*X23-X49-X50-X51-X52)+17103.25*(0.5*X24-X53-X54-X55-X56)+12759.82*(0.5*X25-X57-X58-X59-X60)+23057.55*(0.5*X23-X112-X113)+18734*(0.5*X24-X114-X115)+14410.56*(0.5*X25-X116-X117)+41898*(X26-X100-X101)+32590.73*(X27-X102-X103)+23278.88*(X09-X104-X105)+7970.91*(X10-X61-X62-X63-X64)+18310.29*(X28-X106-X107)+25178.01*(X29-X108-X109)+6871.23*(X12-X45-X46-X47-X48)+17148.33*(X12-X110-X111)+34419.91*(X13-X65-X66-X67)+14410.56*(X15-X118-X119)+9285.19*(X16-X84-X85-X86)+12970.32*(X16-X120-X121)+9682.63*(X17-X87-X88-X89)+12970.32*(X17-X122-X123)+510.73*Z-4218.1*Z-569.4*Z*(67431.2*X138+50567.2*X142+33715.6*X146+29205*X02+33594.6*X03+18084.08*X135+27718.36*X134)/(5438*X138+4078*X142+2719*X146+2475*X02+2847*X03+1627.73*X135+1997*X134),
# FBR #
2828.20*X01+2297.75*X04+270.47*X05+1523.70*X06+1392.3*X07+23057.44*X113+18734*X115+14410.56*X117+2297.75*X08+2297.75*X09+175.01*X10+2194.81*X11+1377.38*X12+77.7*X13+805.73*X14+1468.22*X152+1101.17*X153+1129.39*X154+1129.39*X125+1086.3*X15+14410.56*X119+1606.32*X16+12970.32*X121+1208.88*X17+12970.32*X123+27993.67*X133+9355.13*X19+27151.08*(X136+X137)+67431.2*(X139+X140+X141)+50567.2*(X143+X144+X145)+33715.6*(X147+X148+X149),
# LBR #
18981.19*X01+46465.72*(X94+X95)+39129.11*(X96+X97)+29346.43*(X98+X99)+16445.21*X23+13156.01*X24+9867.6*X25+21446.68*(X49+X50+X51+X52)+17103.25*(X53+X54+X55+X56)+12759.82*(X57+X58+X59+X60)+23397.26*X23+21447.36*X24+19497.46*X25+16493.4*(X68+X69+X70)+13142.7*(X72+X73+X74)+9792*(X76+X77+X78)+23057.44*X112+18734*X115+14410.56*X116+41898*(X100+X101)+32590.73*(X102+X103)+23278.88*(X104+X105)+12331.55*X10+7970.91*(X61+X62+X63+X64)+18310.29*(X106+X107)+25178.01*(X108+X109)+6871.23*(X45+X46+X47+X48)+17148.33*(X110+X111)+34419.91*(X65+X66+X67)+10067.4*(X80+X81+X82)+14410.56*X118+9285.19*(X84+X85+X86)+12970.32*X120+9682.63*(X87+X88+X89)+12970.32*X122+11250.08*X30+8253.26*X31+5809.91*X32+15908.64*X30+11784.96*X31+8248.68*X32+8076.36*X33+6345.14*X34+3461.55*X35+26997.48*X21+3737.6*X22+10417.32*X22,
# BR #
2828.20*X01+2297.75*X04+270.47*X05+1523.70*X06+1392.3*X07+23057.44*X113+18734*X115+14410.56*X117+2297.75*X08+2297.75*X09+175.01*X10+2194.81*X11+1377.38*X12+77.7*X13+805.73*X14+1468.22*X152+1101.17*X153+1129.39*X154+1129.39*X125+1086.3*X15+14410.56*X119+1606.32*X16+12970.32*X121+1208.88*X17+12970.32*X123+27993.67*X133+9355.13*X19+27151.08*(X136+X137)+67431.2*(X139+X140+X141)+50567.2*(X143+X144+X145)+33715.6*(X147+X148+X149)+18981.19*X01+46465.72*(X94+X95)+39129.11*(X96+X97)+29346.43*(X98+X99)+16445.21*X23+13156.01*X24+9867.6*X25+21446.68*(X49+X50+X51+X52)+17103.25*(X53+X54+X55+X56)+12759.82*(X57+X58+X59+X60)+23397.26*X23+21447.36*X24+19497.46*X25+16493.4*(X68+X69+X70)+13142.7*(X72+X73+X74)+9792*(X76+X77+X78)+23057.44*X112+18734*X115+14410.56*X116+41898*(X100+X101)+32590.73*(X102+X103)+23278.88*(X104+X105)+12331.55*X10+7970.91*(X61+X62+X63+X64)+18310.29*(X106+X107)+25178.01*(X108+X109)+6871.23*(X45+X46+X47+X48)+17148.33*(X110+X111)+34419.91*(X65+X66+X67)+10067.4*(X80+X81+X82)+14410.56*X118+9285.19*(X84+X85+X86)+12970.32*X120+9682.63*(X87+X88+X89)+12970.32*X122+11250.08*X30+8253.26*X31+5809.91*X32+15908.64*X30+11784.96*X31+8248.68*X32+8076.36*X33+6345.14*X34+3461.55*X35+26997.48*X21+3737.6*X22+10417.32*X22,
# LS #
(22.9*X01+8.9*X02+8.9*X03+13.4*X04+8.3*X05+22.9*X06+4.4*X07+13.4*X08+14*X09+8.3*X10+14*X11+14*X12+5.7*X13+5.5*X14+4.4*X15+5.7*X16+14.6*X17+8.9*X18+4.2*X19)*25.825+13641.08*P*M+1004.19*Z,
# FEI #
1044.6*X01+365.5*(X02+X03)+361.85*X04+360.38*X05+1513.17*X06+291.67*X07+365.5*X08+372.81*X09+361.85*X10+353.07*X11+351.61*X12+365.5*X13+557.75*X14+300.45*X15+277.78*X16+358.19*X17+593.57*X18+304.83*X19+7.31*X21+79.68*X22+2.98*P*M+0.42*M+0.61*Z+(4.87*(X26-X100-X101)+3.79*(X27-X102-X103)+2.04*(X09-X104-X105)+2.09*(X28-X106-X107)+3.79*(X29-X108-X109)+3.02*X113+2.45*X115+1.89*X117+1.89*X119+1.70*X121+1.70*X123+1.81*X152+1.36*X153+1.39*X154+3.59*X133+4.34*(X136+X137)+9.89*(X139+X140+X141)+7.06*(X143+X144+X145)+4.24*(X147+X148+X149)+2.22*X19+1.45*X22)*7.31+520.24*Z,
# LEI #
259.51*M+40.74*Z+365.77*Z,
# EI #
1044.6*X01+365.5*(X02+X03)+361.85*X04+360.38*X05+1513.17*X06+291.67*X07+365.5*X08+372.81*X09+361.85*X10+353.07*X11+351.61*X12+365.5*X13+557.75*X14+300.45*X15+277.78*X16+358.19*X17+593.57*X18+304.83*X19+7.31*X21+79.68*X22+2.98*P*M+0.42*M+0.61*Z+(4.87*(X26-X100-X101)+3.79*(X27-X102-X103)+2.04*(X09-X104-X105)+2.09*(X28-X106-X107)+3.79*(X29-X108-X109)+3.02*X113+2.45*X115+1.89*X117+1.89*X119+1.70*X121+1.70*X123+1.81*X152+1.36*X153+1.39*X154+3.59*X133+4.34*(X136+X137)+9.89*(X139+X140+X141)+7.06*(X143+X144+X145)+4.24*(X147+X148+X149)+2.22*X19+1.45*X22)*7.31+520.24*Z+259.51*M+40.74*Z+365.77*Z,
# LABOUR #
1044.6*X01+365.5*(X02+X03)+361.85*X04+360.38*X05+1513.17*X06+291.67*X07+365.5*X08+372.81*X09+361.85*X10+353.07*X11+351.61*X12+365.5*X13+557.75*X14+300.45*X15+277.78*X16+358.19*X17+593.57*X18+304.83*X19+7.31*X21+79.68*X22+2.98*P*M+0.42*M+0.61*Z+(4.87*(X26-X100-X101)+3.79*(X27-X102-X103)+2.04*(X09-X104-X105)+2.09*(X28-X106-X107)+3.79*(X29-X108-X109)+3.02*X113+2.45*X115+1.89*X117+1.89*X119+1.70*X121+1.70*X123+1.81*X152+1.36*X153+1.39*X154+3.59*X133+4.34*(X136+X137)+9.89*(X139+X140+X141)+7.06*(X143+X144+X145)+4.24*(X147+X148+X149)+2.22*X19+1.45*X22)*7.31+259.51*M+40.74*Z,
# EROI #
-(8474.95*X01+16039.8*X02+29143.53*X02+29875*X03+33591.75*X03+19546.60*X23+16099.97*X24+11504.48*X25+19662.24*X23+17895.40*X24+16274.44*X25+16493.4*(0.5*X23-X68-X69-X70)+13142.7*(0.5*X24-X72-X73-X74)+9792*(0.5*X25-X76-X77-X78)+18397.72*X26+13802.23*X27+9206.73*X09+6599.98*X28+9899.98*X29+7569.41*X152+5473.78*X153+5636.4*X154+10067.4*(X15-X80-X81-X82)+10838.1*X30+8019.4*X31+5597.7*X32+27993.67*X134+6226.07*X33+4891.85*X34+2671.06*X35+27151.08*(X19-X136-X137)+67431.2*(X36-X139-X140-X141)+50567.2*(X37-X143-X144-X145)+33715.6*(X38-X147-X148-X149)+46465.72*(X23-X94-X95)+39129.11*(X24-X96-X97)+29346.43*(X25-X98-X99)+21446.68*(0.5*X23-X49-X50-X51-X52)+17103.25*(0.5*X24-X53-X54-X55-X56)+12759.82*(0.5*X25-X57-X58-X59-X60)+23057.55*(0.5*X23-X112-X113)+18734*(0.5*X24-X114-X115)+14410.56*(0.5*X25-X116-X117)+41898*(X26-X100-X101)+32590.73*(X27-X102-X103)+23278.88*(X09-X104-X105)+7970.91*(X10-X61-X62-X63-X64)+18310.29*(X28-X106-X107)+25178.01*(X29-X108-X109)+6871.23*(X12-X45-X46-X47-X48)+17148.33*(X12-X110-X111)+34419.91*(X13-X65-X66-X67)+14410.56*(X15-X118-X119)+9285.19*(X16-X84-X85-X86)+12970.32*(X16-X120-X121)+9682.63*(X17-X87-X88-X89)+12970.32*(X17-X122-X123)+510.73*Z)/((2828.20*X01+2297.75*X04+270.47*X05+1523.70*X06+1392.3*X07+23057.44*X113+18734*X115+14410.56*X117+2297.75*X08+2297.75*X09+175.01*X10+2194.81*X11+1377.38*X12+77.7*X13+805.73*X14+1468.22*X152+1101.17*X153+1129.39*X154+1129.39*X125+1086.3*X15+14410.56*X119+1606.32*X16+12970.32*X121+1208.88*X17+12970.32*X123+27993.67*X133+9355.13*X19+27151.08*(X136+X137)+67431.2*(X139+X140+X141)+50567.2*(X143+X144+X145)+33715.6*(X147+X148+X149)+18981.19*X01+46465.72*(X94+X95)+39129.11*(X96+X97)+29346.43*(X98+X99)+16445.21*X23+13156.01*X24+9867.6*X25+21446.68*(X49+X50+X51+X52)+17103.25*(X53+X54+X55+X56)+12759.82*(X57+X58+X59+X60)+23397.26*X23+21447.36*X24+19497.46*X25+16493.4*(X68+X69+X70)+13142.7*(X72+X73+X74)+9792*(X76+X77+X78)+23057.44*X112+18734*X115+14410.56*X116+41898*(X100+X101)+32590.73*(X102+X103)+23278.88*(X104+X105)+12331.55*X10+7970.91*(X61+X62+X63+X64)+18310.29*(X106+X107)+25178.01*(X108+X109)+6871.23*(X45+X46+X47+X48)+17148.33*(X110+X111)+34419.91*(X65+X66+X67)+10067.4*(X80+X81+X82)+14410.56*X118+9285.19*(X84+X85+X86)+12970.32*X120+9682.63*(X87+X88+X89)+12970.32*X122+11250.08*X30+8253.26*X31+5809.91*X32+15908.64*X30+11784.96*X31+8248.68*X32+8076.36*X33+6345.14*X34+3461.55*X35+26997.48*X21+3737.6*X22+10417.32*X22)+(1044.6*X01+365.5*(X02+X03)+361.85*X04+360.38*X05+1513.17*X06+291.67*X07+365.5*X08+372.81*X09+361.85*X10+353.07*X11+351.61*X12+365.5*X13+557.75*X14+300.45*X15+277.78*X16+358.19*X17+593.57*X18+304.83*X19+7.31*X21+79.68*X22+2.98*P*M+0.42*M+0.61*Z+(4.87*(X26-X100-X101)+3.79*(X27-X102-X103)+2.04*(X09-X104-X105)+2.09*(X28-X106-X107)+3.79*(X29-X108-X109)+3.02*X113+2.45*X115+1.89*X117+1.89*X119+1.70*X121+1.70*X123+1.81*X152+1.36*X153+1.39*X154+3.59*X133+4.34*(X136+X137)+9.89*(X139+X140+X141)+7.06*(X143+X144+X145)+4.24*(X147+X148+X149)+2.22*X19+1.45*X22)*7.31+520.24*Z+259.51*M+40.74*Z+365.77*Z)),
# FALLOWS #
X01+X02+X03, # crops #
X04+X06, # irrigated land #
X08+X29+X13+X15+X16, # dry croplands # 
X09+X10+X28+X12+X14+X17, # dry olive groves #
X19, # vineyard #
X21, # pasture #
X22, # forest #
# QUALITIES #
X01 + X02 + X03 + 2*X23 + X26 + X09 + X14 + X15 + X33 + X36,
2*X24 + X27 + X10 + X28 + X13 + X34 + X37,
2*X25 + X29 + X12 + X16 + X17 + X35 + X38 + X21,
# PARAMETERS #
X01 + X02 + X03 + X04 + X06 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X19, # Code M #
(9162.10*X91+3535.31*X93)*365/(19076.26*M), # Valor D #
P # Valor P #
;
end;
