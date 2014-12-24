(* This is how to tell AE to run a script on OSX *)
set pwd to POSIX path of ((path to me as text) & "::")
tell application "Adobe After Effects CC 2014"
  DoScriptFile pwd & "script_with_comp.jsx"
end tell