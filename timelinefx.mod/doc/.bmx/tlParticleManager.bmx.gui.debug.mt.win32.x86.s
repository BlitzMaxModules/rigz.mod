	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_timelinefx_timelinefx
	extrn	___bb_tweener_tweener
	extrn	_bbNullObject
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringFromInt
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_glmax2d_GLMax2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_GraphicsHeight
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_AppTerminate
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_MouseHit
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_rigz_entity_SetUpdateFrequency
	extrn	_rigz_timelinefx_CopyEffect
	extrn	_rigz_timelinefx_CreateParticleManager
	extrn	_rigz_timelinefx_LoadEffects
	extrn	_rigz_tweener_tTweener
	public	__bb_main
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	cmp	dword [_112],0
	je	_113
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_113:
	mov	dword [_112],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],0
	push	ebp
	push	_103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_timelinefx_timelinefx
	call	___bb_tweener_tweener
	push	_30
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_32
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_20
	call	_rigz_timelinefx_LoadEffects
	add	esp,8
	mov	dword [ebp-4],eax
	push	_34
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_36
	call	_brl_blitz_NullObjectError
_36:
	push	_21
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_38
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	5000
	call	_rigz_timelinefx_CreateParticleManager
	add	esp,4
	mov	dword [ebp-12],eax
	push	_40
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_41
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_43
	call	_brl_blitz_NullObjectError
_43:
	call	_brl_graphics_GraphicsHeight
	push	eax
	call	_brl_graphics_GraphicsWidth
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,12
	push	_44
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_46
	call	_brl_blitz_NullObjectError
_46:
	push	1065353216
	call	_brl_graphics_GraphicsHeight
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_graphics_GraphicsWidth
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,16
	push	_47
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	call	_rigz_entity_SetUpdateFrequency
	add	esp,4
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_rigz_tweener_tTweener
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_50
	call	_brl_blitz_NullObjectError
_50:
	push	1106247680
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_22
_24:
	push	ebp
	push	_102
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_55
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_56
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_57
	push	ebp
	push	_69
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_58
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_rigz_timelinefx_CopyEffect
	add	esp,12
	mov	dword [ebp-20],eax
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_62
	call	_brl_blitz_NullObjectError
_62:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,8
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_65
	call	_brl_blitz_NullObjectError
_65:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,8
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_68
	call	_brl_blitz_NullObjectError
_68:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_57:
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_74
	call	_brl_blitz_NullObjectError
_74:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],1
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_78
	call	_brl_blitz_NullObjectError
_78:
	mov	ebx,dword [ebx+32]
	jmp	_79
_27:
	push	ebp
	push	_87
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_83
	call	_brl_blitz_NullObjectError
_83:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_25:
	add	dword [ebp-24],1
_79:
	cmp	dword [ebp-24],ebx
	jle	_27
_26:
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_92
	call	_brl_blitz_NullObjectError
_92:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_94
	call	_brl_blitz_NullObjectError
_94:
	fld	qword [ebx+40]
	sub	esp,4
	fstp	dword [esp]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_100
	call	_brl_blitz_NullObjectError
_100:
	push	1092616192
	push	1092616192
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_101
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
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_53
	call	_brl_polledinput_AppTerminate
_53:
	cmp	eax,0
	jne	_24
_23:
	mov	ebx,0
	jmp	_28
_28:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_112:
	dd	0
_104:
	db	"tlParticleManager",0
_105:
	db	"MyEffectsLib",0
_106:
	db	":rigz.timelinefx.tlEffectsLibrary",0
_107:
	db	"MyEffect",0
_71:
	db	":rigz.timelinefx.tlEffect",0
_108:
	db	"MyParticleManager",0
_109:
	db	":rigz.timelinefx.tlParticleManager",0
_110:
	db	"Tweener",0
_111:
	db	":rigz.tweener.tTweener",0
	align	4
_103:
	dd	1
	dd	_104
	dd	2
	dd	_105
	dd	_106
	dd	-4
	dd	2
	dd	_107
	dd	_71
	dd	-8
	dd	2
	dd	_108
	dd	_109
	dd	-12
	dd	2
	dd	_110
	dd	_111
	dd	-16
	dd	0
_31:
	db	"$BMXPATH/mod/rigz.mod/timelinefx.mod/doc/tlParticleManager.bmx",0
	align	4
_30:
	dd	_31
	dd	7
	dd	1
	align	4
_32:
	dd	_31
	dd	10
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	101,102,102,101,99,116,115,47,101,120,97,109,112,108,101,115
	dw	46,101,102,102
	align	4
_34:
	dd	_31
	dd	12
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	115,105,109,112,108,101,32,101,120,112,108,111,115,105,111,110
	dw	32,49
	align	4
_38:
	dd	_31
	dd	14
	dd	1
	align	4
_40:
	dd	_31
	dd	16
	dd	1
	align	4
_41:
	dd	_31
	dd	21
	dd	1
	align	4
_44:
	dd	_31
	dd	22
	dd	1
	align	4
_47:
	dd	_31
	dd	25
	dd	1
	align	4
_48:
	dd	_31
	dd	28
	dd	1
	align	4
_52:
	dd	_31
	dd	31
	dd	1
	align	4
_102:
	dd	3
	dd	0
	dd	0
	align	4
_55:
	dd	_31
	dd	33
	dd	2
	align	4
_56:
	dd	_31
	dd	35
	dd	2
_70:
	db	"tempeffect",0
	align	4
_69:
	dd	3
	dd	0
	dd	2
	dd	_70
	dd	_71
	dd	-20
	dd	0
	align	4
_58:
	dd	_31
	dd	39
	dd	3
	align	4
_60:
	dd	_31
	dd	41
	dd	3
	align	4
_63:
	dd	_31
	dd	42
	dd	3
	align	4
_66:
	dd	_31
	dd	44
	dd	3
	align	4
_72:
	dd	_31
	dd	48
	dd	2
	align	4
_75:
	dd	_31
	dd	50
	dd	2
_88:
	db	"Ticks",0
_89:
	db	"i",0
	align	4
_87:
	dd	3
	dd	0
	dd	2
	dd	_88
	dd	_89
	dd	-24
	dd	0
	align	4
_81:
	dd	_31
	dd	52
	dd	3
	align	4
_84:
	dd	_31
	dd	54
	dd	3
	align	4
_90:
	dd	_31
	dd	58
	dd	2
	align	4
_95:
	dd	_31
	dd	60
	dd	2
	align	4
_96:
	dd	_31
	dd	61
	dd	2
	align	4
_97:
	dd	_31
	dd	62
	dd	2
	align	4
_98:
	dd	_31
	dd	63
	dd	2
	align	4
_101:
	dd	_31
	dd	65
	dd	2
