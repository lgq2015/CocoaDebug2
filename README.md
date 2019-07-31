| <img alt="logo" src="https://raw.githubusercontent.com/CocoaDebug/CocoaDebug/master/pic/logo.png" width="250"/> | <ul align="left"><li><a href="https://github.com/CocoaDebug/CocoaDebug/wiki/%E4%B8%AD%E6%96%87%E4%BB%8B%E7%BB%8D">中文介绍</a><li><a href="#introduction">Introduction</a><li><a href="#installation">Installation</a><li><a href="#usage">Usage</a><li><a href="#parameters">Parameters</a></ul> |
| -------------- | -------------- |
| Travis CI | [![Build Status](https://travis-ci.org/CocoaDebug/CocoaDebug.svg?branch=master)](https://travis-ci.org/CocoaDebug/CocoaDebug) |
| Codacy | [![Codacy Badge](https://api.codacy.com/project/badge/Grade/6aac8606d10f403a811cafdf870bb552)](https://www.codacy.com/app/CocoaDebug/CocoaDebug?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=CocoaDebug/CocoaDebug&amp;utm_campaign=Badge_Grade) |
| Codecov | [![codecov](https://codecov.io/gh/CocoaDebug/CocoaDebug/branch/master/graph/badge.svg)](https://codecov.io/gh/CocoaDebug/CocoaDebug) |
| Frameworks | [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/CocoaDebug.svg)](https://img.shields.io/cocoapods/v/CocoaDebug.svg) |
| Languages | ![Languages](https://img.shields.io/badge/languages-Swift%20%7C%20ObjC-blue.svg) |
| Platform | ![Platform](https://img.shields.io/badge/platforms-iOS%208.0+-blue.svg) |
| Licence | <img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License MIT"/> |

<span style="float:none" />

## Introduction

![example](https://raw.githubusercontent.com/CocoaDebug/CocoaDebug/master/pic/example.gif)

- [x] Shake to hide or show the black bubble. (support both device and simulator)

- [x] Long press the black bubble to show `UIDebuggingInformationOverlay`. (Apple's Private API, support iOS 10/11/12)

- [x] Application memory usage and *FPS*.

- [x] List all `print()` and `NSLog()` messages which have been written by developer in Xcode. (**optional**)

- [x] List of all the network requests sent by the application. (**optional**)

- [x] List crash errors. (**optional**)

- [x] Share network details via email or copy to clipboard when you are in the *Network Details* page.

- [x] Copy logs. (long press the text, then select all or select copy)

- [x] Search logs by keyword.

- [x] List application and device informations, including: *version*, *build*, *bundle name*, *bundle id*, *screen resolution*, *device*, *iOS version*

- [x] List all sandbox folders and files, supporting to preview and edit.

- [x] List HTML logs, including `console.log()`,`console.debug()`,`console.warn()`,`console.error()`,`console. info()`. (support both `WKWebView` and `UIWebView`). (**optional**)

- [x] Support `JSON` and Google's `Protocol buffers`

## Installation

### CocoaPods

```ruby
platform :ios, '8.0'
use_frameworks!

target 'YourTargetName' do
    pod 'CocoaDebug2', :configurations => ['Debug']
end
```

## Usage

### Objective-C
	
    //Step 1. (AppDelegate.m)
    #ifdef DEBUG
        @import CocoaDebug;
    #endif
	
    //Step 2. (AppDelegate.m)
    #ifdef DEBUG
        [CocoaDebug enable];
    #endif

## Parameters

When you initialize CocoaDebug, you can customize the following parameter values before `CocoaDebug.enable()`.

- `serverURL` - If the crawled URLs contain server URL ,set these URLs bold font to be marked. not mark when this value is nil. default value is **nil**.

- `ignoredURLs` - Set the URLs which should not crawled, ignoring case, crawl all URLs when the value is nil. default value is **nil**.

- `onlyURLs` - Set the URLs which are only crawled, ignoring case, crawl all URLs when the value is nil. default value is **nil**.

- `tabBarControllers` - Set controllers to be added as child controllers of UITabBarController. default value is **nil**.

- `logMaxCount` - The maximum count of logs which CocoaDebug display. default value is **1000**.

- `emailToRecipients` - Set the initial recipients to include in the email’s “To” field when share via email. default value is **nil**.

- `emailCcRecipients` - Set the initial recipients to include in the email’s “Cc” field when share via email. default value is **nil**.

- `mainColor` - Set the main color with hexadecimal format. default value is **#42d459**.
