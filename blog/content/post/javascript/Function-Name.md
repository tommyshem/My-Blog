Logging function name with a debug function.

Sample Example below.

```javascript
#!/usr/bin/gjs

// Used for debugging when tracking unknown function calls
function GetFunctionName(){
	print( "This Function Name : " + arguments.callee.name);
	print ("Called from function : " + GetFunctionName.caller.name);
}
// Test function
function FunctionC(){
	// Print this function name
	print ( "Fuction Name : " + arguments.callee.name );
	// Print this function name from function call
	GetFunctionName();
}
// Call test function
FunctionC();
```
