---
title : "DIY trigger cable for Biosemi"
authors:
- admin
categories: 
date : "2019-02-05T23:29:02+01:00"
draft: false
featured: false
image:
  caption: ""
  focal_point: ""
lastMod: 
projects: []
subtitle: 
summary:
tags: []
---

This guide will show you how to transform a normal parallel port cable to use with a Biosemi EEG acquisition system. The parallel port cable is normally used to mark events of interest on the EEG data, on works by sending *triggers* from a stimulation computer running an experiment to the Biosemi receiver, which will then merge the triggers with the incoming digital EEG data.

### Why?

The Biosemi receiver has a **DB37-type connector, with 37 pins**. However, most parallel ports on computers are **DB25 connectors with 25 pins**. 

{{< figure src="1.JPG" title="Connectors" >}}

Since I was having a hard time finding a DB25-to-DB37 cable, and I did not want to order – an expensive – new one from Biosemi, I decided to make my own. Luckily, the makers of Biosemi provide on their website ([here][1] and [there][2]) the necessary information to get you started.

What you will need:

- DB-25 (Male) to DB-25 (Male) **parallel port cable**  (I bought one from Amazon for 9 Euro)
- **DB37 (Male) connector** (I bought one in a local shop for 5 Euro)
- Wire cutters, soldering iron

### Cutting

First step is to open up one of the two ends and to take note of which cables go into which pins. According to [Biosemi’s website](https://www.biosemi.com/faq/presentation.htm), we only need pins 2-9 and pin 25 (Ground).

In my case, those pins on the DB25 had the following cable colors:

| Pin  | Color   |
|---|---|
| 2  | Black White  |
| 3  | Brown  |
| 4  | Brown White  |
| 5  | Red  |
| 6  | Red White  |
| 7  | Red Black  |
| 8  | Orange  |
| 9  | Orange White  |
| 25  | White (Ground)  |

{{< figure src="3.JPG" title="Open" >}}

The colors on my cable

{{< figure src="4.JPG" title="Colors" >}}

### Soldering

The next step was to reconnect (soldering) the selected cables to their new positions on the DB37 connector. Watch out for the **difference in positions**: as indicated in Biosemi’s website, Pins 2-9 on the DB25 correspond to pins 1-8 on the new DB37. 

{{% alert note %}}
For soldering, it’s best to ask for help from someone with soldering experience (thanks Lars).
{{% /alert %}}

In my case, the colors were as follow, but colors might differ for you.


| DB25 (original) | DB37 (new) | Color  |
|---|---|---|
| 2  | 1  | Black White  |
| 3  | 2  | Brown  |
| 4  | 3  | Brown White  |
| 5  | 4  | Red  |
| 6  | 5  | Red White  |
| 7  | 6  | Red Black  |
| 8  | 7  | Orange  |
| 9  | 8  | Orange White  |
| 25  | 37  | White (Ground)  |

{{< figure src="5.JPG" title="Soldered" >}}

And here is the end result:

{{< figure src="6.JPG" title="Final" >}}

[here][1] : https://www.biosemi.com/faq/presentation.htm
[there][2]: https://www.biosemi.com/faq/trigger_signals.htm 



