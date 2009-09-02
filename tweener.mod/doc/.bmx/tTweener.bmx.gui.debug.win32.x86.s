	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_color_color
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
	cmp	dword [_106],0
	je	_107
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_107:
	mov	dword [_106],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	push	ebp
	push	_100
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
	call	___bb_color_color
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	push	_bb_Testoval
	call	_bbObjectRegisterType
	add	esp,4
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_62
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_67]
	and	eax,1
	cmp	eax,0
	jne	_68
	push	_rigz_tweener_tTweener
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_65
	call	_brl_blitz_NullObjectError
_65:
	push	1106247680
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Tweener],eax
	or	dword [_67],1
_68:
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Testoval
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_71
	call	_brl_blitz_NullObjectError
_71:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-4],eax
	push	_73
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_18
_20:
	push	ebp
	push	_99
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_77
	call	_brl_blitz_NullObjectError
_77:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],1
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_81
	call	_brl_blitz_NullObjectError
_81:
	mov	ebx,dword [ebx+20]
	jmp	_82
_23:
	push	ebp
	push	_90
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Tweener]
	cmp	esi,_bbNullObject
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_89
	call	_brl_blitz_NullObjectError
_89:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_21:
	add	dword [ebp-8],1
_82:
	cmp	dword [ebp-8],ebx
	jle	_23
_22:
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_95
	call	_brl_blitz_NullObjectError
_95:
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_97
	call	_brl_blitz_NullObjectError
