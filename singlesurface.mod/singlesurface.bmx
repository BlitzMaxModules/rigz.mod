SuperStrict

Rem
	bbdoc: Single Surface mod 
	about: Most of the credit For this goes To indiepath from Blitzmax forums. I changed a few things And made it work with the DX9 Mod by Dstastny
	Its questionable how much faster this makes things, but it might make improvements on slower cards, and it doesn't seem to slow down faster ones so...
	This depends on DStastny's DX9 mod. If you don't have that and don't want to use it then rem out where marked below
end rem
Module rigz.singlesurface
ModuleInfo "Author: Tim Fisher (Indiepath) Modified by Peter Rigby"
ModuleInfo "Purpose: Single surface image drawing when using animated images"
ModuleInfo "Version: v1"

ModuleInfo "No longer uses DBS dx9 mod, now uses official BRL dx9 mod"
ModuleInfo "Added DX 9 compatibility using DStastny mod."
ModuleInfo "Added drawsprite and load sprite helper functions"
ModuleInfo "Now returns null if the given dimensions don't fit the animation being loaded"
ModuleInfo ""

Import brl.max2d
?Win32
	Import brl.d3d7max2d
	Import brl.d3d9max2d
?
Import brl.glmax2d
Import rigz.math

Rem
	bbdoc: Type for creating single surface animations
	about: This type replaces the usual drawimage with one that lets you draw animations using a single surface. 
	Its questionable how much faster this makes things, but it might make improvements on slower cards, and it 
	doesn't seem to slow down faster ones so. You can use the helper functions #LoadSprite and #DrawSprite to create
	and draw your images.
end rem
Type TAnimImage
	
	Field Image:TImage
	Field width:Int
	Field height:Int
	Field u0:Float[] 
	Field v0:Float[] 
	Field u1:Float[] 
	Field v1:Float[]
	Field sx:Float[]
	Field sy:Float[]
	Field url:String
	Field name:String
	Field frames:Int
	Field displayframe:Int
	Field smallindex:Int
	Field largeindex:Int
	Field selected:Int
	Field freshsave:Int = False
	Field Max_Radius:Float
	Field dxVer:Int

	Function Load:TAnimImage(url:Object, cell_width:Float, cell_height:Float, start:Int, frames:Int, flags:Int = -1)
		Local t:TAnimImage = New TAnimImage
		Local tx:Float
		Local ty:Float
		Local x_Cells:Int
		t.u0 = New Float[frames] 
		t.v0 = New Float[frames]
		t.u1 = New Float[frames] 
		t.v1 = New Float[frames]
		t.sx = New Float[frames]
		t.sy = New Float[frames]
		If TStream(url)
			TStream(url).Seek(0)
		End If
		t.Image = LoadImage(url, flags)
		t.frames = frames
		Local xDelta:Float = t.Image.Width / Pow2Size(t.image.width) 
		Local yDelta:Float = t.Image.Height / Pow2Size(t.image.height) 
		x_cells = t.Image.Width / cell_width
		If x_cells
			For Local f:Int = start To frames - 1
				tx = (f Mod x_cells * cell_width) * xdelta
				ty = (f / x_cells * cell_Height) * ydelta
				t.u0[f] = Float(tx) / Float(t.Image.Width) 
				t.v0[f] = Float(ty) / Float(t.Image.Height) 
				t.u1[f] = Float(tx + cell_width * xdelta) / Float(t.Image.Width) 
				t.v1[f] = Float(ty + cell_Height * ydelta) / Float(t.Image.Height)
				t.sx[f] = tx
				t.sy[f] = ty
			Next
			
			Return t
		Else
			Return Null
		End If
	End Function
	
	Method FindImageMax:Float()
		If image
			For Local frame:Int = 0 To frames - 1
				Local pixmap:TPixmap = LockImage(image)
				pixmap = PixmapWindow(pixmap, u0[frame] * image.width, v0[frame] * image.height, getwidth(), getheight())
				For Local x:Int = 0 To pixmap.width - 1
					For Local y:Int = 0 To pixmap.height - 1
						Local RGBA:Int = pixmap.ReadPixel(x, y)
						Local a:Int = (RGBA Shr 24) & $ff
						If a > 0
							max_radius = Max(max_radius, getdistance(Abs(width / 2), Abs(height / 2), x, y))
						End If
					Next
				Next
			Next
		End If
		Return max_radius
	End Method
	
	Function Pow2Size:Float(n:Int) 
		Local t:Int = 1
		While t < n
			t:*2
		Wend
		Return t
	End Function

	Function Free(t:TAnimImage)
		t.Image = Null
		t = Null
	End Function
	
	Method Draw(x:Float, y:Float, width:Float, height:Float, frame:Int = 0)
