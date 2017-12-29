# NewsHub

Newshub is a service to predict stock market by collecting social media stream

## Prerequisites
* python 2.7
* virtualenv

#### Prerequisite installations
For Mac users, installing dependencies through Homebrew is probably the most convenient way.

[Homebrew page](http://brew.sh/index.html), with instructions for installation

Run ./init.sh to install Homebrew dependencies, python dependencies for Newshub.

init.sh runs the following commands:

###### Install Brew Dependencies

```
brew update
brew install python
```

##### Install Python Dependencies
```
pip install virtualenv
virtualenv ~/lqd_virt_env
source ~/lqd_Virt_env/bin/activate
pip install -r crawler/requirements.txt --target crawler/packages 

```

init.sh pip installs requirements.txt for /crawler.


## License
MIT License

Copyright (c) 2017 Kevin Zhang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.