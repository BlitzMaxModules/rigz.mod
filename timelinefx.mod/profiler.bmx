Rem
	Teamonkey's Inline Profiler for BlitzMax v0.1
	
	(c) James Arthur 2005, <a href="mailto:teamonkey@gmail.com">teamonkey@gmail.com</a>
	
	This code is public domain
End Rem

Import BRL.LinkedList
Import BRL.System
Import BRL.Retro
Import brl.Max2D

'Extern "win32"
'	Function QueryPerformanceFrequency(LARGE_INTEGER:Long Var)
'	Function QueryPerformanceCounter(LARGE_INTEGER:Long Var)
'EndExtern

Type TProfResult
	Global results:TProfResult[]
	Global last_t:Int
	Global dt:Int
	
	Field name:String
	Field total_t:Double
	Field level:Int
	

	Function matchSize(list:TList)
		Local l_size:Int = CountList(list)
		
		If(Not results)
			results = New TProfResult[l_size]
		EndIf
		
		If(results.length <> l_size)
			results = results[..l_size]
		EndIf
	End Function
	
	
	Function getResults(min_interval:Int)	
		Local now = MilliSecs()
				
		If(now-last_t < min_interval) Then Return

		dt = now-last_t
		last_t = now
		
		matchSize(TProfSample.samples)
		
		Local i:Int = 0
		For Local sample:TProfSample = EachIn TProfSample.samples
			'DebugLog("i: "+i+"/"+results.length+"    name: "+sample.name+"    t: "+sample.total_t)
			If(Not results[i])
				results[i] = New TProfResult
			EndIf
			results[i].fromSample(sample)
			i:+1
		Next
	End Function
	
	
	Function displayResults()
		Local x# = 8.0, y# = 8.0
		Local str:String
		
		str = "    Profile Name    |  msec  | % CPU  "
		DrawText str,x,y
		y :+ Float(TextHeight(str))
		
		str = "--------------------+--------+-------"
		DrawText str,x,y
		y :+ Float(TextHeight(str))

		
		For Local result:TProfResult = EachIn results
			str = LSet(RSet(result.name, result.name.length+2*result.level),19)
			str:+" | "
			str:+RSet(Left(String.FromDouble(result.total_t), 5), 6)
			str :+ " | "
			str :+ LSet(Left(String.FromFloat(Float(result.total_t*100)/Float(dt)),5),6)
			
			DrawText str,x,y
			y :+ Float(TextHeight(str))
		Next
	End Function
	
	
	Method fromSample(sample:TProfSample)
		name = sample.name
		total_t = sample.get_t()
		level = sample.level
	End Method
End Type

Type TProfSample
	Field name:String
	Field link:TLink
	Field running:Int
	Field start_t:Long
	Field end_t:Long
	Field freq:Long
	Field total_t:Double
	Field level:Int
	Field parent:TProfSample
	
	Global global_level:Int		' Depth of nested profiling
	Global samples:TList			' Linked list of samples
	Global last_sample:TProfSample	' Last sample we have started
	
	Method New()
		running  = False
		total_t = 0
		If(Not samples)
			samples = CreateList()
		EndIf
	End Method
	
	Function create:TProfSample(name_in:String)
		Local tps:TProfSample = New TProfSample
		tps.name = name_in
		tps.link = ListAddLast(samples, tps)
		'QueryPerformanceFrequency(tps.freq)
		Return tps
	End Function
	
	
	Function DeleteSample(sample:TProfSample)
		Assert(sample)
		
		RemoveLink(sample.link)
	End Function
	
	Function ProfReset()
		ClearList samples
	End Function
	
	
	Method start()
		If(running)
			DebugLog("Profiler: Sample '"+name+"' already started")
			Return
		End If
		
		running = True
		level = global_level

		parent = last_sample
		last_sample = Self

		global_level :+ 1
		'QueryPerformanceCounter(start_t)
		start_t = MilliSecs()
	End Method
	
	
	Method stop()
		If(Not running)
			DebugLog("Profiler: Sample '"+name+"' is not started")
			Return
		End If
		
		last_sample = parent
		
		running = False
		global_level:-1
		'QueryPerformanceCounter(end_t)
		end_t = MilliSecs()
		
		'total_t:+Double(end_t - start_t) / (Double(freq) / 1000)
		total_t:+(end_t - start_t)
	End Method


	Method get_t:Int()
		Local t:Int = total_t
		total_t = 0
		Return t
	End Method

End Type



Global _prof_last_t:Int		' Last time the results were called


Function CreateSample:TProfSample(name:String)
	Return TProfSample.create(name)
End Function

Function DeleteSample(sample:TProfSample)
	TProfSample.DeleteSample(sample)
End Function

Function StartSample(sample:TProfSample)
	sample.start()
End Function

Function StopSample(sample:TProfSample = Null)
	If(Not sample) Then sample = TProfSample.last_sample
	sample.stop()
End Function


Function Profile(min_interval=1000)
	TProfResult.getResults(min_interval)
End Function

Function ShowProfInfo()
	TProfResult.displayResults()
End Function