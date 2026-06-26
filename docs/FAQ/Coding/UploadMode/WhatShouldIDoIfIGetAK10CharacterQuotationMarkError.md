# What should I do if I get a K10 character quotation mark error?


## Problem Description

The following error occurred while programming using the UINIHIKER K10:

* error: stray '\350' in program
* Text displayed without quotation marks

![img](https://mindplus.dfrobot.com.cn/mp2/FAQ/Coding/UploadMode/img/a6636a73-1d70-4b56-915c-88ed396db2a7.png)


## Analysis of Causes

The Mind+ 2.1.0 software changed the logic of the quotation mark input field, causing K10 (version 0.0.1) to fail to generate quotation marks.


## Solution

1. Click the "Extensions" panel in the lower-right corner of the Mind+ interface
1. Find the K10 Mainboard Expansion

1. Update the K10 controller to version 0.0.2 or later. See the figure below.

![image](./WhatShouldIDoIfIGetAK10CharacterQuotationMarkError.assets/pic_1782202414339.png)
