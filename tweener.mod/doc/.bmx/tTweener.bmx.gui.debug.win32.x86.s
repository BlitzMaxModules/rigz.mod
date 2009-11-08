	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_tweener_tweener
	extrn	___bb_wavloader_wavloader
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_glmax2d_GLMax2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawOval
	extrn	_brl_polledinput_KeyDown
	extrn	_rigz_tweener_tTweener
	public	__bb_Testoval_Create
	public	__bb_Testoval_Delete
	public	__bb_Testoval_New
	public	__bb_Testoval_Render
	public	__bb_Testoval_capture
	public	__bb_Testoval_update
	public	__bb_main
	public	_bb_Testoval
	public	_bb_Tweener
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	cmp	dword [_110],0
	je	_111
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_111:
	mov	dword [_110],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	push	ebp
	push	_104
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_tweener_tweener
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_Testoval
	call	_bbObjectRegisterType
	add	esp,4
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_71]
	and	eax,1
	cmp	eax,0
	jne	_72
	push	_rigz_tweener_tTweener
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_69
	call	_brl_blitz_NullObjectError
_69:
	push	1092616192
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Tweener],eax
	or	dword [_71],1
_72:
	push	_73
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Testoval
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_75
	call	_brl_blitz_NullObjectError
_75:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-4],eax
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_22
_24:
	push	ebp
	push	_103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_81
	call	_brl_blitz_NullObjectError
_81:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],1
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_85
	call	_brl_blitz_NullObjectError
_85:
	mov	ebx,dword [ebx+32]
	jmp	_86
_27:
	push	ebp
	push	_94
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Tweener]
	cmp	esi,_bbNullObject
	jne	_90
	call	_brl_blitz_NullObjectError
_90:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_93
	call	_brl_blitz_NullObjectError
_93:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_25:
	add	dword [ebp-8],1
_86:
	cmp	dword [ebp-8],ebx
	jle	_27
_26:
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_99
	call	_brl_blitz_NullObjectError
_99:
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_101
	call	_brl_blitz_NullObjectError
_101:
	fld	qword [ebx+40]
	sub	esp,4
	fstp	dword [esp]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_22:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_24
_23:
	mov	ebx,0
	jmp	_43
_43:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Testoval_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Testoval
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fld	dword [_184]
	fstp	dword [eax+16]
	push	ebp
	push	_112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_46
_46:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Testoval_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_49:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_115
_115:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Testoval_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Testoval
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	jmp	_52
_52:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Testoval_update:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_120
	call	_brl_blitz_NullObjectError
_120:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_123
	call	_brl_blitz_NullObjectError
_123:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_126
	call	_brl_blitz_NullObjectError
_126:
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_128
	call	_brl_blitz_NullObjectError
_128:
	fld	dword [esi+8]
	fld	dword [edi+16]
	fdiv	qword [ebx+8]
	faddp	st1,st0
	fstp	dword [esi+8]
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_131
	call	_brl_blitz_NullObjectError
_131:
	fld	dword [ebx+8]
	fstp	dword [ebp-8]
	call	_brl_graphics_GraphicsWidth
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fld	dword [ebp-8]
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_132
	mov	eax,ebp
	push	eax
	push	_139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_135
	call	_brl_blitz_NullObjectError
