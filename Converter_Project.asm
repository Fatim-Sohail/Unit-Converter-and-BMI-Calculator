Include irvine32.inc
Include macros.inc

.data
nam byte 20 dup("_"),".txt",0
filehandle dword ?

con real4 703.0
num real4 ?
heightt real4 ?
deno real4 ?
bmmmi real4 ?


convlen real4	1.0E+2,1.0E+3,1.0E+6,1.0E+9, 39.370, 100.0,1609.0, 39370.0,1.609,2.54,63360.0,160934.0,1.0E+5
convmass real4 1.00E+03,1.00E+06,35.0,35274.0,454.0,28.0,2.2,16.0,2205.0
convtime real4 60.0, 3600.0, 86400.0, 604800.0, 1440.0, 10080.0, 24.0, 168.0, 7.0
convcurrmol real4 1.0E+3, 1.0E+6, 1.0E+9
convint real4 1.0E+03
convtemp real4 1.8,0.5555556,32.0,273.0
convcurr real4 1.0E+3, 1.0E+6, 1.0E+9


n byte " Enter you name: ",0
w BYTE " Enter your weight in pounds: ", 0
h BYTE " Enter your height in Inches: ", 0
bmii BYTE " BMI is: ", 0

typ   BYTE"	Underweight   = <19.9", 0ah,0dh
     BYTE "	Normal Weight = 20 - 24.9", 0ah,0dh
	 BYTE "	Overweight    = 25 - 29.9", 0ah,0dh
     BYTE "	Obesity       = 30<", 0

      

;welcome
wl  byte "-------------------------------------------------------------------------------------- ",0ah,0dh
    byte "|---------------------Welcome to BMI Calculator & Unit Converter---------------------| ",0ah,0dh
    byte "-------------------------------------------------------------------------------------- ",0


;choose converter and bmi


ch1	byte "What you wanna use?",0ah,0dh
byte "1. Bmi Calculator",0ah,0dh
byte "2. Unit Converter",0ah,0dh
byte "0. Exit",0


; module 
mo byte "Choose physical quantity module",0ah,0dh
 byte "1. length",0ah,0dh
 byte "2. Mass",0ah,0dh
 byte "3. Temperature",0ah,0dh
 byte "4. Curent",0ah,0dh
 byte "5. Time",0ah,0dh
 byte "6. Intensity",0ah,0dh
 byte "7. Amount of Substance",0


; sections for primary unit being converted
plen byte "Choose length unit to be converted",0ah,0dh
 byte "1. m",0ah,0dh
 byte "2. km",0ah,0dh
 byte "3. inches",0ah,0dh
 byte "4. centimeter",0ah,0dh
 byte "5. miles",0

pmas byte "Choose mass unit to be converted",0ah,0dh
 byte "1. kg",0ah,0dh
 byte "2. g",0ah,0dh
 byte "3. pounds",0ah,0dh
 byte "4. ounces",0ah,0dh
 byte "5. tonnes",0

ptem byte "Choose temperature unit to be converted",0ah,0dh
 byte "1. 'C",0ah,0dh
 byte "2. F",0ah,0dh
 byte "3. K",0

pcur byte "Choose current unit to be converted",0ah,0dh
 byte "1. A",0ah,0dh
 byte "2. nA",0ah,0dh
 byte "3. mA",0ah,0dh
 byte "4. uA",0

ptim byte "Choose time unit to be converted",0ah,0dh
 byte "1. sec",0ah,0dh
 byte "2. min",0ah,0dh
 byte "3. hours",0ah,0dh
 byte "4. days",0ah,0dh
 byte "5. weeks",0


pin byte "Choose intensity unit to be converted",0ah,0dh
 byte "1. candela",0ah,0dh
 byte "2. nox",0

