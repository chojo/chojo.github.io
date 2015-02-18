---
layout: post
title: D3.js Data Visualization
description: "Data Visualization with external Data Sources"
modified: 2015-02-16
tags: [D3js]
image:
  feature: abstract-2.jpg
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
comments: true
share: true  
---
### D3.js
[D3.js Homepage](http://d3js.org/) 
D3.js is a JavaScript library for manipulating documents based on data. D3 helps you bring data to life using HTML, SVG, and CSS. D3’s emphasis on web standards gives you the full capabilities of modern browsers without tying yourself to a proprietary framework, combining powerful visualization components and a data-driven approach to DOM manipulation.

### External Data Sources

* File based: CSV, TSV, JSON, XML, Text, HTML

* Dynamic: GET, POST, AJAX (xhr)


### Working with CSV Data

MonthlySales.csv

{% highlight html %}
month, sales
20130101, 38
20130201, 28
20130301, 18
20130401, 38
20130501, 48
20130601, 68
20130701, 38
20130801, 78


{% endhighlight %}

### HTML

working-with-csv.html

{% highlight html %}

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
  </head>
  <body>
    <script>      
      var h = 100;
      var w = 400;
      var ds; // global var for data
      
      function buildLine() {
      
        var lineFun = d3.svg.line()
                        .x(function (d) { return ((d.month-20130001)/3.25); })
                        .y(function (d) { return h-d.sales; })
                        .interpolate("linear");
      
        var svg = d3.select("body").append("svg").attr({ width:w, height:h });
      
        var viz = svg.append("path")
                     .attr({
                       d: lineFun(ds),
                       "stroke" : "purple",
                       "stroke-width": 2,
                       "fill": "none"
                     });  
      }
      
      d3.csv("MonthlySales.csv", function(error, data) {
        if(error) {
          console.log(error);
        } else {
          console.log(data);
          ds = data;
        }

        buildLine();
      
      });
      
    </script>
  </body>
</html>

{% endhighlight %}


