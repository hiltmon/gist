# Gist

Command line access to create, get and update GitHub gists.

What makes this one unique is that it *caches* Gist id's so you can *update* gists from the command line without remembering the ID to file name mapping. This cache is also used in the [TextMate Gist bundle](https://github.com/hiltmon/Gist.tmbundle) (this script was created to test it).

On OS X, it also leaves the gist URL in the clipboard.

## Installation

All you really need is the `gist` file from this repo, place it somewhere on your path. 

This command does require access to the `JSON` gem, so please

    $ sudo gem install json
	
Just set up authentication and you're good to go.
	
## Authentication

There are two ways to set GitHub user and password info:

Using the environment variables vars GITHUB_USER and GITHUB_PASSWORD in either the shell or TextMate variables:

	$ export GITHUB_USER="your-github-username"  
	$ export GITHUB_PASSWORD="your-github-password"  


Or by having your git config set up with your GitHub username and password **(Recommended)**.

	git config --global github.user "your-github-username"  
	git config --global github.password "your-github-password"  

## Usage

The command line requires a command and an ID or a file.

**gist get &lt;gist-id&gt;**: Downloads all the files from the numbered gist into the local folder. For example:

	$ gist get 5031324
	Retrieved test_gist.markdown
	

**gist list &lt;user&gt;**: Lists up to 100 (API limit) gists with their files and IDs:

	$ gist list hiltmon
	5032041,new_gist.markdown
	5031324,test_gist.markdown
	...
	
**gist id &lt;filename&gt;**: Displays the gist ID of a file if it is in the cache.

	$ gist id test_gist.markdown 
	5031324

**gist url &lt;filename&gt;**: Displays the gist URL of a file if it is in the cache.

	$ gist url test_gist.markdown 
	https://gist.github.com/5031324

**gist update &lt;filename&gt;**: Updates the file in it's gist if it is in the cache.

	$ gist update test_gist.markdown 
	5031324 Updated...
	
**gist create &lt;filename&gt;**: Creates a new **public** gist for the given file name and returns the url on the command line and clipboard.

	$ gist create another_gist.markdown 
	5032973 Created...

Some limitations to be aware of:

* Gists have no path information, so be careful to use unique file names for files in gists. This bundle will map a unique file name to a unique gist id. If the same file name exists elsewhere, this bundle will assume its the same file from another gist.
* Although you can download multi-file gists, the create and update processes only work with the single files.

## The Cache
	
This plugin caches the mapping between file names and gist id's in the file `~/.gists`. This cache is shared with my TextMate gists bundle. The script uses this cache to enable updates to gists without the user having to remember gist id's (and because TextMate does not have any way to add custom attributes to open files).

## Contributing

This is but the first version of this bundle. If you have any ideas or wish to contribute, go ahead.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# License
(The MIT License)

Copyright (c) 2013 Hilton Lipschitz, [http://www.hiltmon.com](http://www.hiltmon.com), [hiltmon@gmail.com](mailto:hiltmon@gmail.com).  

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

