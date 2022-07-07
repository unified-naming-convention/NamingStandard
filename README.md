![UNC](images/badge.png)
# Unified Naming Convention (UNC)
Providing a unified scripting API for all script developers.

[For more information, visit us at our website.](https://scriptunc.org/)

## Why?
Over the years scripting has gotten more and more complex to support multiple executors. This is because of the many unique naming conventions various executors use.

Consider the following scenario. You want to know if a function belongs to the executor or not. In order for this code to be cross compatiable with all executors code like this is needed:
```lua
local is_executor_closure = is_syn_closure or is_fluxus_closure or is_sentinel_closure or is_krnl_closure or is_proto_closure or is_calamari_closure or is_electron_closure or is_elysian_closure
```
This is reality for scripters who want cross compatibilty in their scripts. Scripters shouldn't have to do such laborous work just to attain cross compatability. The UNC seeks to solve this problem using naming conventions everyone agrees upon and follows.

One variant of a script should naturally work on all script executors which have their environment properly fitted to the UNC. 
## How?
The UNC provides standards for naming conventions as well as API functionality. The standard is written in markdown on this GitHub. Edits or additions are done through pull requests. Edits and additions are manually approved by the UNC council and discussed by everyone.
## Supporting UNC
By supporting UNC you are to include compatibility for your scripting environment and discoverability to this repository or the website. If you are missing a function, please specify the missing functions in your documentation.
## Integrity checks for UNC environments.
To run an integrity check, use [UNCCheckEnv.lua](scripts/UNCCheckEnv.lua) on your designated scripting environment. Refer to the output for incompatible functions.
# Contributing
## Guidelines
* To contribute to the documentation, copy [TEMPLATE.md](api/TEMPLATE.md)'s source code & modify it to your preference.
* You may provide edits to existing functions by creating an edit and making a Pull Request.
* Keep things organized. If a function does not seem to belong anywhere, make sure your descriptive text for the documentation makes clear of it's usage.
* When writing a function signature, please make sure it's valid in [Luau Syntax](https://luau-lang.org/typecheck).
* Use `escaping backticks` to enclose an argument or scriptable object when making a comment about it.
* Deprecation & function vulnerability should be the only call to change a function's behavior.
* If you are creating a function with an already existing behavior, please submit it as an alias to the function you are replicating.
* Naming Criteria:
	* Branding is not allowed, including aliases in written documentation.
	* Self-explanatory naming is required if possible. (ex: `gethiddenproperty` with the description: "Returns the hidden property of the specified object.")
	* Written function aliases cannot be short versions of their original name.
* Coherent description required if function is complex, otherwise **N/A** is used.
## Submissions for edits & additions
Submissions are processed through [GitHub Pull Requests](https://docs.github.com/en/articles/creating-a-pull-request). Any modifications you make are cloned onto patches in your fork of the original repository. Once done with the modifications, you can submit the fork for a pull request which will then be reviewed and given appropriate action.
