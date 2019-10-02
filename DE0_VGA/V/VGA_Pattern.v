module	VGA_Pattern	(	//	Read Out Side
						oRed,
						oGreen,
						oBlue,
						iVGA_X,
						iVGA_Y,
						iVGA_CLK,
						//	Control Signals
						iRST_n,
						iColor_SW,
						iShadow_SW	);
//	Read Out Side
output	reg	[9:0]	oRed;
output	reg	[9:0]	oGreen;
output	reg	[9:0]	oBlue;
input	[9:0]		iVGA_X;
input	[9:0]		iVGA_Y;
input				iVGA_CLK;
//	Control Signals
input				iRST_n;
input				iColor_SW;
input				iShadow_SW;

always@(posedge iVGA_CLK or negedge iRST_n)
begin
	if(!iRST_n)
	begin
		oRed	<=	0;
		oGreen	<=	0;
		oBlue	<=	0;
	end
	else
	begin
		if(iColor_SW == 1)
		begin
			oRed 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=228 && iVGA_Y<=253) && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<276))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && (iVGA_X>=276 && iVGA_X<392)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<471))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=224 && iVGA_Y<252)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	15	:
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	0	;
			oGreen 	<=	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=228 && iVGA_Y<=253) && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<276))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && (iVGA_X>=276 && iVGA_X<392)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<471))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=224 && iVGA_Y<252)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	15	:
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			7	:
																	0	;
			oBlue 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=228 && iVGA_Y<=253) && iVGA_X<198))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<276))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && (iVGA_X>=276 && iVGA_X<392)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<471))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=224 && iVGA_Y<252)))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	15	:
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			9	:
																	0	;
		end
		else
		begin
			oRed 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=228 && iVGA_Y<=253) && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<276))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && (iVGA_X>=276 && iVGA_X<392)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<471))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=224 && iVGA_Y<252)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	:
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	15	;
			oGreen 	<=	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=228 && iVGA_Y<=253) && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<276))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && (iVGA_X>=276 && iVGA_X<392)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<471))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=224 && iVGA_Y<252)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	:
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			7	:
																	15	;
			oBlue 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=228 && iVGA_Y<=253) && iVGA_X<198))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<276))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=320 && (iVGA_X>=276 && iVGA_X<392)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<471))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=224 && iVGA_Y<252)))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	:
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			9	:
																	15	;
		end
		if(iShadow_SW == 1 && !iColor_SW)
		begin
			oRed 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=88 && iVGA_X<93))	?	0	://E esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && iVGA_X<198))	?	0	://E baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	://E cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=220 && iVGA_Y<=253) && iVGA_X<198))	?	0	://E centro
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<281))	?	0	://C esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<476))	?	0	://P esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	://P cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=216 && iVGA_Y<252)))	?	0	://P baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	://P direita
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	15	;

			//oGreen 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=88 && iVGA_X<93))	?	0	://E esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && iVGA_X<198))	?	0	://E baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	://E cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=220 && iVGA_Y<=253) && iVGA_X<198))	?	0	://E centro
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<281))	?	0	://C esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<476))	?	0	://P esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	://P cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=216 && iVGA_Y<252)))	?	0	://P baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	://P direita
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	//15	;

			//oBlue 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=88 && iVGA_X<93))	?	0	://E esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && iVGA_X<198))	?	0	://E baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	://E cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=220 && iVGA_Y<=253) && iVGA_X<198))	?	0	://E centro
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<281))	?	0	://C esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<476))	?	0	://P esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	://P cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=216 && iVGA_Y<252)))	?	0	://P baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	://P direita
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	//15	;
		end
		if(iShadow_SW == 1 && iColor_SW == 1)
		begin
			//oRed 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	0	:
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=88 && iVGA_X<93))	?	0	://E esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && iVGA_X<198))	?	0	://E baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	0	://E cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=220 && iVGA_Y<=253) && iVGA_X<198))	?	0	://E centro
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<281))	?	0	://C esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	0	://C cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<476))	?	0	://P esquerda
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	0	://P cima
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=216 && iVGA_Y<252)))	?	0	://P baixo
						//(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	0	://P direita
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	//15	;
			oGreen 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=88 && iVGA_X<93))	?	15	://E esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && iVGA_X<198))	?	15	://E baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	15	://E cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=220 && iVGA_Y<=253) && iVGA_X<198))	?	15	://E centro
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<281))	?	15	://C esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && (iVGA_X>=276 && iVGA_X<392)))	?	15	://C baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	15	://C cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<476))	?	15	://P esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	15	://P cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=216 && iVGA_Y<252)))	?	15	://P baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	15	://P direita
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	0	;
			oBlue 	<= 	(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X<88))	?	15	:
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=88 && iVGA_X<93))	?	15	://E esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && iVGA_X<198))	?	15	://E baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X<198))	?	15	://E cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && ((iVGA_Y>=220 && iVGA_Y<=253) && iVGA_X<198))	?	15	://E centro
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=247 && iVGA_X<281))	?	15	://C esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y>=312 && (iVGA_X>=276 && iVGA_X<392)))	?	15	://C baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && (iVGA_X>=276 && iVGA_X<392)))	?	15	://C cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=442 && iVGA_X<476))	?	15	://P esquerda
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_Y<=160 && iVGA_X>=471))	?	15	://P cima
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>=471 && (iVGA_Y>=216 && iVGA_Y<252)))	?	15	://P baixo
						(((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580)) && (iVGA_X>551 && (iVGA_Y>160 && iVGA_Y<252)))	?	15	://P direita
						//((iVGA_Y>=135 && iVGA_Y<345) && (iVGA_X>=60 && iVGA_X<580))		?			3	:
																	0	;
		end
	end
end

endmodule