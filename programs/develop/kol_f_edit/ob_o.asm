;lang equ ru

include 'obj_codes.inc'

macro ObjOpt id,bl_type,graph,info,caption,Col,img,bit_prop,bit_val
{
dd id
db bl_type
db graph
@@: db info
rb @b+30-$
@@: db caption
rb @b+MAX_OPT_CAPTION-$
dw Col
dw img ;������� ���⨭�� (� 䠩�� 'icon.bmp')
dd bit_prop+0 ;㪠��⥫� �� �������� ��⮢�� ᢮���
dd bit_val+0 ;㪠��⥫� �� ���祭�� (����⠭��) ��⮢�� ᢮���
}

ObjOpt C_TDF,  0,0,'��� �������','',\
	< 0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	< 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>
ObjOpt C_VAR,  0,0,'��६�����','��� ��६�����*���祭�� �� 㬮�砭��*�������਩',\
	<40, 80,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	< 0, -1,  5, -1, -1, -1, -1, -1, -1, -1, -1>
ObjOpt C_STR,  1,0,'�������','��� ��������*��ࠬ���� ��� �����',\
	<40,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	< 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>
ObjOpt C_ACO,  1,0,'��� ���','',\
	<0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	<2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>,\
	txt_bit_auto
ObjOpt C_BUT,  1,1,'������','�����䨪���*����� ᫥��*����� ᢥ���*�ਭ�*����*梥�*��� ��⪨ �� ����⨨',\
	<20, 40, 60, 80,100,120,  0,  0,  0,  0, 0>,\
	<29, 15, 16, 26, 27, 25, -1, -1, -1, -1,-1>,\
	txt_bit_but
ObjOpt C_EDB,  1,1,'����⮢�� ����',\
	'��� �������� editbox*�ਭ� ����*����� ᫥��*����� ᢥ���*梥� 䮭�*梥� �뤥����� �� 㤥ন����� shift ��� ��誮�*梥� ࠬ��*梥� ࠬ�� �� ����⨢��� ����*梥� ⥪��*���ᨬ��쭠� ����� ⥪��*��砫�� ⥪��',\
	<30, 40, 50, 60, 80,100,120,140,160,170, 0>,\
	<10, 26, 15, 16, 25, 25, 25, 25, 25, -1, 4>,\
	txt_bit_edit,txt_bit_edit.v
ObjOpt C_OPT,  1,1,'����� ������','���*����� ᫥��*����� ᢥ���*梥� 䮭� �����*梥� ࠬ�� � �����. ����窨*梥� ⥪��*�������*����� �� ������*ࠧ��� ������',\
	<40, 50, 60, 80,100,120,180,190,  0,  0, 0>,\
	< 9, 15, 16, 25, 25, 25,  4, 26, 27, -1, -1>
ObjOpt C_CHB,  1,1,'������','��� ��������*����� ᫥��*����� ᢥ���*�ਭ�*����*����� �� ������*梥� 䮭� �����*梥� ࠬ�� � �����. ����窨*梥� ⥪��*�������',\
	<40, 50, 60, 70, 80, 90,110,130,150,  0, 0>,\
	< 8, 15, 16, 26, 27, 26, 25, 25, 25,  4,-1>,\
	txt_bit_che,txt_bit_che.v
ObjOpt C_TXT,  1,0,'asm ���','',\
	< 0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	<11, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>
ObjOpt C_WND,  1,1,'����','��������� ����*�⨫� ����*����� ᫥��*����� ᢥ���*�ਭ�*����*梥� ������᪮� ������*梥� ��������� (�᫨ ����)',\
	<98,100,110,120,130,150,170,  0,  0,  0, 0>,\
	<12, -1, 15, 16, 26, 27, 25, 25, -1, -1, -1>,\
	txt_bit_wnd,txt_bit_wnd.v
ObjOpt C_INC,  1,0,'����祭�� 䠩��','��� 䠩��*�������਩',\
	<100, 0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	< 6,  5, -1, -1, -1, -1, -1, -1, -1, -1, -1>
ObjOpt C_LIB,  1,0,'������ ������⥪�','��� ����.*���. ���.*��⪠ ������*���⠢��*�訡�� �� �������*�訡�� �� ���� ������',\
	<30, 80,110,120,160,  0,  0,  0,  0,  0, 0>,\
	<20, -1, -1, -1,  4,  4, -1, -1, -1, -1, -1>
ObjOpt C_IFN,  1,0,'�㭪�� �� ������⥪�','�ணࠬ��� ��� �㭪樨*�������㥬�� ��� �㭪樨',\
	<100, 0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	<21, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>,\
	txt_bit_ifn
ObjOpt C_DTT,  1,1,'��ᮢ���� ⥪��','⥪�⮢�� ��ப�*���न��� �� x*���न��� �� y*梥� ⥪��*梥� 䮭� (�᫨ ����)',\
	<40, 50, 60, 80,  0,  0,  0,  0,  0,  0, 0>,\
	< 4, 15, 16, 25, 25, -1, -1, -1, -1, -1, -1>,\
	txt_bit_caption,txt_bit_caption.v
ObjOpt C_REC,  1,1,'��אַ㣮�쭨�','梥�*����� ᫥��*����� ᢥ���*�ਭ�*����',\
	<20, 40, 60, 80,  0,  0,  0,  0,  0,  0, 0>,\
	<25, 15, 16, 26, 27, -1, -1, -1, -1, -1, -1>
ObjOpt C_KEY,  1,0,'����⨥ �� ����������','',\
	< 0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	<28, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>
ObjOpt 0x0d,  1,0, '-','',\
	<20,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0>,\
	<-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1>

dd 0 ;ࠧ����⥫�

;�������� ��⮢�� ᢮���
txt_bit_auto db '��ࢮ��砫�� ����ன�� ������⮢',0
	db 'ᮡ��� �� ���',0
	db '���� ������⮢',0
	db '������ �� ������',0
	db 0
txt_bit_wnd db '������� ����',0
	db '����. �⭮�⥫쭮 ������᪮� ���.',0
	db '���� �� ����訢��� ��������� ���.',0
	db '�ࠤ���⭠� ������� ࠡ. ���.',0
	db 0
.v:
	db '0x10000000',0
	db '0x20000000',0
	db '0x40000000',0
	db '0x80000000',0
	db 0
txt_bit_edit db '� 䮪��',0
	db '���� �� 0-9',0
	db 0
.v:
	db 'ed_focus',0
	db 'ed_figure_only',0
	db 0
txt_bit_che db 'check_box ��࠭',0
	db '⥪�� c�����',0
	db '⥪�� �� 業���',0
	db '⥪�� c����',0
	db 0
.v:
	db 'ch_flag_en',0
	db 'ch_flag_top',0
	db 'ch_flag_middle',0
	db 'ch_flag_bottom',0
	db 0
txt_bit_but db '�� �ᮢ��� ������',0
	db '�� �ᮢ��� �࠭��� �� ����⨨',0
	db 0
txt_bit_caption db '��ப� ASCII ������. 0',0
	db '������� 䮭�',0
	db '2-� ����',0
	db 0
.v:
	db '0x80000000',0
	db '0x40000000',0
	db '0x10000000',0
	db 0
txt_bit_ifn db '��������஢��� �㭪��',0
	db 0