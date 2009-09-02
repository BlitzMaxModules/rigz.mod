	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_entity_entity
	extrn	___bb_pngloader_pngloader
	extrn	___bb_tweener_tweener
	extrn	__rigz_entity_tlEntity_AddChild
	extrn	__rigz_entity_tlEntity_CalculateBoundingBox
	extrn	__rigz_entity_tlEntity_Capture
	extrn	__rigz_entity_tlEntity_CaptureAll
	extrn	__rigz_entity_tlEntity_ClearChildren
	extrn	__rigz_entity_tlEntity_Decay
	extrn	__rigz_entity_tlEntity_Delete
	extrn	__rigz_entity_tlEntity_Destroy
	extrn	__rigz_entity_tlEntity_DrawBoundingBox
	extrn	__rigz_entity_tlEntity_GetAge
	extrn	__rigz_entity_tlEntity_GetAngle
	extrn	__rigz_entity_tlEntity_GetBlendMode
	extrn	__rigz_entity_tlEntity_GetBlue
	extrn	__rigz_entity_tlEntity_GetChildren
	extrn	__rigz_entity_tlEntity_GetEntityAlpha
	extrn	__rigz_entity_tlEntity_GetEntityDirection
	extrn	__rigz_entity_tlEntity_GetEntityScale
	extrn	__rigz_entity_tlEntity_GetGreen
	extrn	__rigz_entity_tlEntity_GetHandleX
	extrn	__rigz_entity_tlEntity_GetHandleY
	extrn	__rigz_entity_tlEntity_GetLifeTime
	extrn	__rigz_entity_tlEntity_GetName
	extrn	__rigz_entity_tlEntity_GetOKToRender
	extrn	__rigz_entity_tlEntity_GetParent
	extrn	__rigz_entity_tlEntity_GetRed
	extrn	__rigz_entity_tlEntity_GetRelative
	extrn	__rigz_entity_tlEntity_GetSpeed
	extrn	__rigz_entity_tlEntity_GetSprite
	extrn	__rigz_entity_tlEntity_GetWX
	extrn	__rigz_entity_tlEntity_GetWY
	extrn	__rigz_entity_tlEntity_GetX
	extrn	__rigz_entity_tlEntity_GetY
	extrn	__rigz_entity_tlEntity_HasBoundingBox
	extrn	__rigz_entity_tlEntity_KillChildren
	extrn	__rigz_entity_tlEntity_MiniUpdate
	extrn	__rigz_entity_tlEntity_Move
	extrn	__rigz_entity_tlEntity_New
	extrn	__rigz_entity_tlEntity_RemoveChild
	extrn	__rigz_entity_tlEntity_Render
	extrn	__rigz_entity_tlEntity_Rotate
	extrn	__rigz_entity_tlEntity_SetAge
	extrn	__rigz_entity_tlEntity_SetAngle
	extrn	__rigz_entity_tlEntity_SetAnimateOnce
	extrn	__rigz_entity_tlEntity_SetAutoCenter
	extrn	__rigz_entity_tlEntity_SetBlendMode
	extrn	__rigz_entity_tlEntity_SetBlue
	extrn	__rigz_entity_tlEntity_SetEntityAlpha
	extrn	__rigz_entity_tlEntity_SetEntityColor
	extrn	__rigz_entity_tlEntity_SetEntityDirection
	extrn	__rigz_entity_tlEntity_SetEntityScale
	extrn	__rigz_entity_tlEntity_SetGreen
	extrn	__rigz_entity_tlEntity_SetHandleX
	extrn	__rigz_entity_tlEntity_SetHandleY
	extrn	__rigz_entity_tlEntity_SetLifeTime
	extrn	__rigz_entity_tlEntity_SetName
	extrn	__rigz_entity_tlEntity_SetOKToRender
	extrn	__rigz_entity_tlEntity_SetParent
	extrn	__rigz_entity_tlEntity_SetPosition
	extrn	__rigz_entity_tlEntity_SetRed
	extrn	__rigz_entity_tlEntity_SetRelative
	extrn	__rigz_entity_tlEntity_SetSpeed
	extrn	__rigz_entity_tlEntity_SetSprite
	extrn	__rigz_entity_tlEntity_SetUpdateSpeed
	extrn	__rigz_entity_tlEntity_SetWX
	extrn	__rigz_entity_tlEntity_SetWY
	extrn	__rigz_entity_tlEntity_SetX
	extrn	__rigz_entity_tlEntity_SetY
	extrn	__rigz_entity_tlEntity_SetZ
	extrn	__rigz_entity_tlEntity_TweenValues
	extrn	__rigz_entity_tlEntity_Update
	extrn	__rigz_entity_tlEntity_UpdateBoundingBox
	extrn	__rigz_entity_tlEntity_UpdateChildren
	extrn	__rigz_entity_tlEntity_UpdateParentBoundingBox
	extrn	__rigz_entity_tlEntity_Zoom
	extrn	_bbNullObject
	extrn	_bbObjectCompare
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_glmax2d_GLMax2DDriver
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_SetGraphicsDriver
	extrn	_brl_max2d_Cls
	extrn	_brl_polledinput_KeyDown
	extrn	_rigz_entity_SetUpdateFrequency
	extrn	_rigz_entity_tlEntity
	extrn	_rigz_singlesurface_LoadSprite
	extrn	_rigz_tweener_tTweener
	public	__bb_main
	public	__bb_tAstralBody_Delete
	public	__bb_tAstralBody_New
	public	__bb_tAstralBody_update
	public	_bb_tAstralBody
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	cmp	dword [_158],0
	je	_159
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_159:
	mov	dword [_158],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],0
	push	ebp
	push	_149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_entity_entity
	call	___bb_tweener_tweener
	call	___bb_pngloader_pngloader
	push	_bb_tAstralBody
	call	_bbObjectRegisterType
	add	esp,4
	push	_43
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	_45
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_46
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_48
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_50
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_52
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_54
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_56
	call	_brl_blitz_NullObjectError
