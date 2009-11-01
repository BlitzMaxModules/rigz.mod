'Copyright (c) 2009 Peter J Rigby
'
'Permission is hereby granted, free of charge, to any person obtaining a copy
'of this software and associated documentation files (the "Software"), to deal
'in the Software without restriction, including without limitation the rights
'to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
'copies of the Software, and to permit persons to whom the Software is
'furnished to do so, subject to the following conditions:
'
'The above copyright notice and this permission notice shall be included in
'all copies or substantial portions of the Software.
'
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
'IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
'FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
'AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
'LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
'OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
'THE SOFTWARE.

SuperStrict

rem
	bbdoc: Math module for general math functions
end rem
Module rigz.math
ModuleInfo "Author: Peter J. Rigby"
ModuleInfo "Copyright: Peter J. Rigby 2009"
ModuleInfo "Purpose: A General Math Module"
ModuleInfo "Version: v1"

Import brl.basic

Function getdirection:Float(fromx:Float, fromy:Float, tox:Float, toy:Float)

	Return (ATan2(fromy - toy, fromx - tox) + 450) Mod 360
	
End Function
Function getdistance:Float(fromx:Float, fromy:Float, tox:Float, toy:Float, fast:Int = False)

	Local w:Float
	Local h:Float
	
	w=tox-fromx
	h=toy-fromy
	
	If fast
		Return w * w + h * h
	Else
		Return Sqr(w*w+h*h)
	End If
	
End Function
Function GetTexSize(w:Int, h:Int, frames:Int, powersof2:Int = True, texwidth:Int Var, texheight:Int Var, Cols:Int Var, rows:Int Var)

        Local area:Int=w*h*frames 
        texwidth=1 
        
        While area>texwidth^2 
        
                texwidth:*2 
        
        Wend 
        
        cols=texwidth/w 
                
        texheight=h 
        
		If texwidth Mod w
	        While area >= texheight * texwidth
	        
	                texheight:+h 
	                
	        Wend
		Else
	        While area > texheight * texwidth
	        
	                texheight:+h 
	                
	        Wend
		End If
        
        rows=texheight/h 

End Function 