pn byte "Choose amount of substance unit to be converted",0ah,0dh
 byte "1. mol",0ah,0dh
 byte "2. mmol",0ah,0dh
 byte "3. kmol",0ah,0dh
 byte "4. umol",0


 ; section2

 lo1   byte "Choose length conversion type",0ah,0dh
 byte "1. m -> km",0ah,0dh
 byte "2. m -> inches",0ah,0dh
 byte "3. m -> centimeter",0ah,0dh
 byte "4. m -> miles",0
lo2 byte "Choose length conversion type",0ah,0dh
byte "1. km -> m",0ah,0dh
 byte "2. km ->inches",0ah,0dh
 byte "3. km ->centimeter",0ah,0dh
 byte "4. km -> miles",0
lo3 byte "Choose length conversion type",0ah,0dh
byte "1. inches -> m",0ah,0dh
 byte "2. inches -> km",0ah,0dh
 byte "3. inches -> centimeter",0ah,0dh    
 byte "4. inches -> miles",0
lo4 byte "Choose length conversion type",0ah,0dh
byte "1. centimeter -> m",0ah,0dh
 byte "2. centimeter -> inches",0ah,0dh
 byte "3. centimeter -> km",0ah,0dh
 byte "4. centimeter -> miles",0
lo5 byte "Choose length conversion type",0ah,0dh
byte "1. miles -> m",0ah,0dh
 byte "2. miles -> inches",0ah,0dh
 byte "3. miles -> centimeter",0ah,0dh
 byte "4. miles -> km",0

m1   byte "Choose mass conversion type",0ah,0dh
 byte "1. kg -> g",0ah,0dh
 byte "2. kg -> pounds",0ah,0dh
 byte "3. kg -> ounces",0ah,0dh
 byte "4. kg -> tonnes ",0
m2   byte "Choose mass conversion type",0ah,0dh
 byte "1. g -> kg",0ah,0dh
 byte "2. g -> pounds",0ah,0dh
 byte "3. g -> ounces",0ah,0dh
 byte "4. g -> tonnes ",0
m3   byte "Choose mass conversion type",0ah,0dh
 byte "1. pounds -> kg",0ah,0dh
 byte "2. pounds -> g",0ah,0dh
 byte "3. pounds -> ounces",0ah,0dh
 byte "4. pounds -> tonnes ",0
m4   byte "Choose mass conversion type",0ah,0dh
 byte "1. ounces -> kg",0ah,0dh
 byte "2. ounces -> g",0ah,0dh
 byte "3. ounces -> pounds",0ah,0dh
 byte "4. ounces -> tonnes ",0
m5   byte "Choose mass conversion type",0ah,0dh
 byte "1. tonnes -> kg",0ah,0dh
 byte "2. tonnes -> g",0ah,0dh
 byte "3. tonnes -> pounds",0ah,0dh
 byte "4. tonnes -> ounces ",0


tp1   byte "Choose temperature conversion type",0ah,0dh
 byte "1. 'C -> F",0ah,0dh
 byte "2. 'C -> K",0
tp2   byte "Choose temperature conversion type",0ah,0dh
 byte "1. F -> 'C ",0ah,0dh
 byte "2. F -> K",0
tp3   byte "Choose temperature conversion type",0ah,0dh
 byte "1. K -> F",0ah,0dh
 byte "2. K -> 'C",0


cur1 byte "Choose current conversion type",0ah,0dh
 byte "1. A -> mA",0ah,0dh
 byte "2. A -> nA",0ah,0dh
 byte "3. A -> uA",0
cur2 byte "Choose current conversion type",0ah,0dh
 byte "1. nA -> mA",0ah,0dh
 byte "2. nA -> A",0ah,0dh
 byte "3. nA -> uA",0
cur3 byte "Choose current conversion type",0ah,0dh
 byte "1. mA -> A",0ah,0dh
 byte "2. mA -> nA",0ah,0dh
 byte "3. mA -> uA",0
cur4   byte "Choose current conversion type",0ah,0dh
 byte "1. uA -> mA",0ah,0dh
 byte "2. uA -> nA",0ah,0dh
 byte "3. uA -> A",0
 