_56:
	push	1
	push	0
	push	0
	push	_17
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+224]
	add	esp,8
	push	_57
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_59
	call	_brl_blitz_NullObjectError
_59:
	push	1
	push	0
	push	0
	push	_18
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+224]
	add	esp,8
	push	_60
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_62
	call	_brl_blitz_NullObjectError
_62:
	push	1
	push	0
	push	0
	push	_19
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+224]
	add	esp,8
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_65
	call	_brl_blitz_NullObjectError
_65:
	push	1
	push	0
	push	0
	push	_19
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+224]
	add	esp,8
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_68
	call	_brl_blitz_NullObjectError
_68:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_71
	call	_brl_blitz_NullObjectError
_71:
	push	1133903872
	push	1137180672
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_74
	call	_brl_blitz_NullObjectError
_74:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_77
	call	_brl_blitz_NullObjectError
_77:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_80
	call	_brl_blitz_NullObjectError
_80:
	push	1132068864
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+148]
	add	esp,8
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_83
	call	_brl_blitz_NullObjectError
_83:
	push	1056964608
	push	1056964608
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+212]
	add	esp,12
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_89
	call	_brl_blitz_NullObjectError
_89:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_92
	call	_brl_blitz_NullObjectError
_92:
	push	1117126656
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+148]
	add	esp,8
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_95
	call	_brl_blitz_NullObjectError
_95:
	push	1048576000
	push	1048576000
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+212]
	add	esp,12
	push	_96
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_98
	call	_brl_blitz_NullObjectError
_98:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_101
	call	_brl_blitz_NullObjectError
_101:
	push	1103626240
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+148]
	add	esp,8
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_104
	call	_brl_blitz_NullObjectError
_104:
	push	1036831949
	push	1036831949
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+212]
	add	esp,12
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_107
	call	_brl_blitz_NullObjectError
_107:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_rigz_tweener_tTweener
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_110
	call	_brl_blitz_NullObjectError
_110:
	push	1106247680
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1106247680
	call	_rigz_entity_SetUpdateFrequency
	add	esp,4
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_20
_22:
	push	ebp
	push	_148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_117
	call	_brl_blitz_NullObjectError
_117:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],0
	mov	dword [ebp-24],0
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_121
	call	_brl_blitz_NullObjectError
_121:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	jmp	_122
_25:
	push	ebp
	push	_139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_126
	call	_brl_blitz_NullObjectError
_126:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_129
	call	_brl_blitz_NullObjectError
_129:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	_130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_132
	call	_brl_blitz_NullObjectError
_132:
	push	1065353216
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+104]
	add	esp,8
	push	_133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_135
	call	_brl_blitz_NullObjectError
_135:
	push	-1063256064
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+104]
	add	esp,8
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	push	1075838976
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+104]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_23:
	add	dword [ebp-24],1
_122:
	cmp	dword [ebp-24],ebx
	jle	_25
_24:
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_144
	call	_brl_blitz_NullObjectError
_144:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_146
	call	_brl_blitz_NullObjectError
_146:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+328]
	add	esp,8
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_20:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_22
_21:
	mov	ebx,0
	jmp	_32
_32:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tAstralBody_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__rigz_entity_tlEntity_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_tAstralBody
	push	ebp
	push	_160
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_35
_35:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tAstralBody_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_38:
	mov	dword [eax],_rigz_entity_tlEntity
	push	eax
	call	__rigz_entity_tlEntity_Delete
	add	esp,4
	mov	eax,0
	jmp	_163
_163:
	mov	esp,ebp
	pop	ebp
	ret
