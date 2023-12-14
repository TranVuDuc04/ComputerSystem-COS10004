      MOV R1,#msg1
      MOV R2,#msg2
      MOV R3,#myName
      MOV R4,#num
      MOV R5,#msg3
      MOV R6,#msg4
// main
      STR R1, .WriteString
      STR R3, .ReadString 
Loop:
      STR R2, .WriteString
      LDR R4, .InputNum
      CMP R4,#5
      BLT Loop
      CMP R4,#100
      BGT Loop
      STR R5, .WriteString 
      STR R3, .WriteString 
      STR R6, .WriteString 
      STR R4, .WriteSignedNum
      HALT
myName: .BLOCK 128
num: .Word
msg1: .ASCIZ "PLEASE ENTER YOUR NAME\n"
msg2: .ASCIZ "\nHow many matchsticks (5-100)?\n"
msg3: .ASCIZ "\nPlayer 1 is "
msg4: .ASCIZ "\nMatchsticks: "
