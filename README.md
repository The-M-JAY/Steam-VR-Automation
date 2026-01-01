# Steam-VR-Automation
A combination of Powershell Scripts mixed with Stream Deck profiles to help optimise some processes at the VR business I work at.

If you have multiple windows PCs; using the keyboards for everything is a little slower and more cumbersome than using buttons on the stream deck, allowing you to go through the setup process quicker. 

## How to Use
Import the latest stream deck profile provided. Then Create two folder called "GameShortcuts" and "JaySteamGameKillerv2". Place them into your Program Files(x86) folder. Directory should match this : || C:\Program Files (x86)\GameShortcuts\JaySteamGameKillerv2\JayPCShutdownScript.ps1  ||

Then run each of the "SYSTEM" Folder Commands atleast once, then run the commands after checking the "run always" or something similar. 

# How it Works and brief introduction to what it can currently do. 
The system is currently proof of concept, in its current state it helped me optimise the session speed and shutdown procedures , without a digital checklist. 

It allows you to do this using one button press.
kill steam games 
kill steam games and kill steamvr
kill steam games, steam vr and shutdown the pc
abort shutdown (using the command shutdown /a)[only works after script has been completed]

The Shutdown Procedure Is as follows:
{
Kill any Steam Game Running
delay
Kill SteamVR x5 (Send termination signal so the vrmonitor window can start shutting down the base stations) (Without Using Stop process)
delay for 15 Seconds so base stations have time to turn off
Kill Discord and Steam
delay
Initiate/Log Shutdown in 30 seconds
}


WORKS FOR STEAMVR WINDOWS

The Stream Deck buttons launch .cmd files which let you see the commands upfront and see what it does. 

# Why use Powershell when StreamDeck already allows you to do this ? 
I also Used powershell to help do some things that streamdeck can struggle with since stream deck relies on entering the commands in through text, which can mess up when you are using other software such as "Mouse Without Borders", where , if you enter the button on one computer and drag your mouse over to the next, stream deck continues to enter the command into the other PC, since it is just acting like an automated keyboard. A Macro If you will.

Using Powershell also allows us to expand on what is possible without relying on add-ons, and can also allow you to do the same things on a PC that does Not have a StreamDeck. 