__bb_tAstralBody_update:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_168
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	__rigz_entity_tlEntity_Update
	add	esp,4
	mov	ebx,0
	jmp	_41
_41:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_158:
	dd	0
_150:
	db	"tlEntity",0
_151:
	db	"Sun",0
_152:
	db	":tAstralBody",0
_153:
	db	"Earth",0
_154:
	db	"Moon",0
_155:
	db	"Moonlet",0
_156:
	db	"tweener",0
_157:
	db	":rigz.tweener.tTweener",0
	align	4
_149:
	dd	1
	dd	_150
	dd	2
	dd	_151
	dd	_152
	dd	-4
	dd	2
	dd	_153
	dd	_152
	dd	-8
	dd	2
	dd	_154
	dd	_152
	dd	-12
	dd	2
	dd	_155
	dd	_152
	dd	-16
	dd	2
	dd	_156
	dd	_157
	dd	-20
	dd	0
_27:
	db	"tAstralBody",0
_28:
	db	"New",0
_29:
	db	"()i",0
_30:
	db	"Delete",0
_31:
	db	"update",0
	align	4
_26:
	dd	2
	dd	_27
	dd	6
	dd	_28
	dd	_29
	dd	16
	dd	6
	dd	_30
	dd	_29
	dd	20
	dd	6
	dd	_31
	dd	_29
	dd	48
	dd	0
	align	4
_bb_tAstralBody:
	dd	_rigz_entity_tlEntity
	dd	_bbObjectFree
	dd	_26
	dd	376
	dd	__bb_tAstralBody_New
	dd	__bb_tAstralBody_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_tAstralBody_update
	dd	__rigz_entity_tlEntity_MiniUpdate
	dd	__rigz_entity_tlEntity_UpdateChildren
	dd	__rigz_entity_tlEntity_Capture
	dd	__rigz_entity_tlEntity_CaptureAll
	dd	__rigz_entity_tlEntity_UpdateBoundingBox
	dd	__rigz_entity_tlEntity_UpdateParentBoundingBox
	dd	__rigz_entity_tlEntity_DrawBoundingBox
	dd	__rigz_entity_tlEntity_Zoom
	dd	__rigz_entity_tlEntity_AddChild
	dd	__rigz_entity_tlEntity_Destroy
	dd	__rigz_entity_tlEntity_RemoveChild
	dd	__rigz_entity_tlEntity_ClearChildren
	dd	__rigz_entity_tlEntity_KillChildren
	dd	__rigz_entity_tlEntity_Rotate
	dd	__rigz_entity_tlEntity_Move
	dd	__rigz_entity_tlEntity_GetRed
	dd	__rigz_entity_tlEntity_SetRed
	dd	__rigz_entity_tlEntity_GetGreen
	dd	__rigz_entity_tlEntity_SetGreen
	dd	__rigz_entity_tlEntity_GetBlue
	dd	__rigz_entity_tlEntity_SetBlue
	dd	__rigz_entity_tlEntity_SetEntityColor
	dd	__rigz_entity_tlEntity_GetEntityAlpha
	dd	__rigz_entity_tlEntity_SetEntityAlpha
	dd	__rigz_entity_tlEntity_SetX
	dd	__rigz_entity_tlEntity_SetY
	dd	__rigz_entity_tlEntity_SetZ
	dd	__rigz_entity_tlEntity_GetX
	dd	__rigz_entity_tlEntity_GetY
	dd	__rigz_entity_tlEntity_SetPosition
	dd	__rigz_entity_tlEntity_SetWX
	dd	__rigz_entity_tlEntity_SetWY
	dd	__rigz_entity_tlEntity_SetAutoCenter
	dd	__rigz_entity_tlEntity_SetAngle
	dd	__rigz_entity_tlEntity_SetBlendMode
	dd	__rigz_entity_tlEntity_SetHandleX
	dd	__rigz_entity_tlEntity_SetHandleY
	dd	__rigz_entity_tlEntity_SetName
	dd	__rigz_entity_tlEntity_SetParent
	dd	__rigz_entity_tlEntity_SetRelative
	dd	__rigz_entity_tlEntity_SetEntityScale
	dd	__rigz_entity_tlEntity_SetSpeed
	dd	__rigz_entity_tlEntity_GetSpeed
	dd	__rigz_entity_tlEntity_SetSprite
	dd	__rigz_entity_tlEntity_SetAnimateOnce
	dd	__rigz_entity_tlEntity_SetUpdateSpeed
	dd	__rigz_entity_tlEntity_GetAngle
	dd	__rigz_entity_tlEntity_GetHandleX
	dd	__rigz_entity_tlEntity_GetHandleY
	dd	__rigz_entity_tlEntity_GetBlendMode
	dd	__rigz_entity_tlEntity_GetRelative
	dd	__rigz_entity_tlEntity_GetName
	dd	__rigz_entity_tlEntity_GetEntityScale
	dd	__rigz_entity_tlEntity_GetSprite
	dd	__rigz_entity_tlEntity_GetParent
	dd	__rigz_entity_tlEntity_GetChildren
	dd	__rigz_entity_tlEntity_GetLifeTime
	dd	__rigz_entity_tlEntity_SetLifeTime
	dd	__rigz_entity_tlEntity_GetAge
	dd	__rigz_entity_tlEntity_SetAge
	dd	__rigz_entity_tlEntity_Decay
	dd	__rigz_entity_tlEntity_GetWX
	dd	__rigz_entity_tlEntity_GetWY
	dd	__rigz_entity_tlEntity_GetEntityDirection
	dd	__rigz_entity_tlEntity_SetEntityDirection
	dd	__rigz_entity_tlEntity_GetOKToRender
	dd	__rigz_entity_tlEntity_SetOKToRender
	dd	__rigz_entity_tlEntity_HasBoundingBox
	dd	__rigz_entity_tlEntity_CalculateBoundingBox
	dd	__rigz_entity_tlEntity_Render
	dd	__rigz_entity_tlEntity_TweenValues