tm1 byte "Choose time conversion type",0ah,0dh
byte "1. sec -> min",0ah,0dh
 byte "2. sec -> hours",0ah,0dh
 byte "3. sec -> days",0ah,0dh
 byte "4. sec -> weeks",0
tm2 byte "Choose time conversion type",0ah,0dh
byte "1. min -> sec",0ah,0dh
 byte "2. min -> hours",0ah,0dh
 byte "3. min -> days",0ah,0dh
 byte "4. min -> weeks",0
tm3 byte "Choose time conversion type",0ah,0dh
byte "1. hours -> sec",0ah,0dh
 byte "2. hours -> min",0ah,0dh
 byte "3. hours -> days",0ah,0dh
 byte "4. hours -> weeks",0
tm4 byte "Choose time conversion type",0ah,0dh
byte "1. days -> sec",0ah,0dh
 byte "2. days -> hours",0ah,0dh
 byte "3. days -> min",0ah,0dh
 byte "4. days -> weeks",0
tm5 byte "Choose time conversion type",0ah,0dh
byte "1. weeks -> sec",0ah,0dh
 byte "2. weeks -> hours",0ah,0dh
 byte "3. weeks -> min",0ah,0dh
 byte "4. weeks -> days",0


am1 byte "Choose amount of substance conversion type",0ah,0dh
byte "1. mol->  mmol",0ah,0dh
 byte "2. mol -> kmol",0ah,0dh
 byte "3. mol -> umol",0
am2 byte "Choose amount of substance conversion type",0ah,0dh
byte "1. mmol->  mol",0ah,0dh
 byte "2. mmol -> kmol",0ah,0dh
 byte "3. mmol -> umol",0
am3 byte "Choose amount of substance conversion type",0ah,0dh
byte "1. kmol->  mol",0ah,0dh
 byte "2. kmol -> mmol",0ah,0dh
 byte "3. kmol -> umol",0
am4 byte "Choose amount of substance conversion type",0ah,0dh
byte "1. umol->  mmol",0ah,0dh
 byte "2. umol -> kmol",0ah,0dh
 byte "3. umol -> mol",0

 in1 byte "Choose amount of substance conversion type",0ah,0dh
byte "1. cd->  nox",0
in2 byte "Choose amount of substance conversion type",0ah,0dh
byte "1. nox->  cd",0



choice dword 1
module dword ?
section1 dword ?
section2 dword ?

.code

mainproject PROC
	
	mov edx,offset wl
	call WriteString
	call crlf

	mov ebx,0

	mov eax,choice ; copy variable to EAX
beginwhile:
	cmp ebx, eax
	jae endwhile	
	call crlf
	mov edx,offset ch1
	call WriteString
	call crlf
	call crlf

	call Readint
	mov choice, eax

	
	mov eax,choice
    cmp eax,1
    jne L1 
	

		mwrite "Name must be unique!!!"
		mov edx, offset n				;input name
		call WriteString
		call crlf

		mov edx, offset nam
		mov ecx, 9
		call ReadString

	
		mov esi, OFFSET nam
		mov ecx, 10
	xchgloop:
       		mov al, byte PTR [esi]        ; eax=1
			.IF al == 0Ah
				mov bl, "_"
				xchg byte PTR [esi], bl
				mov bl, "_"
				xchg byte PTR [esi-1], bl
				
			.ENDIF
       		inc esi
        	loop xchgloop

		invoke CreateFile, OFFSET nam, GENERIC_READ OR GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, 0
		mov filehandle, eax
		.IF eax == -1
			mov edx,OFFSET nam
			call createoutputfile
			.IF eax == -1
				mov eax, "jump"
				jmp next
			.ENDIF

