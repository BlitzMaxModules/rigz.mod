SuperStrict

Framework brl.max2d
Import rigz.timelinefx
Import rigz.tweener

SetGraphicsDriver GLMax2DDriver()

'Load the effects library
Local MyEffectsLib:tlEffectsLibrary = LoadEffects("effects/examples.eff")
'Create an effect and assign it an effect from the library
Local MyEffect:tlEffect = MyEffectsLib.GetEffect("simple explosion 1")
'Create the particle manager to manage the particles
Local MyParticleManager:tlParticleManager = CreateParticleManager()

Graphics (800, 600, 0)

'These commands are important to set the origin of the particle manager. For this example we're setting the origin so that
'effects will be placed at screen coordinates. If you leave out the setorigin command then an effect created at 0,0 would
'be placed at the center of the screen.
myparticlemanager.SetScreenSize(GraphicsWidth(), GraphicsHeight())
myparticlemanager.SetOrigin(GraphicsWidth() / 2, GraphicsHeight() / 2)

'This will make one frame equal 33 millisecs long - or 30 updates per second.
SetUpdateFrequency(30)

'Create a tweener using the tweener mod. Make sure its frequency matches that above
Local Tweener:tTweener = New tTweener.Create(30)

'Our main loop
While Not KeyDown(KEY_ESCAPE) Or AppTerminate()
	
	Cls
	
	If MouseHit(1)
		'to create an effect you need to use the copyeffect command, and copy the MyEffect you created earlier. 
		'You shouldn't use MyEffect as it is the template
		'for which is used to create effects you draw on screen.
		Local tempeffect:tlEffect = CopyEffect(myeffect, MyParticleManager)
		'Set the temp effect to the mouse coords
		tempeffect.setx(MouseX())
		tempeffect.sety(MouseY())
		'add the effect the the particle manager. Important, otherwise the particle manager would have nothing to update
		MyParticleManager.addeffect(tempeffect)
	End If
	
	'here is the timing code, update the tweener to get the number of ticks for this loop
	Tweener.Update()
	
	For Local Ticks:Int = 1 To Tweener.FrameTicks
		'Update the execution time for the tweener
		Tweener.UpdateExecutionTime()
		'Update the particle manager
		MyParticleManager.Update()
	Next
	
	'and finally draw the particles.
	MyParticleManager.DrawParticles(Tweener.Tween)
	
	SetRotation 0
	SetScale 1, 1
	SetAlpha 1
	DrawText MyParticleManager.GetParticlesInUse(), 10, 10
	
	Flip 0
	
Wend
