# Jmeter test plans

## What is Jmeter

Apache JMeter is an Apache open source software project that can be used as a load testing tool for analyzing and measuring the performance of a variety of services, with a focus on web applications.
[^[What is Apache Jmeter used for](https://www.quora.com/What-is-Apache-JMeter-used-for)]

### Other Jmeter uses

* to perform functionality tests on an application’s backend
* use assertions to configure functional testing in JMeter
* can be integrated into Selenium using the plugins
* can be used in non-GUI mode

### What is test plan

A Test Plan can be viewed as a container for running tests. It defines what to test and how to go about it. A complete test plan consists of one or more elements such as thread groups, logic controllers, sample-generating controllers, listeners, timers, assertions, and configuration elements.
[^[Performance Test Plan using JMeter](https://github.com/department-of-veterans-affairs/ascent-sample/wiki/QA-:-Performance-Test-Plan-using-JMeter)]

## Jmeter installation

### MacOS

#### To install HomeBrew

```bash 
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$ brew update
```

#### Install Jmeter

```bash 
$ brew install jmeter

$ brew upgrade jmeter
```

#### Launch JMeter

```bash 
$ jmeter -?

$ jmeter
```

### How to install the JMeter plugins manager

* Download the [Plugins Manager JAR file](https://jmeter-plugins.org/install/Install/)
* Put the file in the lib/ext directory
* Restart JMeter
* Click “Options” and then “Plugins Manager”
[^[How to Install the JMeter Plugins Manager](https://www.blazemeter.com/blog/how-install-jmeter-plugins-manager/)]

### Web sites where you can practice

#### api.jmeter.ninja

```
http://api.jmeter.ninja/example.html. 
http://api.jmeter.ninja/objects.xml 
http://api.jmeter.ninja/objects/${OBJECT}.XML - Where ${OBJECT} is taken from the objects.xml page.
```
[^[Tutorial](http://api.jmeter.ninja/jmeter.pdf)]


#### Blazedemo

```
blazedemo.com
```

### Other web sites

```
http://newtours.demoaut.com/mercuryregister.php
http://blazedemo.com/register
http://computer-database.gatling.io/computers?p=1
https://www.techbeamers.com/websites-to-practice-selenium-webdriver-online/#1httpsphptravelscomdemo
```