'		?Win32
'			If TD3D7Max2DDriver(_max2dDriver) <> Null
'				dxVer = 7
'			EndIf
'	 		If TD3D9Max2DDriver(_max2dDriver) <> Null			'rem this bit here for no dx9
'				dxVer = 9										'
'			EndIf												'
'			Select dxVer
'				Case 7
'					DX7Frame = TD3D7ImageFrame (image.frame(0))
'					If frame > frames
'						frame = 0
'					End If
'			        DX7Frame.setUV(u0[frame], v0[frame], u1[frame], v1[frame])
'				Case 9																'and this bit
'					DX9Frame = TD3D9ImageFrame (image.frame(0))						'
'					If frame > frames												'
'						frame = 0													'
'					End If
'					dx9frame._fverts[4] = u0[frame]
'					dx9frame._fverts[5] = v0[frame]
'					dx9frame._fverts[10] = u1[frame]
'					dx9frame._fverts[11] = v0[frame]
'					dx9frame._fverts[16] = u1[frame]
'					dx9frame._fverts[17] = v1[frame]
'					dx9frame._fverts[22] = u0[frame]
'					dx9frame._fverts[23] = v1[frame]
'				Default
'		?
'		            GLFrame = TGLImageFrame(image.frame(0))
'		            GLFrame.u0 = u0[frame]
'		            GLFrame.u1 = u1[frame]
'		            GLFrame.v0 = v0[frame]
'		            GLFrame.v1 = v1[frame]
'		?Win32
'			End Select
'		?
		DrawSubImageRect(Self.Image, x, y, width, height, sx[frame], sy[frame], width, height, image.handle_x, image.handle_y)
	End Method
	
	Method nextframe() 
		displayframe:+1
		If displayframe > frames - 1
			displayframe = 0
		End If
	End Method
	Method previousframe() 
		displayframe:-1
		If displayframe < 0
			displayframe = frames - 1
		End If
	End Method
	
	Method getwidth:Int()
		Return width
	End Method
	Method getheight:Int()
		Return height
	End Method
End Type

Rem
	bbdoc: Load an image and store it as a tAnimImage
	about: <p>Very similar to BRL's loadanimimage except of course it returns a tAnimImage.</p>
	<p>Parametres:</p>
	<ul>
	<li><b>url: </b>The path or stream to your image.</li>
	<li><b>width: </b>The width of each frame of animation.</li>
	<li><b>height: </b>The height of each frame of animation.</li>
	<li><b>frames: </b>The number of frames of the aniamtion. If you're loading a single frame image then you can omit this</li>
	</ul>
end rem
Function LoadSprite:TAnimImage(url:Object, width:Float = 0, height:Float = 0, frames:Int = 1, FindRadius:Int = False)
	
	If width = 0
		Local i:TImage = LoadImage(url, FILTEREDIMAGE)
		width = i.width
		height = i.height
	End If
	Local s:TAnimImage = TAnimImage.Load(url, width, height, 0, frames)
	If s
		s.width = width
		s.height = height
		If String(url)
			s.url = url.ToString()
		End If
		s.FindImageMax()
		Return s
	Else
		Return Null
	End If
	
End Function
Rem
	bbdoc: Draw a tAnimImage to the screen
	about: <p>Very similar to BRL's DrawImage except of course it draws a tAnimImage.</p>
	<p>Parametres:</p>
	<ul>
	<li><b>sprite: </b>The tAnimImage that you want to draw</li>
	<li><b>x: </b>The horizontal location that you want to draw to.</li>
	<li><b>y: </b>The vertical location that you want to draw to.</li>
	<li><b>frame: </b>The frame of the animation that you want to draw. The frame index starts from 0.</li>
	</ul>
end rem
Function DrawSprite(sprite:TAnimImage, x:Float, y:Float, frame:Int = 0)
	sprite.Draw(x, y, sprite.width, sprite.height, frame) 
End Function
