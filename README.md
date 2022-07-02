# Unified Naming Convention
aka UNC, is an organization between executor developers to provide a unified scripting API for our scripters.

**Please go to our official website for better styled information: https://scriptunc.org/**

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
As a product owner, your support of UNC by following the API will result in a far smoother experience for scripters, as they are able to work on scripts that they can confidently say will work on **most** products. Once you have implemented UNC's API, you can display so by adding the badge to your website, thread or application.

You can find the badge here: https://scriptunc.org/badge

This will notify people of your alliance in providing scripters with an easier method of engineering scripts that your consumers can enjoy.

NOTICE: If you, as a product owner, do not have all of these functions but yet support the ones you do - you then support UNC! You are more than able to display the badge on your website.

## Checking your environment

You can run the UNC environment checking script to see how well your executor environment supports the UNC standard. Find the script [here.](UNCCheckEnv.lua) The script determines what is missing, and writes the results to file under workspace.

# Contributing

## Guidelines
* Adding a new function can be done by copying TEMPLATE.md, renaming it, and editing it as needed.
* You may provide edits of existing functions, just edit and submit it.
* When possible, organise files in their respective category folders.
* When writing the function signature, please make sure it is **valid typed Luau syntax**. Documentation for typed luau can be found [here](https://luau-lang.org/typecheck#union-types).
* When referencing arguments of a function in the description, please use `` in order to make `it look nice like so`.
* Please confirm a function has not already been added to the API before you submit it.

* Functions must be named appropriately, if you are contributing one - the following criteria applies for the naming:
  * No brand names should be visible in your documentation.
    * This also includes function alias' - UNC aims to be a vanilla naming convention, not a branded one
   * The function name must be **descriptive of what the function does**.
   * Aliases for shortening function names without good reason are *not* allowed. For example, `hookfunc` is not a alias supported by UNC. Function names should be written out in full.
  
* The description must be coherent, if the function is basic enough to not warrant one - you may put "N/A" in the description.
* Functions don't always require an alias, you may just also put N/A in that field.

## Submitting your edits and/or additions
This can be done through [github pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests). Clone the repository, make your changes, then submit a pull request. The pull request will be reviewed by several members of the UNC before it is merged.