;weight (lb) / [height (in)]2 x 703

			finit

			mov edx, offset w				;input weight
			call WriteString
			call Readfloat

			fmul con
			fstp num
				
			mov edx, offset h				; input height
			call WriteString
			call Readfloat

			fstp heightt
			fld heightt
			fmul heightt
			fstp deno


			fld num
			fdiv deno
		

			mov edx, offset bmii
			call writestring
			call writefloat

			fstp bmmmi


			mov edx, OFFSET typ
			call WriteString
			call CRLF
			mov  edx, offset bmmmi
			mov ecx, 4
			call WriteToFile
			
	  .ELSE
			
			mov edx,OFFSET bmmmi
			mov ecx,4
			call ReadFromFile

			mwrite " As you already entered your bmii detail with this username "
			mwrite "Your BMI is "

			fld bmmmi
			call writefloat
			fstp st(0)
			

		.ENDIF

		.IF eax == "jump"
			next:
		     mwrite "Kindly exit to save changes on your last entry for "
			 call crlf
			 mwrite "this name so that you can see your recently saved  "
			 call crlf
			 mwrite "bmi for this user or enter a new name !!!"
		.ENDIF
		
		invoke CloseHandle, filehandle ; Calling CloseHandle function
		call closefile



	L1:

	
	mov eax,choice
    cmp eax,2 
    jne L2
		call crlf
		mov edx,offset mo
		call WriteString
		call crlf
		call crlf

		call Readint
		mov module, eax

		

		mov eax,module
		cmp eax,1
		jne C1 
			mov edx,offset plen
			call WriteString
			call crlf

			call Readint
			mov section1, eax

			

			mov eax,section1
			cmp eax,1
			jne len1
				mov edx,offset lo1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your length in metres : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convlen+4 
					mWrite "The result is: "
					call WriteFloat
					mwrite " km"
				.ELSEIF eax == 2
					fmul convlen+16
					mWrite "The result is: "
					call WriteFloat
					mwrite " inches"
				.ELSEIF eax == 3
					fmul convlen
					mWrite "The result is: "
					call WriteFloat
					mwrite " cms"
				.ELSEIF eax == 4
					fdiv convlen+24
					mWrite "The result is: "
					call WriteFloat
					mwrite " miles"
				.ENDIF


				fstp st(0)

			len1:

			
			mov eax,section1
			cmp eax,2
			jne len2
				mov edx,offset lo2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your length in km : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convlen+4 ; multiply
					mWrite "The result is "
					call WriteFloat
					mwrite " m"
				.ELSEIF eax == 2
					fmul convlen+28; multiply
					mWrite "The result is: "
					call WriteFloat
					mwrite " inches"
				.ELSEIF eax == 3
					fmul convlen+48; multiply
					mWrite "The result is: "
					call WriteFloat
					mwrite " cms"
				.ELSEIF eax == 4
					fdiv convlen+32; multiply
					mWrite "The result is: "
					call WriteFloat
					mwrite " miles"
				.ENDIF


				fstp st(0)

			len2:

			
			mov eax,section1
			cmp eax,3
			jne len3
				mov edx,offset lo3
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your length in inches : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convlen+16 
					mWrite "The result is: "
					call WriteFloat
					mwrite " m"
				.ELSEIF eax == 2
					fdiv convlen+28
					mWrite "The result is: "
					call WriteFloat
					mwrite " km"
				.ELSEIF eax == 3
					fmul convlen+36
					mWrite "The result is: "
					call WriteFloat
					mwrite " cms"
				.ELSEIF eax == 4
					fdiv convlen+40
					mWrite "The result is: "
					call WriteFloat
					mwrite " miles"
				.ENDIF
				fstp st(0)
			len3:

			
			mov eax,section1
			cmp eax,4
			jne len4
				mov edx,offset lo4
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your length in centimeters : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convlen 
					mWrite "The result is: "
					call WriteFloat
					mwrite " m"
				.ELSEIF eax == 2
					fdiv convlen+36
					mWrite "The result is: "
					call WriteFloat
					mwrite " inches"
				.ELSEIF eax == 3
					fdiv convlen+48
					mWrite "The result is: "
					call WriteFloat
					mwrite " km"
				.ELSEIF eax == 4
					fdiv convlen+44; multiply
					mWrite "The result is: "
					call WriteFloat
					mwrite " miles"
				.ENDIF
				fstp st(0)
			len4:

			
			mov eax,section1
			cmp eax,5
			jne len5
				mov edx,offset lo5
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your length in miles : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fmul convlen+24 
					mWrite "The result is: "
					call WriteFloat
					mwrite " m"
				.ELSEIF eax == 2
					fmul convlen+40
					mWrite "The result is: "
					call WriteFloat
					mwrite " inches"
				.ELSEIF eax == 3
					fmul convlen+44
					mWrite "The result is: "
					call WriteFloat
					mwrite " cms"
				.ELSEIF eax == 4
					fmul convlen+32
					mWrite "The result is: "
					call WriteFloat
					mwrite " km"
				.ENDIF
				fstp st(0)
			len5:
		C1:


		mov eax,module
		cmp eax,2
		jne C2
			mov edx,offset pmas
			call WriteString
			call crlf

			call Readint
			mov section1,eax 


			mov eax,section1
			cmp eax,1
			jne mas1
				mov edx,offset m1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your mass in kg : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fmul convmass 
					mWrite "The result is: "
					call WriteFloat
					mwrite " g"
				.ELSEIF eax == 2
					fmul convmass+24
					mWrite "The result is: "
					call WriteFloat
					mwrite " pounds"
				.ELSEIF eax == 3
					fmul convmass+8
					mWrite "The result is: "
					call WriteFloat
					mwrite " ounces"
				.ELSEIF eax == 4
					fdiv convmass
					mWrite "The result is: "
					call WriteFloat
					mwrite " tonnes"
				.ENDIF
				fstp st(0)

			mas1:

			
			mov eax,section1
			cmp eax,2
			jne mas2
				mov edx,offset m2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your mass in grams : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convmass 
					mWrite "The result is: "
					call WriteFloat
					mwrite " kg"
				.ELSEIF eax == 2
					fdiv convmass+16
					mWrite "The result is: "
					call WriteFloat
					mwrite " pounds"
				.ELSEIF eax == 3
					fdiv convmass+20
					mWrite "The result is: "
					call WriteFloat
					mwrite " ounces"
				.ELSEIF eax == 4
					fdiv convmass+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " tonnes"
				.ENDIF
				fstp st(0)

			mas2:

			
			mov eax,section1
			cmp eax,3
			jne mas3
				mov edx,offset m3
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your mass in pounds : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convmass+24 
					mWrite "The result is: "
					call WriteFloat
					mwrite " kg"
				.ELSEIF eax == 2
					fmul convmass+16
					mWrite "The result is: "
					call WriteFloat
					mwrite " g"
				.ELSEIF eax == 3
					fmul convmass+28
					mWrite "The result is: "
					call WriteFloat
					mwrite " ounces"
				.ELSEIF eax == 4
					fdiv convmass+32
					mWrite "The result is: "
					call WriteFloat
					mwrite " tonnes"
				.ENDIF
				fstp st(0)


			mas3:

			
			mov eax,section1
			cmp eax,4
			jne mas4
				mov edx,offset m4
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				
				finit 

				mwrite "Enter your mass in ounces : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convmass+8 
					mWrite "The result is: "
					call WriteFloat
					mwrite " kg"
				.ELSEIF eax == 2
					fmul convmass+20
					mWrite "The result is: "
					call WriteFloat
					mwrite " g"
				.ELSEIF eax == 3
					fdiv convmass+28
					mWrite "The result is: "
					call WriteFloat
					mwrite " pounds"
				.ELSEIF eax == 4
					fdiv convmass+12
					mWrite "The result is: "
					call WriteFloat
					mwrite " tonnes"
				.ENDIF
				fstp st(0)

			mas4:

			
			mov eax,section1
			cmp eax,5
			jne mas5
				mov edx,offset m5
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your mass in tonnes : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fmul convmass
					mWrite "The result is: "
					call WriteFloat
					mwrite " kg"
				.ELSEIF eax == 2
					fmul convmass+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " g"
				.ELSEIF eax == 3
					fmul convmass+32
					mWrite "The result is: "
					call WriteFloat
					mwrite " pounds"
				.ELSEIF eax == 4
					fmul convmass+12
					mWrite "The result is: "
					call WriteFloat
					mwrite " tonnes"
				.ENDIF
				fstp st(0)


			mas5:
		C2:


		mov eax,module
		cmp eax,3
		jne C3 
			mov edx,offset ptem
			call WriteString
			call crlf

			call Readint
			mov section1,eax

			mov eax,section1
			cmp eax,1
			jne tep1
				mov edx,offset tp1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your temperature in degree Celsius : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fmul convtemp 
					fadd convtemp+8 
					mWrite "The result is: "
					call WriteFloat
					mwrite " F"
				.ELSEIF eax == 2
					fadd convtemp+12
					mWrite "The result is: "
					call WriteFloat
					mwrite " K"
				.ENDIF
				fstp st(0)


			tep1:

			mov eax,section1
			cmp eax,2
			jne tep2
				mov edx,offset tp2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your temperature in degree Farenheight : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fsub convtemp+8 
					fmul convtemp+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " 'C"
				.ELSEIF eax == 2
					fsub convtemp+8 
					fmul convtemp+4
					fadd convtemp+12
					mWrite "The result is: "
					call WriteFloat
					mwrite " K"
				.ENDIF
				fstp st(0)
			tep2:
			
			mov eax,section1
			cmp eax,3
			jne tep3
				mov edx,offset tp3
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your temperature in Kelvin : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fsub convtemp+12 
					fmul convtemp
					fadd convtemp+8
					mWrite "The result is: "
					call WriteFloat
					mwrite " F"
				.ELSEIF eax == 2
					fsub convtemp+12
					mWrite "The result is: "
					call WriteFloat
					mwrite " 'C"
				.ENDIF
				fstp st(0)
			tep3:
		C3:


		mov eax,module
		cmp eax,4
		jne C4 
			mov edx,offset pcur
			call WriteString
			call crlf

			call Readint
			mov section1,eax

			
			mov eax,section1
			cmp eax,1
			jne currt1
				mov edx,offset cur1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit

				mwrite "Enter current in Amperes: "
				call readfloat

				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
				fmul convcurr
				mwrite "The result is: "
				call writefloat
				mwrite "mA"
				.ELSEIF eax == 2
				fmul convcurr + 8
				mwrite "The result is: "
				call writefloat
				mwrite "nA"
				.ELSEIF eax == 3
				fmul convcurr + 4
				mwrite "The result is: "
				call writefloat
				mwrite "uA"
				.ENDIF

				fstp st(0)


			currt1:

			
			mov eax,section1
			cmp eax,2
			jne currt2
				mov edx,offset cur2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

					finit

				mwrite "Enter current in nano-Amperes: "
				call readfloat

				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
				fdiv convcurr + 4
				mwrite "The result is: "
				call writefloat
				mwrite "mA"
				.ELSEIF eax == 2
				fdiv convcurr + 8
				mwrite "The result is: "
				call writefloat
				mwrite "A"
				.ELSEIF eax == 3
				fdiv convcurr 
				mwrite "The result is: "
				call writefloat
				mwrite "uA"
				.ENDIF

				fstp st(0)

			currt2:

			
			mov eax,section1
			cmp eax,3
			jne currt3
				mov edx,offset cur3
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				
				finit

				mwrite "Enter current in milli-Amperes: "
				call readfloat

				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
				fdiv convcurr 
				mwrite "The result is: "
				call writefloat
				mwrite "A"
				.ELSEIF eax == 2
				fmul convcurr + 4
				mwrite "The result is: "
				call writefloat
				mwrite "nA"
				.ELSEIF eax == 3
				fmul convcurr 
				mwrite "The result is: "
				call writefloat
				mwrite "uA"
				.ENDIF

				fstp st(0)


				

			currt3:

			
			mov eax,section1
			cmp eax,4
			jne currt4
				mov edx,offset cur4
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit

				mwrite "Enter current in micro-Amperes: "
				call readfloat

				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
				fdiv convcurr 
				mwrite "The result is: "
				call writefloat
				mwrite "mA"
				.ELSEIF eax == 2
				fmul convcurr 
				mwrite "The result is: "
				call writefloat
				mwrite "nA"
				.ELSEIF eax == 3
				fmul convcurr + 4
				mwrite "The result is: "
				call writefloat
				mwrite "A"
				.ENDIF

				fstp st(0)	
			

			currt4:

		C4:


		mov eax,module
		cmp eax,5
		jne C5 
			mov edx,offset ptim
			call WriteString
			call crlf

			call Readint
			mov section1,eax

			
			mov eax,section1
			cmp eax,1
			jne tim1
				mov edx,offset tm1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your time in seconds : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fdiv convtime
					mWrite "The result is "
					call WriteFloat
					mwrite " min"
				.ELSEIF eax == 2
					fdiv convtime+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " hrs"
				.ELSEIF eax == 3
					fdiv convtime+8
					mWrite "The result is: "
					call WriteFloat
					mwrite " days"
				.ELSEIF eax == 4
					fdiv convtime+12
					mWrite "The result is: "
					call WriteFloat
					mwrite " weeks"
				.ENDIF


				fstp st(0)

			tim1:

			
			mov eax,section1
			cmp eax,2
			jne tim2
				mov edx,offset tm2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your time in minutes : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convtime
					mWrite "The result is "
					call WriteFloat
					mwrite " sec"
				.ELSEIF eax == 2
					fdiv convtime
					mWrite "The result is: "
					call WriteFloat
					mwrite " hrs"
				.ELSEIF eax == 3
					fdiv convtime+16
					mWrite "The result is: "
					call WriteFloat
					mwrite " days"
				.ELSEIF eax == 4
					fdiv convtime+20
					mWrite "The result is: "
					call WriteFloat
					mwrite " weeks"
				.ENDIF


				fstp st(0)

			tim2:

			
			mov eax,section1
			cmp eax,3
			jne tim3
				mov edx,offset tm3
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your time in hours : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convtime+4
					mWrite "The result is "
					call WriteFloat
					mwrite " sec"
				.ELSEIF eax == 2
					fmul convtime
					mWrite "The result is: "
					call WriteFloat
					mwrite " min"
				.ELSEIF eax == 3
					fdiv convtime+24
					mWrite "The result is: "
					call WriteFloat
					mwrite " days"
				.ELSEIF eax == 4
					fdiv convtime+28
					mWrite "The result is: "
					call WriteFloat
					mwrite " weeks"
				.ENDIF


				fstp st(0)

			tim3:

			
			mov eax,section1
			cmp eax,4
			jne tim4
				mov edx,offset tm4
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your time in days : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convtime+8
					mWrite "The result is "
					call WriteFloat
					mwrite " sec"
				.ELSEIF eax == 2
					fmul convtime+24
					mWrite "The result is: "
					call WriteFloat
					mwrite " hrs"
				.ELSEIF eax == 3
					fmul convtime+16
					mWrite "The result is: "
					call WriteFloat
					mwrite " min"
				.ELSEIF eax == 4
					fdiv convtime+32
					mWrite "The result is: "
					call WriteFloat
					mwrite " weeks"
				.ENDIF


				fstp st(0)

			tim4:

			
			mov eax,section1
			cmp eax,5
			jne tim5
				mov edx,offset tm5
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your time in weeks : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convtime+12
					mWrite "The result is "
					call WriteFloat
					mwrite " sec"
				.ELSEIF eax == 2
					fmul convtime+28
					mWrite "The result is: "
					call WriteFloat
					mwrite " hrs"
				.ELSEIF eax == 3
					fmul convtime+20
					mWrite "The result is: "
					call WriteFloat
					mwrite " min"
				 .ELSEIF eax == 4
					fmul convtime+32
					mWrite "The result is: "
					call WriteFloat
					mwrite " days"
				.ENDIF


				fstp st(0)

			tim5:

		C5:




		mov eax,module
		cmp eax,6
		jne C6 
			mov edx,offset pin
			call WriteString
			call crlf

			call Readint
			mov section1,eax

			mov eax,section1
			cmp eax,1
			jne int1
				mov edx,offset in1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your intensity in candela : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fmul convint 
					mWrite "The result is: "
					call WriteFloat
					mwrite " nox"
				.ENDIF
				fstp st(0)

			int1:

			
			mov eax,section1
			cmp eax,2
			jne int2
				mov edx,offset in2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter your intensity in nox : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2

				.IF eax == 1
					fdiv convint 
					mWrite "The result is: "
					call WriteFloat
					mwrite " cd"
				.ENDIF
				fstp st(0)

			int2:

		C6:

		


				mov eax,module
		cmp eax,7
		jne C7
			mov edx,offset pn
			call WriteString
			call crlf

			call Readint
			mov section1,eax

			
			
			mov eax,section1
			cmp eax,1
			jne amt1
				mov edx,offset am1
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter amount of substance in moles : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convcurrmol
					mWrite "The result is "
					call WriteFloat
					mwrite " mmol"
				.ELSEIF eax == 2
					fdiv convcurrmol
					mWrite "The result is: "
					call WriteFloat
					mwrite " kmol"
				.ELSEIF eax == 3
					fmul convcurrmol+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " umol"
				.ENDIF


				fstp st(0)

			amt1:

			
			mov eax,section1
			cmp eax,2
			jne amt2
				mov edx,offset am2
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter amount of substance in Millimoles : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fdiv convcurrmol
					mWrite "The result is "
					call WriteFloat
					mwrite " mol"
				.ELSEIF eax == 2
					fdiv convcurrmol+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " kmol"
				.ELSEIF eax == 3
					fmul convcurrmol
					mWrite "The result is: "
					call WriteFloat
					mwrite " umol"
				.ENDIF


				fstp st(0)

			amt2:

			
			mov eax,section1
			cmp eax,3
			jne amt3
				mov edx,offset am3
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter amount of substance in Kilomoles : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fmul convcurrmol
					mWrite "The result is "
					call WriteFloat
					mwrite " mol"
				.ELSEIF eax == 2
					fmul convcurrmol+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " mmol"
				.ELSEIF eax == 3
					fmul convcurrmol+8
					mWrite "The result is: "
					call WriteFloat
					mwrite " umol"
				.ENDIF


				fstp st(0)

			amt3:

			
			mov eax,section1
			cmp eax,4
			jne amt4
				mov edx,offset am4
				call WriteString
				call crlf

				call Readint
				mov section2, eax

				finit 

				mwrite "Enter amount of substance in Micromoles : "
				call readfloat
				
				;call ShowFPUStack

				mov eax, section2
				.IF eax == 1
					fdiv convcurrmol
					mWrite "The result is "
					call WriteFloat
					mwrite " mmol"
				.ELSEIF eax == 2
					fdiv convcurrmol+8
					mWrite "The result is: "
					call WriteFloat
					mwrite " kmol"
				.ELSEIF eax == 3
					fdiv convcurrmol+4
					mWrite "The result is: "
					call WriteFloat
					mwrite " mol"
				.ENDIF


				fstp st(0)

			amt4:

		C7:

	L2:
	
	mov ebx, 0
	mov eax,choice

	jmp beginwhile 
	endwhile:
	exit

mainproject ENDP
END mainproject