_135:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	fld	dword [esi+16]
	fchs
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_132:
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	fld	dword [ebx+8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_143
	mov	eax,ebp
	push	eax
	push	_150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_146
	call	_brl_blitz_NullObjectError
_146:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_149
	call	_brl_blitz_NullObjectError
_149:
	fld	dword [esi+16]
	fchs
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_143:
	mov	ebx,0
	jmp	_55
_55:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Testoval_Render:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	push	ebp
	push	_162
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	push	dword [ebp-8]
	push	dword [ebx+8]
	push	dword [esi+12]
	mov	eax,dword [_bb_Tweener]
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
	fstp	dword [ebp-12]
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1112014848
	push	1112014848
	push	1127153664
	fld	dword [ebp-12]
	fsub	dword [_206]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_161
	call	_brl_blitz_NullObjectError
_161:
	push	1112014848
	push	1112014848
	push	1133084672
	fld	dword [ebx+8]
	fsub	dword [_207]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawOval
	add	esp,16
	mov	ebx,0
	jmp	_59
_59:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Testoval_capture:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_171
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_170
	call	_brl_blitz_NullObjectError
_170:
	fld	dword [esi+8]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_62
_62:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_110:
	dd	0
_105:
	db	"tTweener",0
_106:
	db	"Tweener",0
_107:
	db	":rigz.tweener.tTweener",0
	align	4
_bb_Tweener:
	dd	_bbNullObject
_108:
	db	"oval",0
_109:
	db	":Testoval",0
	align	4
_104:
	dd	1
	dd	_105
	dd	4
	dd	_106
	dd	_107
	dd	_bb_Tweener
	dd	2
	dd	_108
	dd	_109
	dd	-4
	dd	0
_29:
	db	"Testoval",0
_30:
	db	"x",0
_31:
	db	"f",0
_32:
	db	"oldx",0
_33:
	db	"speed",0
_34:
	db	"New",0
_35:
	db	"()i",0
_36:
	db	"Delete",0
_37:
	db	"Create",0
_38:
	db	"():Testoval",0
_39:
	db	"update",0
_40:
	db	"Render",0
_41:
	db	"(f)i",0
_42:
	db	"capture",0
	align	4
_28:
	dd	2
	dd	_29
	dd	3
	dd	_30
	dd	_31
	dd	8
	dd	3
	dd	_32
	dd	_31
	dd	12
	dd	3
	dd	_33
	dd	_31
	dd	16
	dd	6
	dd	_34
	dd	_35
	dd	16
	dd	6
	dd	_36
	dd	_35
	dd	20
	dd	6
	dd	_37
	dd	_38
	dd	48
	dd	6
	dd	_39
	dd	_35
	dd	52
	dd	6
	dd	_40
	dd	_41
	dd	56
	dd	6
	dd	_42
	dd	_35
	dd	60
	dd	0
	align	4
_bb_Testoval:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_28
	dd	20
	dd	__bb_Testoval_New
	dd	__bb_Testoval_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Testoval_Create
	dd	__bb_Testoval_update
	dd	__bb_Testoval_Render
	dd	__bb_Testoval_capture
_65:
	db	"$BMXPATH/mod/rigz.mod/tweener.mod/doc/tTweener.bmx",0
	align	4
_64:
	dd	_65
	dd	5
	dd	1
	align	4
_66:
	dd	_65
	dd	7
	dd	1
	align	4
_67:
	dd	_65
	dd	9
	dd	1
	align	4
_71:
	dd	0
	align	4
_73:
	dd	_65
	dd	49
	dd	1
	align	4
_77:
	dd	_65
	dd	52
	dd	1
	align	4
_103:
	dd	3
	dd	0
	dd	0
	align	4
_78:
	dd	_65
	dd	54
	dd	2
	align	4
_79:
	dd	_65
	dd	57
	dd	2
	align	4
_82:
	dd	_65
	dd	59
	dd	2
_95:
	db	"Ticks",0
_96:
	db	"i",0
	align	4
_94:
	dd	3
	dd	0
	dd	2
	dd	_95
	dd	_96
	dd	-8
	dd	0
	align	4
_88:
	dd	_65
	dd	61
	dd	3
	align	4
_91:
	dd	_65
	dd	62
	dd	3
	align	4
_97:
	dd	_65
	dd	66
	dd	2
	align	4
_102:
	dd	_65
	dd	68
	dd	2
_114:
	db	"Self",0
	align	4
_113:
	dd	1
	dd	_34
	dd	2
	dd	_114
	dd	_109
	dd	-4
	dd	0
	align	4
_184:
	dd	0x43480000
	align	4
_112:
	dd	3
	dd	0
	dd	0
	align	4
_117:
	dd	1
	dd	_37
	dd	2
	dd	_114
	dd	_109
	dd	-4
	dd	0
	align	4
_116:
	dd	_65
	dd	20
	dd	3
	align	4
_151:
	dd	1
	dd	_39
	dd	2
	dd	_114
	dd	_109
	dd	-4
	dd	0
	align	4
_118:
	dd	_65
	dd	25
	dd	3
	align	4
_121:
	dd	_65
	dd	27
	dd	3
	align	4
_129:
	dd	_65
	dd	29
	dd	3
	align	4
_139:
	dd	3
	dd	0
	dd	0
	align	4
_133:
	dd	_65
	dd	29
	dd	26
	align	4
_140:
	dd	_65
	dd	30
	dd	3
	align	4
_150:
	dd	3
	dd	0
	dd	0
	align	4
_144:
	dd	_65
	dd	30
	dd	12
_163:
	db	"tween",0
_164:
	db	"TweenedX",0
	align	4
_162:
	dd	1
	dd	_40
	dd	2
	dd	_114
	dd	_109
	dd	-4
	dd	2
	dd	_163
	dd	_31
	dd	-8
	dd	2
	dd	_164
	dd	_31
	dd	-12
	dd	0
	align	4
_152:
	dd	_65
	dd	36
	dd	3
	align	4
_158:
	dd	_65
	dd	38
	dd	3
	align	4
_206:
	dd	0x41200000
	align	4
_159:
	dd	_65
	dd	40
	dd	3
	align	4
_207:
	dd	0x41200000
	align	4
_171:
	dd	1
	dd	_42
	dd	2
	dd	_114
	dd	_109
	dd	-4
	dd	0
	align	4
_165:
	dd	_65
	dd	45
	dd	3