_44:
	db	"$BMXPATH/mod/rigz.mod/entity.mod/doc/tlEntity.bmx",0
	align	4
_43:
	dd	_44
	dd	8
	dd	1
	align	4
_45:
	dd	_44
	dd	10
	dd	1
	align	4
_46:
	dd	_44
	dd	26
	dd	1
	align	4
_48:
	dd	_44
	dd	27
	dd	1
	align	4
_50:
	dd	_44
	dd	28
	dd	1
	align	4
_52:
	dd	_44
	dd	29
	dd	1
	align	4
_54:
	dd	_44
	dd	31
	dd	1
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,117,110,46,112,110,103
	align	4
_57:
	dd	_44
	dd	32
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,97,114,116,104,46,112,110,103
	align	4
_60:
	dd	_44
	dd	33
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	109,111,111,110,46,112,110,103
	align	4
_63:
	dd	_44
	dd	34
	dd	1
	align	4
_66:
	dd	_44
	dd	37
	dd	1
	align	4
_69:
	dd	_44
	dd	39
	dd	1
	align	4
_72:
	dd	_44
	dd	41
	dd	1
	align	4
_75:
	dd	_44
	dd	43
	dd	1
	align	4
_78:
	dd	_44
	dd	47
	dd	1
	align	4
_81:
	dd	_44
	dd	49
	dd	1
	align	4
_84:
	dd	_44
	dd	50
	dd	1
	align	4
_87:
	dd	_44
	dd	52
	dd	1
	align	4
_90:
	dd	_44
	dd	54
	dd	1
	align	4
_93:
	dd	_44
	dd	56
	dd	1
	align	4
_96:
	dd	_44
	dd	57
	dd	1
	align	4
_99:
	dd	_44
	dd	59
	dd	1
	align	4
_102:
	dd	_44
	dd	60
	dd	1
	align	4
_105:
	dd	_44
	dd	61
	dd	1
	align	4
_108:
	dd	_44
	dd	65
	dd	1
	align	4
_112:
	dd	_44
	dd	66
	dd	1
	align	4
_113:
	dd	_44
	dd	69
	dd	1
	align	4
_148:
	dd	3
	dd	0
	dd	0
	align	4
_114:
	dd	_44
	dd	70
	dd	2
	align	4
_115:
	dd	_44
	dd	73
	dd	2
	align	4
_118:
	dd	_44
	dd	76
	dd	2
_140:
	db	"c",0
_141:
	db	"i",0
	align	4
_139:
	dd	3
	dd	0
	dd	2
	dd	_140
	dd	_141
	dd	-24
	dd	0
	align	4
_124:
	dd	_44
	dd	79
	dd	3
	align	4
_127:
	dd	_44
	dd	80
	dd	3
	align	4
_130:
	dd	_44
	dd	82
	dd	3
	align	4
_133:
	dd	_44
	dd	83
	dd	3
	align	4
_136:
	dd	_44
	dd	84
	dd	3
	align	4
_142:
	dd	_44
	dd	88
	dd	2
	align	4
_147:
	dd	_44
	dd	91
	dd	2
_162:
	db	"Self",0
	align	4
_161:
	dd	1
	dd	_28
	dd	2
	dd	_162
	dd	_152
	dd	-4
	dd	0
	align	4
_160:
	dd	3
	dd	0
	dd	0
	align	4
_168:
	dd	1
	dd	_31
	dd	2
	dd	_162
	dd	_152
	dd	-4
	dd	0
	align	4
_164:
	dd	_44
	dd	17
	dd	3
	align	4
_167:
	dd	_44
	dd	20
	dd	3
