FasdUAS 1.101.10   ��   ��    k             l     ��  ��    C = Get the exported file and set the new file name and location     � 	 	 z   G e t   t h e   e x p o r t e d   f i l e   a n d   s e t   t h e   n e w   f i l e   n a m e   a n d   l o c a t i o n   
  
 l     ����  r         c     	    n         1    ��
�� 
psxp  l     ����  I    ������
�� .sysostdfalis    ��� null��  ��  ��  ��    m    ��
�� 
ctxt  o      ���� 0 exportedfile exportedFile��  ��        l     ��������  ��  ��        l     ��  ��    Q K Copy and rename exported file to avoid problematic characters in file name     �   �   C o p y   a n d   r e n a m e   e x p o r t e d   f i l e   t o   a v o i d   p r o b l e m a t i c   c h a r a c t e r s   i n   f i l e   n a m e      l    ����  r        I   ��   !
�� .earsffdralis        afdr   m    ��
�� afdrtemp ! �� "��
�� 
from " m    ��
�� fldmfldu��    o      ���� 0 
tempfolder 
tempFolder��  ��     # $ # l     �� % &��   % + %tell Finder to copy exportedFile to /    & � ' ' J t e l l   F i n d e r   t o   c o p y   e x p o r t e d F i l e   t o   / $  ( ) ( l    *���� * O     + , + s     - . - o    ���� 0 exportedfile exportedFile . o      ���� 0 
tempfolder 
tempFolder , m     / /�                                                                                  MACS  alis    t  Macintosh HD               ���H+   �B
Finder.app                                                      ��϶�U        ����  	                CoreServices    ��D4      ϶��     �B �? �>  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   )  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4   Get the header fields    5 � 6 6 ,   G e t   t h e   h e a d e r   f i e l d s 3  7 8 7 l    + 9���� 9 r     + : ; : I    )�� <��
�� .sysoexecTEXT���     TEXT < b     % = > = b     # ? @ ? m     ! A A � B B  a w k   <   @ o   ! "���� 0 exportedfile exportedFile > m   # $ C C � D D d   - F ,   ' B E G I N { O F S = " , " ; }   { i f   ( N R   = =   1 )   {   p r i n t   $ 0   } } '��   ; o      ���� 0 
headertext 
headerText��  ��   8  E F E l  , 3 G���� G r   , 3 H I H n  , / J K J 1   - /��
�� 
txdl K 1   , -��
�� 
ascr I o      ���� 0 prevtid prevTID��  ��   F  L M L l  4 ; N���� N r   4 ; O P O m   4 7 Q Q � R R  , P n      S T S 1   8 :��
�� 
txdl T 1   7 8��
�� 
ascr��  ��   M  U V U l  < E W���� W r   < E X Y X n   < A Z [ Z 2   = A��
�� 
citm [ o   < =���� 0 
headertext 
headerText Y o      ���� 0 thelist theList��  ��   V  \ ] \ l  F M ^���� ^ r   F M _ ` _ o   F I���� 0 prevtid prevTID ` n      a b a 1   J L��
�� 
txdl b 1   I J��
�� 
ascr��  ��   ]  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g ( " Get the fields for YNAB to import    h � i i D   G e t   t h e   f i e l d s   f o r   Y N A B   t o   i m p o r t f  j k j l  N m l���� l r   N m m n m I  N i�� o p
�� .gtqpchltns    @   @ ns   o o   N Q���� 0 thelist theList p �� q r
�� 
appr q m   T W s s � t t  F i e l d   P i c k e r r �� u v
�� 
prmp u m   Z ] w w � x x : P l e a s e   s e l e c t   t h e   D a t e   f i e l d : v �� y��
�� 
inSL y m   ` c z z � { {  D a t e��   n o      ���� 0 thedate theDate��  ��   k  | } | l  n � ~���� ~ Z   n �  �����  =  n s � � � o   n q���� 0 thedate theDate � m   q r��
�� boovfals � k   v � � �  � � � I  v ��� � �
�� .sysodlogaskr        TEXT � m   v y � � � � � > U s e r   c a n c e l e d   s c r i p t   e x e c u t i o n . � �� � �
�� 
btns � J   | � � �  ��� � m   |  � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��   �  ��� � L   � �����  ��  ��  ��  ��  ��   }  � � � l  � � ����� � r   � � � � � I   � ��� ����� 0 list_position   �  � � � c   � � � � � o   � ����� 0 thedate theDate � m   � ���
�� 
ctxt �  ��� � o   � ����� 0 thelist theList��  ��   � o      ���� 0 awkdate awkDate��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 thelist theList � �� � �
�� 
prmp � m   � � � � � � � < P l e a s e   s e l e c t   t h e   P a y e e   f i e l d : � �� ���
�� 
inSL � c   � � � � � m   � � � � � � �  D e s c r i p t i o n � m   � ���
�� 
ctxt��   � o      ���� 0 thepayee thePayee��  ��   �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � o   � ����� 0 thepayee thePayee � m   � ���
�� boovfals � k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � > U s e r   c a n c e l e d   s c r i p t   e x e c u t i o n . � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��   �  ��� � L   � �����  ��  ��  ��  ��  ��   �  � � � l  � � ����� � r   � � � � � I   � ��� ����� 0 list_position   �  � � � c   � � � � � o   � ����� 0 thepayee thePayee � m   � ���
�� 
ctxt �  ��� � o   � ����� 0 thelist theList��  ��   � o      �� 0 awkpayee awkPayee��  ��   �  � � � l     �~�}�|�~  �}  �|   �  � � � l  � ��{�z � r   � � � � I  ��y � �
�y .gtqpchltns    @   @ ns   � o   � ��x�x 0 thelist theList � �w � �
�w 
prmp � m   � � � � � � @ P l e a s e   s e l e c t   t h e   C h e c k   #   f i e l d : � �v ��u
�v 
inSL � c  	 � � � m   � � � � �  C h e c k   N u m b e r � m  �t
�t 
ctxt�u   � o      �s�s 0 thecheck theCheck�{  �z   �  � � � l 8 ��r�q � Z  8 � ��p�o � =  � � � o  �n�n 0 thecheck theCheck � m  �m
�m boovfals � k  4 � �  � � � I 1�l � �
�l .sysodlogaskr        TEXT � m   � � � � � > U s e r   c a n c e l e d   s c r i p t   e x e c u t i o n . � �k � �
�k 
btns � J  "' � �  ��j � m  "% � � � � �  O K�j   � �i ��h
�i 
dflt � m  *+�g�g �h   �  ��f � L  24�e�e  �f  �p  �o  �r  �q   �  � � � l 9J ��d�c � r  9J � � � I  9F�b ��a�b 0 list_position   �  � � � c  :?   o  :=�`�` 0 thecheck theCheck m  =>�_
�_ 
ctxt � �^ o  ?B�]�] 0 thelist theList�^  �a   � o      �\�\ 0 awkcheck awkCheck�d  �c   �  l     �[�Z�Y�[  �Z  �Y    l Kf�X�W r  Kf	 I Kb�V

�V .gtqpchltns    @   @ ns  
 o  KN�U�U 0 thelist theList �T
�T 
prmp m  QT � > P l e a s e   s e l e c t   t h e   A m o u n t   f i e l d : �S�R
�S 
inSL c  W\ m  WZ �  A m o u n t m  Z[�Q
�Q 
ctxt�R  	 o      �P�P 0 	theamount 	theAmount�X  �W    l g��O�N Z  g��M�L = gl o  gj�K�K 0 	theamount 	theAmount m  jk�J
�J boovfals k  o�  I o��I 
�I .sysodlogaskr        TEXT m  or!! �"" > U s e r   c a n c e l e d   s c r i p t   e x e c u t i o n .  �H#$
�H 
btns# J  uz%% &�G& m  ux'' �((  O K�G  $ �F)�E
�F 
dflt) m  }~�D�D �E   *�C* L  ���B�B  �C  �M  �L  �O  �N   +,+ l ��-�A�@- r  ��./. I  ���?0�>�? 0 list_position  0 121 c  ��343 o  ���=�= 0 	theamount 	theAmount4 m  ���<
�< 
ctxt2 5�;5 o  ���:�: 0 thelist theList�;  �>  / o      �9�9 0 	awkamount 	awkAmount�A  �@  , 676 l     �8�7�6�8  �7  �6  7 898 l     �5:;�5  : "  Set the field order for AWK   ; �<< 8   S e t   t h e   f i e l d   o r d e r   f o r   A W K9 =>= l ��?�4�3? r  ��@A@ b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML b  ��NON m  ��PP �QQ  $O o  ���2�2 0 awkdate awkDateM m  ��RR �SS  , $K o  ���1�1 0 awkpayee awkPayeeI m  ��TT �UU  , $G o  ���0�0 0 awkcheck awkCheckE m  ��VV �WW  , $C o  ���/�/ 0 	awkamount 	awkAmountA o      �.�. 0 awkorder awkOrder�4  �3  > XYX l     �-�,�+�-  �,  �+  Y Z[Z l     �*\]�*  \ G A AWK the file, stripping original headers and adding YNAB headers   ] �^^ �   A W K   t h e   f i l e ,   s t r i p p i n g   o r i g i n a l   h e a d e r s   a n d   a d d i n g   Y N A B   h e a d e r s[ _`_ l ��a�)�(a r  ��bcb I ���'d�&
�' .sysoexecTEXT���     TEXTd b  ��efe b  ��ghg b  ��iji b  ��klk m  ��mm �nn  c a t  l o  ���%�% 0 exportedfile exportedFilej m  ��oo �pp �   |   a w k   - F ,   ' B E G I N { O F S = " , " ;   p r i n t   " D a t e , P a y e e , C h e c k , A m o u n t " ; }   { i f   ( N R   >   1 )     { p r i n t  h o  ���$�$ 0 awkorder awkOrderf m  ��qq �rr 
   } } '  �&  c o      �#�# 0 thedata theData�)  �(  ` sts l     �"�!� �"  �!  �   t uvu l     �wx�  w #  Fix negative numbers with ()   x �yy :   F i x   n e g a t i v e   n u m b e r s   w i t h   ( )v z{z l     �|}�  | � � [Try to tweak this to either work on the awkAmount field only or to treat the entire negative number as one string to ensure it doesn't modify () in non-number fields]   } �~~P   [ T r y   t o   t w e a k   t h i s   t o   e i t h e r   w o r k   o n   t h e   a w k A m o u n t   f i e l d   o n l y   o r   t o   t r e a t   t h e   e n t i r e   n e g a t i v e   n u m b e r   a s   o n e   s t r i n g   t o   e n s u r e   i t   d o e s n ' t   m o d i f y   ( )   i n   n o n - n u m b e r   f i e l d s ]{ � l ������ r  ����� I  ������ 0 replace_chars  � ��� o  ���� 0 thedata theData� ��� m  ���� ���  ( $� ��� m  ���� ���  - $�  �  � o      �� 0 thedata theData�  �  � ��� l ����� r  ���� I  ������ 0 replace_chars  � ��� o  ���� 0 thedata theData� ��� m  ���� ���  )� ��� m  ���� ���  �  �  � o      �� 0 thedata theData�  �  � ��� l     ����  �  �  � ��� l     ����  � !  Name the new file for YNAB   � ��� 6   N a m e   t h e   n e w   f i l e   f o r   Y N A B� ��� l %���
� r  %��� c  !��� l ��	�� I ���
� .sysonwflfile    ��� null�  � ���
� 
prmt� m  	�� ���  S a v e   A s   F i l e :� ���
� 
dfnm� m  �� ���  Y N A B _ I m p o r t� ���
� 
dflc� I ��� 
� .earsffdralis        afdr� m  ��
�� afdrdesk�   �  �	  �  � m   ��
�� 
ctxt� o      ���� 0 newfile newFile�  �
  � ��� l &7������ r  &7��� c  &3��� ]  &1��� l &/������ n  &/��� m  +/��
