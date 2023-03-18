
_main:

;nader.c,15 :: 		void main()
;nader.c,17 :: 		Lcd_Init(); // Initialize LCD
	CALL       _Lcd_Init+0
;nader.c,18 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;nader.c,19 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;nader.c,20 :: 		Lcd_Out(1,1,"    3B2     ");//Write text'Hello World' in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_nader+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;nader.c,21 :: 		Lcd_Out(2,1,"Nader Jardak");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_nader+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;nader.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
