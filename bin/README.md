holds the binaries,  
currently its 32bit (x86) exe/dlls, for compatibility.  

I'm checking to see if it is better to include a 64bit (amd64) version of the binaries instead.

the files are (currently) unmodified,  
but I might patch them to be suitable for Windows 11 without vista-compatibility mode,  
this is normally done by binary patching to replace the embedded manifest (resource-24),  

as well as large address allocation awareness binary patch (especially important for 32bit binaries).

..might even UPX-compress them all to shrink the size of the whole repository..  

but as of now, they are just the original files..