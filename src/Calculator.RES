� �� 0u   d   
Calculatork  displayh   w   i   s   r   q   j   p   o   n   t   e   f   g   u   l   m   v   � �d 0�  �  �  ��         
 f  �x i � } d ��q        u. � j �  k ����        w  �� i ( 
 h ����        y  �l X ( 	 w ����        ~  �� X ( 	 i ����        �  � G ( 	 s ����        �  �< G ( 	 r ����        �  �l G ( 	 q ����        �  �� G ( 	 j ����        �  � 5 ( 	 p ����        �  �< 5 ( 	 o ����        �  �l 5 ( 	 n ����        �  �� 4 ( 
 t ����        �  � # ( 	 e ����        �  �< # ( 	 f ����        �  �l # ( 	 g ����        �  �� " ( 	 u ����        �  �  ( 
 l ����        �  �<  ( 
 m ����        �  ��  ( 	 v ����Calculator    0 C drop enter 7 8 9 + 4 5 6 - 1 2 3 / 0 . * ���d 0�  �d Initcounter = 0�v Clicktif QUEUED() >= 1
then
do
   PULL temp
   counter = counter * temp
   CALL Calculator.display.Text(counter)
end�m Click�/* rv (return value) */
/* POS returns zero if substring is not found in string */
rv = POS('.',counter)
if rv = 0
then
do
   /* only add decimal point if one isn't already there */
   counter = counter'.'
   /* update the display */
   CALL Calculator.display.Text(counter)
end�l Click�if counter �= 0                                
then                                           
do                                             
   /* catenate a zero at the end of counter */ 
   counter = counter'0'                        
   /* update the display */                    
   CALL Calculator.display.Text(counter)       
end�u Click�/* first check if attempting to divide by zero */
if counter = 0
then
do
   /* beep and message box if so */
   CALL BEEP 600, 200
   CALL RXMESSAGEBOX "Divide by zero error", "Error", "OK", "ERROR"
end
else
do
   /* OK, non zero divisor, carry on as usual */
   if QUEUED() >= 1
   then
   do   
      PULL temp
      counter = temp / counter
      CALL Calculator.display.Text(counter)
   end
end�g Clickjif counter = 0
then
   counter = 3
else
   counter = counter'3'
CALL Calculator.display.Text(counter)�f Clickjif counter = 0
then
   counter = 2
else
   counter = counter'2'
CALL Calculator.display.Text(counter)�e Click�if counter = 0
then
   /* this prevents a (meaningless) preceding zero */
   counter = 1
else
   /* catenate a 1 on the end of counter */
   counter = counter'1'
/* display counter */
CALL Calculator.display.Text(counter)
�t Clicktif QUEUED() >= 1
then
do
   PULL temp
   counter = temp - counter
   CALL Calculator.display.Text(counter)
end�n Clickjif counter = 0
then
   counter = 6
else
   counter = counter'6'
CALL Calculator.display.Text(counter)�o Clickjif counter = 0
then
   counter = 5
else
   counter = counter'5'
CALL Calculator.display.Text(counter)�p Clickjif counter = 0
then
   counter = 4
else
   counter = counter'4'
CALL Calculator.display.Text(counter)�j Click�/* check there is at least one item on the stack */
if QUEUED() >= 1
then
do
   /* pop one item off stack into temp, local variable */
   PULL temp
   /* calculate new value of counter */
   counter = counter + temp
   /* display counter */
   CALL Calculator.display.Text(counter)
end�q Clickjif counter = 0
then
   counter = 9
else
   counter = counter'9'
CALL Calculator.display.Text(counter)�r Clickjif counter = 0
then
   counter = 8
else
   counter = counter'8'
CALL Calculator.display.Text(counter)�s Clickjif counter = 0
then
   counter = 7
else
   counter = counter'7'
CALL Calculator.display.Text(counter)�i Click�/* push current dispaly onto stack */
PUSH counter
/* reset the counter to zero */
counter = 0
/* display counter */
CALL Calculator.display.Text(counter)�w Click�/* check if there are any items on the stack */
if QUEUED() >= 1
then
do
   /* yes there are items */
   /* pop off stack into counter */
   PULL counter
   /* refresh display */
   CALL Calculator.display.Text(counter)
end
else
do
   /* no items on stack */
   /* simply reset counter to zero */
   counter = 0
   /* redisplay */
   CALL Calculator.display.Text(counter)
end�h ClickU/* reset counter and redisplay */
counter = 0
CALL Calculator.display.Text(counter)����d 0W   i push current value on the stackw drop a value from the stackh clear current value