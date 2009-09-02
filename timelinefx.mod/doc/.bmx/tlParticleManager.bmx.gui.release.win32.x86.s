	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_timelinefx_timelinefx
	extrn	___bb_tweener_tweener
	extrn	_bbObjectNew
	extrn	_bbStringClass
	extrn	_bbStringFromInt
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
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	cmp	dword [_53],0
	je	_54
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_54:
	mov	dword [_53],1
	call	___bb_blitz_blitz
	call	___bb_timelinefx_timelinefx
	call	___bb_tweener_tweener
	push	2
	call	_brl_glmax2d_GLMax2DDriver
	push	eax
	call	_brl_graphics_SetGraphicsDriver
	add	esp,8
	push	1
	push	_20
	call	_rigz_timelinefx_LoadEffects
	add	esp,8
	push	_21
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-8],eax
	push	5000
	call	_rigz_timelinefx_CreateParticleManager
	add	esp,4
	mov	edi,eax
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	mov	ebx,edi
	call	_brl_graphics_GraphicsHeight
	push	eax
	call	_brl_graphics_GraphicsWidth
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	ebx,edi
	push	1065353216
	call	_brl_graphics_GraphicsHeight
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_graphics_GraphicsWidth
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,16
	push	1106247680
	call	_rigz_entity_SetUpdateFrequency
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
	jmp	_22
_24:
	call	_brl_max2d_Cls
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_40
	push	0
	push	edi
	push	dword [ebp-8]
	call	_rigz_timelinefx_CopyEffect
	add	esp,12
	mov	ebx,eax
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+132]
	add	esp,8
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	sub	esp,4
	fstp	dword [esp]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,8
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,8
_40:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	esi,1
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+32]
	jmp	_47
_27:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
_25:
	add	esi,1
_47:
	cmp	esi,ebx
	jle	_27
_26:
	mov	eax,edi
	mov	edx,dword [ebp-4]
	fld	qword [edx+40]
	sub	esp,4
	fstp	dword [esp]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	mov	eax,edi
	push	1092616192
	push	1092616192
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	0
	call	_brl_graphics_Flip
	add	esp,4
_22:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_38
	call	_brl_polledinput_AppTerminate
_38:
	cmp	eax,0
	jne	_24
_23:
	mov	eax,0
	jmp	_28
_28:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_53:
	dd	0
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	101,102,102,101,99,116,115,47,101,120,97,109,112,108,101,115
	dw	46,101,102,102
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	115,105,109,112,108,101,32,101,120,112,108,111,115,105,111,110
	dw	32,49
