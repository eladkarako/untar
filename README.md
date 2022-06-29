<h2>

[Windows] binaries and batch files to help you easily extract `.tar`, `.tar.br`, `.tar.bz2`, `.tar.gz`, `.tar.lz4`, `.tar.lzma`, `.tar.xz` (lzma2), `.tar.zst` - it is ready to use, dependencies included.

</h3>

<hr/>

<h3>How To Use?</h3>

either  

1.  drag&amp;drop your file over `un.cmd` to automatically choose the extraction-algorithm for you, based on file-extension.  
or  
2. drag&amp;drop your file over a specific `un_tar*.cmd`.

<hr/>

<blockquote>
<h3>TIP!</h3>

if you don't know what your file is,  
you can try sniff it with https://github.com/eladkarako/ekID .

</blockquote>

<hr/>

<h3>extracts?, wiki-reference, binaries' origin</h3>

- `.tar.br` - https://en.wikipedia.org/wiki/Brotli (https://github.com/git-for-windows/git » `PortableGit-*-bit.7z.exe` » (open with 7zip) » `/mingw32/bin/brotli.exe` + `/mingw32/bin/libbrotlicommon.dll` + `/mingw32/bin/libbrotlidec.dll`).
- `.tar.bz2` - https://en.wikipedia.org/wiki/Bzip2 (https://github.com/git-for-windows/git » `PortableGit-*-bit.7z.exe` » (open with 7zip) » `/usr/bin/bzip2.exe`).
- `.tar.gz` - https://en.wikipedia.org/wiki/Gzip (https://github.com/git-for-windows/git » `PortableGit-*-bit.7z.exe` » (open with 7zip) » `/usr/bin/gzip.exe`).
- `.tar.lz4` - https://en.wikipedia.org/wiki/LZ4_(compression_algorithm) (https://github.com/lz4/lz4 » `lz4_win*_v*.zip` » `lz4.exe`)
- `.tar.lzma` - https://en.wikipedia.org/wiki/LZMA (https://www.7-zip.org/sdk.html » `lzma*.7z` » `/bin/lzma.exe`).
- `.tar.lzo` - https://en.wikipedia.org/wiki/Lzop (https://www.lzop.org/ » `lzop*w.zip` » `/lzop*w/lzop.exe`).
- `.tar.xz` - https://en.wikipedia.org/wiki/XZ_Utils (a.k.a. https://en.wikipedia.org/wiki/Lempel%E2%80%93Ziv%E2%80%93Markov_chain_algorithm#LZMA2_format)  (https://github.com/git-for-windows/git » `PortableGit-*-bit.7z.exe` » (open with 7zip) » `/mingw32/bin/xz.exe` + `/mingw32/bin/liblzma-5.dll`)
- `.tar.zst` - https://en.wikipedia.org/wiki/Zstandard (https://github.com/facebook/zstd » `/zstd-v*-win*/zstd.exe`).
- `.tar.z` - https://en.wikipedia.org/wiki/Compress (https://github.com/andrew-aladev/lzws » `lzws-sparse-array-tommath-*.exe` » (open with 7zip) » `/bin/lzws-static.exe` (« does not need `tommath.dll`, it's built into it).
- `.tar` - plain tar, a.k.a. tarball, a.k.a. Tape ARchive - https://en.wikipedia.org/wiki/Tar_(computing) (https://github.com/git-for-windows/git » `PortableGit-*-bit.7z.exe` » (open with 7zip) » `/usr/bin/tar.exe`).

<hr/>

<h3>License(s)</h3>

- the binaries' licences vary, please check before re-distributing them. they are unmodified. 
- lzop : https://www.lzop.org/lzop-license.html  
- zstd : https://github.com/facebook/zstd/blob/dev/LICENSE https://github.com/facebook/zstd/blob/dev/COPYING  
- lz4  : https://github.com/lz4/lz4/blob/dev/LICENSE  
- brotli : https://github.com/google/brotli/blob/master/LICENSE  
- gzip : https://www.gnu.org/licenses/gpl-3.0.html  
- git-for-windows : https://github.com/lz4/lz4/blob/dev/LICENSE https://github.com/git-for-windows/git/blob/main/COPYING  
- the batch files (which are the rest of the repository) of my doing, are Public Domain ("The UnLicense").  

<hr/>

<h3>Support The Developers</h3>

- if you've found this repository useful, it is because it stands on the shoulders of giants. links repositories are provided, feel free to show your appreciation.
- you can also <a href="https://paypal.me/%65%31%61%64%6B%61%72%61%6B%30/%35%55%53%44">support the development of this repository</a>.
