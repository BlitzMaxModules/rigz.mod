	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_entity_entity
	extrn	___bb_pngloader_pngloader
	extrn	___bb_tweener_tweener
	extrn	__rigz_entity_tlEntity_AddChild
	extrn	__rigz_entity_tlEntity_Capture
	extrn	__rigz_entity_tlEntity_ClearChildren
	extrn	__rigz_entity_tlEntity_Delete
	extrn	__rigz_entity_tlEntity_Destroy
	extrn	__rigz_entity_tlEntity_DrawBoundingBox
	extrn	__rigz_entity_tlEntity_GetAngle
	extrn	__rigz_entity_tlEntity_GetBlendMode
	extrn	__rigz_entity_tlEntity_GetBlue
	extrn	__rigz_entity_tlEntity_GetChildren
	extrn	__rigz_entity_tlEntity_GetEntityAlpha
	extrn	__rigz_entity_tlEntity_GetEntityScale
	extrn	__rigz_entity_tlEntity_GetGreen
	extrn	__rigz_entity_tlEntity_GetHandleX
	extrn	__rigz_entity_tlEntity_GetHandleY
	extrn	__rigz_entity_tlEntity_GetName
	extrn	__rigz_entity_tlEntity_GetParent
	extrn	__rigz_entity_tlEntity_GetRed
	extrn	__rigz_entity_tlEntity_GetRelative
	extrn	__rigz_entity_tlEntity_GetSpeed
	extrn	__rigz_entity_tlEntity_GetSprite
	extrn	__rigz_entity_tlEntity_KillChildren
	extrn	__rigz_entity_tlEntity_MiniUpdate
	extrn	__rigz_entity_tlEntity_Move
	extrn	__rigz_entity_tlEntity_New
	extrn	__rigz_entity_tlEntity_RemoveChild
	extrn	__rigz_entity_tlEntity_Render
	extrn	__rigz_entity_tlEntity_Rotate
	extrn	__rigz_entity_tlEntity_SetAngle
	extrn	__rigz_entity_tlEntity_SetAnimateOnce
	extrn	__rigz_entity_tlEntity_SetAutoCenter
	extrn	__rigz_entity_tlEntity_SetBlendMode
	extrn	__rigz_entity_tlEntity_SetBlue
	extrn	__rigz_entity_tlEntity_SetEntityAlpha
	extrn	__rigz_entity_tlEntity_SetEntityColor
	extrn	__rigz_entity_tlEntity_SetEntityScale
	extrn	__rigz_entity_tlEntity_SetGreen
	extrn	__rigz_entity_tlEntity_SetHandleX
	extrn	__rigz_entity_tlEntity_SetHandleY
	extrn	__rigz_entity_tlEntity_SetName
	extrn	__rigz_entity_tlEntity_SetParent
	extrn	__rigz_entity_tlEntity_SetPosition
	extrn	__rigz_entity_tlEntity_SetRed
	extrn	__rigz_entity_tlEntity_SetRelative
	extrn	__rigz_entity_tlEntity_SetSpeed
	extrn	__rigz_entity_tlEntity_SetSprite
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
	extrn	_bbObjectCompare
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
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
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	cmp	dword [_78],0
	je	_79
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_79:
	mov	dword [_78],1
	call	___bb_blitz_blitz
	call	___bb_entity_entity
	call	___bb_tweener_tweener
	call	___bb_pngloader_pngloader
	push	_bb_tAstralBody
	call	_bbObjectRegisterType
	add	esp,4
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	push	_bb_tAstralBody
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	push	1
	push	0
	push	0
	push	_17
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+212]
	add	esp,8
	mov	eax,dword [ebp-8]
	mov	dword [ebp-12],eax
	push	1
	push	0
	push	0
	push	_18
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	dword [ebp-12]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	call	dword [eax+212]
	add	esp,8
	push	1
	push	0
	push	0
	push	_19
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+212]
	add	esp,8
	push	1
	push	0
	push	0
	push	_19
	call	_rigz_singlesurface_LoadSprite
	add	esp,16
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+212]
	add	esp,8
	mov	eax,esi
	push	dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,8
	mov	eax,esi
	push	1133903872
	push	1137180672
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+156]
	add	esp,12
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	eax,dword [ebp-8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,8
	mov	eax,dword [ebp-8]
	push	1132068864
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,dword [ebp-8]
	push	1056964608
	push	1056964608
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+200]
	add	esp,12
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	eax,ebx
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,8
	mov	eax,ebx
	push	1117126656
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,ebx
	push	1048576000
	push	1048576000
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+200]
	add	esp,12
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	eax,edi
	push	1103626240
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,8
	mov	eax,edi
	push	1036831949
	push	1036831949
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+200]
	add	esp,12
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	_rigz_tweener_tTweener
	call	_bbObjectNew
	add	esp,4
	push	1106247680
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	mov	dword [ebp-4],eax
	push	1106247680
	call	_rigz_entity_SetUpdateFrequency
	add	esp,4
	jmp	_20
_22:
	call	_brl_max2d_Cls
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,0
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	edi,eax
	jmp	_70
_25:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	eax,esi
	push	1065353216
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,8
	mov	eax,dword [ebp-8]
	push	-1063256064
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,8
_23:
	add	ebx,1
_70:
	cmp	ebx,edi
	jle	_25
_24:
	mov	eax,esi
	mov	edx,dword [ebp-4]
	fld	qword [edx+40]
	sub	esp,4
	fstp	dword [esp]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+260]
	add	esp,8
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	push	0
	call	_brl_graphics_Flip
	add	esp,4
_20:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_22
_21:
	mov	eax,0
	jmp	_32
_32:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tAstralBody_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__rigz_entity_tlEntity_New
	add	esp,4
	mov	dword [ebx],_bb_tAstralBody
	mov	eax,0
	jmp	_35
_35:
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
	jmp	_80
_80:
	mov	esp,ebp
	pop	ebp
	ret
__bb_tAstralBody_update:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	ebx
	call	__rigz_entity_tlEntity_Update
	add	esp,4
	mov	eax,0
	jmp	_41
_41:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_78:
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
	dd	348
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
	dd	__rigz_entity_tlEntity_Render
	dd	__rigz_entity_tlEntity_TweenValues
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,117,110,46,112,110,103
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,97,114,116,104,46,112,110,103
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	109,111,111,110,46,112,110,103