�� 
mnth� l &+������ l &+������ I &+������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  � m  /0���� � m  12��
�� 
ctxt� o      ���� 0 themonth theMonth��  ��  � ��� l 8S������ Z 8S������� = 8A��� l 8?������ n  8?��� 1  ;?��
�� 
leng� o  8;���� 0 themonth theMonth��  ��  � m  ?@���� � r  DO��� b  DK��� m  DG�� ���  0� o  GJ���� 0 themonth theMonth� o      ���� 0 themonth theMonth��  ��  ��  ��  � ��� l Te������ r  Te��� c  Ta��� ]  T_��� l T]������ n  T]��� 1  Y]��
�� 
day � l TY������ l TY������ I TY������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  � m  ]^���� � m  _`��
�� 
ctxt� o      ���� 0 theday theDay��  ��  � ��� l f������� Z f�������� = fo��� l fm������ n  fm��� 1  im��
�� 
leng� o  fi���� 0 theday theDay��  ��  � m  mn���� � r  r}��� b  ry��� m  ru�� ���  0� o  ux���� 0 theday theDay� o      ���� 0 theday theDay��  ��  ��  ��  � ��� l �������� r  ����� c  ����� ]  ����� l �������� n  ����� 1  ����
�� 
year� l �������� l �� ����  I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  � m  ������ � m  ����
�� 
ctxt� o      ���� 0 theyear theYear��  ��  �  l ������ r  �� c  �� n  ��	 1  ����
�� 
time	 l ��
����
 l ������ I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   m  ����
�� 
ctxt o      ���� 0 thetime theTime��  ��    l ������ r  �� b  �� b  �� b  �� b  �� b  �� b  �� o  ������ 0 newfile newFile m  �� �  _ o  ������ 0 themonth theMonth o  ������ 0 theday theDay o  ������ 0 theyear theYear o  ������ 0 thetime theTime m  �� �    . c s v o      ���� 0 newfile newFile��  ��   !"! l     ��������  ��  ��  " #$# l     ��%&��  % #  Create the new file for YNAB   & �'' :   C r e a t e   t h e   n e w   f i l e   f o r   Y N A B$ ()( l ��*����* r  ��+,+ I ����-.
�� .rdwropenshor       file- l ��/����/ o  ������ 0 newfile newFile��  ��  . ��0��
�� 
perm0 m  ����
�� boovtrue��  , o      ���� 0 myfile myFile��  ��  ) 121 l ��3����3 I ����45
�� .rdwrwritnull���     ****4 o  ������ 0 thedata theData5 ��6��
�� 
refn6 o  ������ 0 myfile myFile��  ��  ��  2 787 l ��9����9 I ����:��
�� .rdwrclosnull���     ****: o  ������ 0 myfile myFile��  ��  ��  8 ;<; l     ��������  ��  ��  < =>= l �?����? O  �@A@ k  � BB CDC I ��������
�� .miscactvnull��� ��� obj ��  ��  D E��E I � ��F��
�� .miscslctnull���    obj F 4  ����G
�� 
fileG o  ���� 0 newfile newFile��  ��  A m  ��HH�                                                                                  MACS  alis    t  Macintosh HD               ���H+   �B
Finder.app                                                      ��϶�U        ����  	                CoreServices    ��D4      ϶��     �B �? �>  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  > IJI l     �~�}�|�~  �}  �|  J KLK l     �{MN�{  M > 8 Sub-routine to determine field number of chosen headers   N �OO p   S u b - r o u t i n e   t o   d e t e r m i n e   f i e l d   n u m b e r   o f   c h o s e n   h e a d e r sL PQP i     RSR I      �zT�y�z 0 list_position  T UVU o      �x�x 0 	this_item  V W�wW o      �v�v 0 	this_list  �w  �y  S k     %XX YZY Y     "[�u\]�t[ Z   ^_�s�r^ =   `a` n    bcb 4    �qd
�q 
cobjd o    �p�p 0 i  c o    �o�o 0 	this_list  a o    �n�n 0 	this_item  _ L    ee o    �m�m 0 i  �s  �r  �u 0 i  \ m    �l�l ] l   	f�k�jf I   	�ig�h
�i .corecnte****       ****g o    �g�g 0 	this_list  �h  �k  �j  �t  Z h�fh L   # %ii m   # $�e�e  �f  Q jkj l     �d�c�b�d  �c  �b  k lml l     �ano�a  n %  Sub-routine for find & replace   o �pp >   S u b - r o u t i n e   f o r   f i n d   &   r e p l a c em qrq i    sts I      �`u�_�` 0 replace_chars  u vwv o      �^�^ 0 	this_text  w xyx o      �]�] 0 search_string  y z�\z o      �[�[ 0 replacement_string  �\  �_  t k     &{{ |}| r     ~~ n    ��� 1    �Z
�Z 
txdl� 1     �Y
�Y 
ascr o      �X�X 0 prevtid prevTID} ��� r    ��� l   ��W�V� o    �U�U 0 search_string  �W  �V  � n     ��� 1    
�T
�T 
txdl� 1    �S
�S 
ascr� ��� r    ��� n    ��� 2    �R
�R 
citm� o    �Q�Q 0 	this_text  � l     ��P�O� o      �N�N 0 	item_list  �P  �O  � ��� r    ��� l   ��M�L� o    �K�K 0 replacement_string  �M  �L  � n     ��� 1    �J
�J 
txdl� 1    �I
�I 
ascr� ��� r    ��� c    ��� l   ��H�G� o    �F�F 0 	item_list  �H  �G  � m    �E
�E 
TEXT� o      �D�D 0 	this_text  � ��� r    #��� o    �C�C 0 prevtid prevTID� n     ��� 1     "�B
�B 
txdl� 1     �A
�A 
ascr� ��@� L   $ &�� o   $ %�?�? 0 	this_text  �@  r ��>� l     �=�<�;�=  �<  �;  �>       �:�����:  � �9�8�7�9 0 list_position  �8 0 replace_chars  
�7 .aevtoappnull  �   � ****� �6S�5�4���3�6 0 list_position  �5 �2��2 �  �1�0�1 0 	this_item  �0 0 	this_list  �4  � �/�.�-�/ 0 	this_item  �. 0 	this_list  �- 0 i  � �,�+
�, .corecnte****       ****
�+ 
cobj�3 & !k�j  kh ��/�  �Y h[OY��Oj� �*t�)�(���'�* 0 replace_chars  �) �&��& �  �%�$�#�% 0 	this_text  �$ 0 search_string  �# 0 replacement_string  �(  � �"�!� ���" 0 	this_text  �! 0 search_string  �  0 replacement_string  � 0 prevtid prevTID� 0 	item_list  � ����
� 
ascr
� 
txdl
� 
citm
� 
TEXT�' '��,E�O���,FO��-E�O���,FO��&E�O���,FO�� �������
� .aevtoappnull  �   � ****� k    ��  
��  ��  (��  7��  E��  L��  U��  \��  j��  |��  ���  ���  ���  ���  ���  ���  ��� �� �� +�� =�� _�� �� ��� ��� ��� ��� ��� ��� ��� �� �� (�� 1�� 7�� =��  �  �  �  � d��������� / A C��
�	�� Q��� s� w� z�� �� ��� ����������� � ��� � ��� � ��� � �����!'��PRTV��moq��������������������������������������������������������������
� .sysostdfalis    ��� null
� 
psxp
� 
ctxt� 0 exportedfile exportedFile
� afdrtemp
� 
from
� fldmfldu
� .earsffdralis        afdr� 0 
tempfolder 
tempFolder
� .sysoexecTEXT���     TEXT�
 0 
headertext 
headerText
�	 
ascr
� 
txdl� 0 prevtid prevTID
� 
citm� 0 thelist theList
� 
appr
� 
prmp
� 
inSL� 
�  .gtqpchltns    @   @ ns  �� 0 thedate theDate
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 list_position  �� 0 awkdate awkDate�� 0 thepayee thePayee�� 0 awkpayee awkPayee�� 0 thecheck theCheck�� 0 awkcheck awkCheck�� 0 	theamount 	theAmount�� 0 	awkamount 	awkAmount�� 0 awkorder awkOrder�� 0 thedata theData�� 0 replace_chars  
�� 
prmt
�� 
dfnm
�� 
dflc
�� afdrdesk
�� .sysonwflfile    ��� null�� 0 newfile newFile
�� .misccurdldt    ��� null
�� 
mnth�� 0 themonth theMonth
�� 
leng
�� 
day �� 0 theday theDay
�� 
year�� 0 theyear theYear
�� 
time�� 0 thetime theTime
�� 
perm
�� .rdwropenshor       file�� 0 myfile myFile
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****
�� .miscactvnull��� ��� obj 
�� 
file
�� .miscslctnull���    obj �*j  �,�&E�O���l E�O� �EQ�UO��%�%j E�O��,E` Oa ��,FO�a -E` O_ ��,FO_ a a a a a a a  E` O_ f  a a a kva  ka ! "OhY hO*_ �&_ l+ #E` $O_ a a %a a &�&a ! E` 'O_ 'f  a (a a )kva  ka ! "OhY hO*_ '�&_ l+ #E` *O_ a a +a a ,�&a ! E` -O_ -f  a .a a /kva  ka ! "OhY hO*_ -�&_ l+ #E` 0O_ a a 1a a 2�&a ! E` 3O_ 3f  a 4a a 5kva  ka ! "OhY hO*_ 3�&_ l+ #E` 6Oa 7_ $%a 8%_ *%a 9%_ 0%a :%_ 6%E` ;Oa <�%a =%_ ;%a >%j E` ?O*_ ?a @a Am+ BE` ?O*_ ?a Ca Dm+ BE` ?O*a Ea Fa Ga Ha Ia Jj a  K�&E` LO*j Ma N,k �&E` OO_ Oa P,k  a Q_ O%E` OY hO*j Ma R,k �&E` SO_ Sa P,k  a T_ S%E` SY hO*j Ma U,k �&E` VO*j Ma W,�&E` XO_ La Y%_ O%_ S%_ V%_ X%a Z%E` LO_ La [el \E` ]O_ ?a ^_ ]l _O_ ]j `O� *j aO*a b_ L/j cUascr  ��ޭ