      MOV R1,#msg1
      MOV R2,#msg2
      MOV R3,#myName
      MOV R4,#num
      MOV R5,#msg3
      MOV R6,#msg4
      MOV R7,#msg5
      MOV R8,#msg6
      MOV R9,#num
      MOV R10,#msg7
// main
// name and number of matchsticks input
      STR R1, .WriteString
      STR R3, .ReadString 
Loop:
      STR R2, .WriteString
      LDR R4, .InputNum
      CMP R4, #5
      BLT Loop
      CMP R4, #100
      BGT Loop
      STR R5, .WriteString 
      STR R3, .WriteString 
      STR R6, .WriteString 
      STR R4, .WriteSignedNum
      STR R7, .WriteString 
// asking for matchsticks removal
RemoveLoop: 
      STR R5, .WriteString
      STR R3, .WriteString
      STR R6, .WriteString
      STR R4, .WriteSignedNum
      STR R7, .WriteString
      STR R5, .WriteString 
      STR R3, .WriteString 
      STR R8, .WriteString 
      LDR R9, .InputNum
      CMP R9, #1
      BLT RemoveLoop
      CMP R9, #3
      BGT RemoveLoop
      CMP R9, R4
      BGT RemoveLoop
      STR R9, .WriteSignedNum
// subtract sticks
      SUB R4, R4, R9
      CMP R4, #0
      BGT RemoveLoop
      STR R10, .WriteString 
      HALT
// end
myName: .BLOCK 128
num:  .Word
msg1: .ASCIZ "PLEASE ENTER YOUR NAME\n"
msg2: .ASCIZ "How many matchsticks (5-100)?\n"
msg3: .ASCIZ "\nPlayer "
msg4: .ASCIZ ", there are "
msg5: .ASCIZ "matchsticks remaining"
msg6: .ASCIZ ", how many do you want to remove (1-3)?\n"
msg7: .ASCIZ "\nGame Over"
