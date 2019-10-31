# Jmeter test plans

# Table of contents
1. [What is Jmeter](#jmeter_is)
	1. [Other Jmeter uses](#jmeter_test_plan)
	2. [What is test plan](#)
2. [Jmeter installation](#jmeter_installation)
    1. [MacOS](#jmeter_macos)
	    1. [To install HomeBrew](#homebrew) 
	    2. [Install Jmeter](#jmeter_install)
	    3. [Launch Jmeter](#jmeter_launch)
3. [How to install the JMeter plugins manager](#plugins_manager)
4. [Run Jmeter from CLI](#jmeter_cli)
5. [Web sites where you can practice](#practice)
	1. [api.jmeter.ninja](#jmeter_ninja)
	2. [Blazedemo](#Blazedemo)
	3. [Other web sites](#other)


## What is Jmeter <a name="jmeter_is"></a>

Apache JMeter is an Apache open source software project that can be used as a load testing tool for analyzing and measuring the performance of a variety of services, with a focus on web applications.
[^[What is Apache Jmeter used for](https://www.quora.com/What-is-Apache-JMeter-used-for)]

### Other Jmeter uses <a name="jmeter_uses"></a>

* to perform functionality tests on an application’s backend
* use assertions to configure functional testing in JMeter
* can be integrated into Selenium using the plugins
* can be used in non-GUI mode

### What is test plan <a name="jmeter_test_plan"></a>

A Test Plan can be viewed as a container for running tests. It defines what to test and how to go about it. A complete test plan consists of one or more elements such as thread groups, logic controllers, sample-generating controllers, listeners, timers, assertions, and configuration elements.
[^[Performance Test Plan using JMeter](https://github.com/department-of-veterans-affairs/ascent-sample/wiki/QA-:-Performance-Test-Plan-using-JMeter)]

## Jmeter installation <a name="jmeter_installation"></a>

### MacOS <a name="jmeter_macos"></a>

#### To install HomeBrew <a name="homebrew"></a>

```bash 
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$ brew update
```

#### Install Jmeter <a name="jmeter_install"></a>

```bash 
$ brew install jmeter

$ brew upgrade jmeter
```

#### Launch JMeter <a name="jmeter_launch"></a>

```bash 
$ jmeter -?

$ jmeter
```

### How to install the JMeter plugins manager <a name="plugins_manager"></a>

* Download the [Plugins Manager JAR file](https://jmeter-plugins.org/install/Install/)
* Put the file in the lib/ext directory
* Restart JMeter
* Click “Options” and then “Plugins Manager”
[^[How to Install the JMeter Plugins Manager](https://www.blazemeter.com/blog/how-install-jmeter-plugins-manager/)]

### Run Jmeter from CLI <a name="jmeter_cli"></a>

`jmeter  -n -t <test_plan_name> -l results.jtl -e -o <path_where_html_will_be_saved>`

`jmeter  -n -t landonhotel.jmx -l results_.jtl -e -o html_report`

### Web sites where you can practice <a name="practice"></a>

#### api.jmeter.ninja <a name="jmeter_ninja"></a>

```
http://api.jmeter.ninja/example.html. 
http://api.jmeter.ninja/objects.xml 
http://api.jmeter.ninja/objects/${OBJECT}.XML - Where ${OBJECT} is taken from the objects.xml page.
```
[^[Tutorial](http://api.jmeter.ninja/jmeter.pdf)]

#### Blazedemo <a name="Blazedemo"></a>

```
blazedemo.com
```

### Other web sites <a name="other"></a>

```
http://newtours.demoaut.com/mercuryregister.php
http://blazedemo.com/register
http://computer-database.gatling.io/computers?p=1
https://www.techbeamers.com/websites-to-practice-selenium-webdriver-online/#1httpsphptravelscomdemo
```

### Notes
- it's not recommended to add listeners for large tests, because displaying output live during load test can use a lot of system resources
- it's better to graph the data after the tests is finished
- to add some element of randomness to the test, so that it appears more human, you can add timer, for example, Gaussian Random Timer with Deviation 500 and Delay offset 1000 - meaning that before every user's action there will be a pause f 0.5-1.5 seconds
- issues with RAM or CPU power for JMeter can be resolved by running a load test from the Command Line Interface
- all listeners are ignored while running Jmeter in CLI mode
-  .jtl files can be transposed to .xlsx, .cvs