_97:
	push	dword [ebx+24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_18:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_20
_19:
	mov	ebx,0
	jmp	_39
_39:
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
	push	_109
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
	fld	dword [_180]
	fstp	dword [eax+16]
	push	ebp
	push	_108
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_42
_42:
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
_45:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_111
_111:
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
	push	_113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Testoval
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	jmp	_48
_48:
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
	push	_147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_116
	call	_brl_blitz_NullObjectError
_116:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_119
	call	_brl_blitz_NullObjectError
_119:
	mov	esi,ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	mov	ebx,dword [_bb_Tweener]
	cmp	ebx,_bbNullObject
	jne	_124
	call	_brl_blitz_NullObjectError
_124:
	fld	dword [esi+8]
	fld	dword [edi+16]
	fdiv	dword [ebx+8]
	faddp	st1,st0
	fstp	dword [esi+8]
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_127
	call	_brl_blitz_NullObjectError
_127:
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
	jne	_128
	mov	eax,ebp
	push	eax
	push	_135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_131
	call	_brl_blitz_NullObjectError
_131:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_134
	call	_brl_blitz_NullObjectError
_134:
	fld	dword [esi+16]
	fchs
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_128:
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	fld	dword [ebx+8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_139
	mov	eax,ebp
	push	eax
	push	_146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_145
	call	_brl_blitz_NullObjectError
_145:
	fld	dword [esi+16]
	fchs
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
_139:
	mov	ebx,0
	jmp	_51
_51:
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
	push	_158
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	push	dword [ebp-8]
	push	dword [ebx+8]
	push	dword [esi+12]
	mov	eax,dword [_bb_Tweener]
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
	fstp	dword [ebp-12]
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1112014848
	push	1112014848
	push	1127153664
	fld	dword [ebp-12]
	fsub	dword [_202]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawOval
	add	esp,16
	push	_155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_157
	call	_brl_blitz_NullObjectError
_157:
	push	1112014848
	push	1112014848
	push	1133084672
	fld	dword [ebx+8]
	fsub	dword [_203]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_DrawOval
	add	esp,16
	mov	ebx,0
	jmp	_55
_55:
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
	push	_167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_163
	call	_brl_blitz_NullObjectError
_163:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	fld	dword [esi+8]
	fstp	dword [ebx+12]
	mov	ebx,0
	jmp	_58
_58:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_106:
	dd	0
_101:
	db	"tTweener",0
_102:
	db	"Tweener",0
_103:
	db	":rigz.tweener.tTweener",0
	align	4
_bb_Tweener:
	dd	_bbNullObject
_104:
	db	"oval",0
_105:
	db	":Testoval",0
	align	4
_100:
	dd	1
	dd	_101
	dd	4
	dd	_102
	dd	_103
	dd	_bb_Tweener
	dd	2
	dd	_104
	dd	_105
	dd	-4
	dd	0
_25:
	db	"Testoval",0
_26:
	db	"x",0
_27:
	db	"f",0
_28:
	db	"oldx",0
_29:
	db	"speed",0
_30:
	db	"New",0
_31:
	db	"()i",0
_32:
	db	"Delete",0
_33:
	db	"Create",0
_34:
	db	"():Testoval",0
_35:
	db	"update",0
_36:
	db	"Render",0
_37:
	db	"(f)i",0
_38:
	db	"capture",0
	align	4
_24:
	dd	2
	dd	_25
	dd	3
	dd	_26
	dd	_27
	dd	8
	dd	3
	dd	_28
	dd	_27
	dd	12
	dd	3
	dd	_29
	dd	_27
	dd	16
	dd	6
	dd	_30
	dd	_31
	dd	16
	dd	6
	dd	_32
	dd	_31
	dd	20
	dd	6
	dd	_33
	dd	_34
	dd	48
	dd	6
	dd	_35
	dd	_31
	dd	52
	dd	6
	dd	_36
	dd	_37
	dd	56
	dd	6
	dd	_38
	dd	_31
	dd	60
	dd	0
	align	4
_bb_Testoval:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_24
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
_61:
	db	"$BMXPATH/mod/rigz.mod/tweener.mod/doc/tTweener.bmx",0
	align	4
_60:
	dd	_61
	dd	5
	dd	1
	align	4
_62:
	dd	_61
	dd	7
	dd	1
	align	4
_63:
	dd	_61
	dd	9
	dd	1
	align	4
_67:
	dd	0
	align	4
_69:
	dd	_61
	dd	49
	dd	1
	align	4
_73:
	dd	_61
	dd	52
	dd	1
	align	4
_99:
	dd	3
	dd	0
	dd	0
	align	4
_74:
	dd	_61
	dd	54
	dd	2
	align	4
_75:
	dd	_61
	dd	57
	dd	2
	align	4
_78:
	dd	_61
	dd	59
	dd	2
_91:
	db	"Ticks",0
_92:
	db	"i",0
	align	4
_90:
	dd	3
	dd	0
	dd	2
	dd	_91
	dd	_92
	dd	-8
	dd	0
	align	4
_84:
	dd	_61
	dd	61
	dd	3
	align	4
_87:
	dd	_61
	dd	62
	dd	3
	align	4
_93:
	dd	_61
	dd	66
	dd	2
	align	4
_98:
	dd	_61
	dd	68
	dd	2
_110:
	db	"Self",0
	align	4
_109:
	dd	1
	dd	_30
	dd	2
	dd	_110
	dd	_105
	dd	-4
	dd	0
	align	4
_180:
	dd	0x43480000
	align	4
_108:
	dd	3
	dd	0
	dd	0
	align	4
_113:
	dd	1
	dd	_33
	dd	2
	dd	_110
	dd	_105
	dd	-4
	dd	0
	align	4
_112:
	dd	_61
	dd	20
	dd	3
	align	4
_147:
	dd	1
	dd	_35
	dd	2
	dd	_110
	dd	_105
	dd	-4
	dd	0
	align	4
_114:
	dd	_61
	dd	25
	dd	3
	align	4
_117:
	dd	_61
	dd	27
	dd	3
	align	4
_125:
	dd	_61
	dd	29
	dd	3
	align	4
_135:
	dd	3
	dd	0
	dd	0
	align	4
_129:
	dd	_61
	dd	29
	dd	26
	align	4
_136:
	dd	_61
	dd	30
	dd	3
	align	4
_146:
	dd	3
	dd	0
	dd	0
	align	4
_140:
	dd	_61
	dd	30
	dd	12
_159:
	db	"tween",0
_160:
	db	"TweenedX",0
	align	4
_158:
	dd	1
	dd	_36
	dd	2
	dd	_110
	dd	_105
	dd	-4
	dd	2
	dd	_159
	dd	_27
	dd	-8
	dd	2
	dd	_160
	dd	_27
	dd	-12
	dd	0
	align	4
_148:
	dd	_61
	dd	36
	dd	3
	align	4
_154:
	dd	_61
	dd	38
	dd	3
	align	4
_202:
	dd	0x41200000
	align	4
_155:
	dd	_61
	dd	40
	dd	3
	align	4
_203:
	dd	0x41200000
	align	4
_167:
	dd	1
	dd	_38
	dd	2
	dd	_110
	dd	_105
	dd	-4
	dd	0
	align	4
_161:
	dd	_61
	dd	45
	dd	3
