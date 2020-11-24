<h1>Table of Contents<span class="tocSkip"></span></h1>
<div class="toc"><ul class="toc-item"><li><span><a href="#Initial-Jobless-Claims" data-toc-modified-id="Initial-Jobless-Claims-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Initial Jobless Claims</a></span><ul class="toc-item"><li><span><a href="#Source" data-toc-modified-id="Source-1.1"><span class="toc-item-num">1.1&nbsp;&nbsp;</span>Source</a></span></li><li><span><a href="#Stretch-to-a-full-browser-width" data-toc-modified-id="Stretch-to-a-full-browser-width-1.2"><span class="toc-item-num">1.2&nbsp;&nbsp;</span>Stretch to a full browser width</a></span></li></ul></li><li><span><a href="#Visualize-the-Data" data-toc-modified-id="Visualize-the-Data-2"><span class="toc-item-num">2&nbsp;&nbsp;</span>Visualize the Data</a></span><ul class="toc-item"><li><span><a href="#Print-original-data-as-is" data-toc-modified-id="Print-original-data-as-is-2.1"><span class="toc-item-num">2.1&nbsp;&nbsp;</span>Print original data as is</a></span></li><li><span><a href="#Plot-before-2020.03.19" data-toc-modified-id="Plot-before-2020.03.19-2.2"><span class="toc-item-num">2.2&nbsp;&nbsp;</span>Plot before 2020.03.19</a></span></li><li><span><a href="#Plot-after-2020.03.19" data-toc-modified-id="Plot-after-2020.03.19-2.3"><span class="toc-item-num">2.3&nbsp;&nbsp;</span>Plot after 2020.03.19</a></span></li></ul></li></ul></div>

# Initial Jobless Claims

Initial Jobless Claims show the number of people filing to receive unemployment insurance benefits for the first time over the past week. In other words, the indicator reflects how many people lost their jobs during the given period.

The indicator is used to assess the state of the labor market and general US economy health. Since the weekly flow of data show high volatility, four-week average values are often monitored instead. High volatility can stem from different factors. For example, there can be less claims due to a reduced working week (during holidays or vacations).

The systematic growth of the indicator points to a weakening of the labor market and to an increase in unemployment. Initial jobless claims typically rise before the economy enters the recession. Conversely, they may decline before the economy starts to recover. Therefore, it is considered a strong leading indicator of the US economy health.

In addition, the Fed takes into account the state of the labor market in its interest rate decision. So, the growth of jobless claims registered for several weeks in a row can have a negative effect on US dollar quotes.

## Source
- [https://www.mql5.com/en/economic-calendar/united-states/initial-jobless-claims](https://www.mql5.com/en/economic-calendar/united-states/initial-jobless-claims)

## Stretch to a full browser width


```julia
display("text/html", "<style>.container { width:100% !important; }</style>")
```


<style>.container { width:100% !important; }</style>



```julia
include("MarketIndicators.jl")
```

    function: df = fetch_data(file_path, date_format="yyyy-mm-dd" )
    function: df = shift_dates_by_days!(df, shift_days=-1, date_column=1)
    function: rata_die = days_since_day_one(df, row, date_column) 
    function: df = update_rata_die!(df, days_column=1, date_column=2)
    function: df = insert_rata_die_column!(df)



```julia
df1 = fetch_data(file_initial_jobless_claims, "yyyy-mm-dd" )
```




<table class="data-frame"><thead><tr><th></th><th>Date</th><th>ActualValue</th><th>ForecastValue</th><th>PreviousValue</th></tr><tr><th></th><th>String</th><th>Int64</th><th>Int64⍰</th><th>Int64</th></tr></thead><tbody><p>700 rows × 4 columns</p><tr><th>1</th><td>2020.09.03</td><td>881</td><td>1059</td><td>1011</td></tr><tr><th>2</th><td>2020.08.27</td><td>1006</td><td>1039</td><td>1104</td></tr><tr><th>3</th><td>2020.08.20</td><td>1106</td><td>1078</td><td>971</td></tr><tr><th>4</th><td>2020.08.13</td><td>963</td><td>1316</td><td>1191</td></tr><tr><th>5</th><td>2020.08.06</td><td>1186</td><td>1435</td><td>1435</td></tr><tr><th>6</th><td>2020.07.30</td><td>1434</td><td>1368</td><td>1422</td></tr><tr><th>7</th><td>2020.07.23</td><td>1416</td><td>1315</td><td>1307</td></tr><tr><th>8</th><td>2020.07.16</td><td>1300</td><td>1379</td><td>1310</td></tr><tr><th>9</th><td>2020.07.09</td><td>1314</td><td>1200</td><td>1413</td></tr><tr><th>10</th><td>2020.07.02</td><td>1427</td><td>3413</td><td>1482</td></tr><tr><th>11</th><td>2020.06.25</td><td>1480</td><td>3613</td><td>1540</td></tr><tr><th>12</th><td>2020.06.18</td><td>1508</td><td>3867</td><td>1566</td></tr><tr><th>13</th><td>2020.06.11</td><td>1542</td><td>4272</td><td>1897</td></tr><tr><th>14</th><td>2020.06.04</td><td>1877</td><td>4048</td><td>2126</td></tr><tr><th>15</th><td>2020.05.28</td><td>2123</td><td>41</td><td>2446</td></tr><tr><th>16</th><td>2020.05.21</td><td>2438</td><td>-165</td><td>2687</td></tr><tr><th>17</th><td>2020.05.14</td><td>2981</td><td>-2482</td><td>3176</td></tr><tr><th>18</th><td>2020.05.07</td><td>3169</td><td>6399</td><td>3846</td></tr><tr><th>19</th><td>2020.04.30</td><td>3839</td><td>6715</td><td>4442</td></tr><tr><th>20</th><td>2020.04.23</td><td>4427</td><td>6351</td><td>5237</td></tr><tr><th>21</th><td>2020.04.16</td><td>5245</td><td>4149</td><td>6615</td></tr><tr><th>22</th><td>2020.04.09</td><td>6606</td><td>1066</td><td>6867</td></tr><tr><th>23</th><td>2020.04.02</td><td>6648</td><td>334</td><td>3307</td></tr><tr><th>24</th><td>2020.03.26</td><td>3283</td><td>214</td><td>282</td></tr><tr><th>25</th><td>2020.03.19</td><td>281</td><td>214</td><td>211</td></tr><tr><th>26</th><td>2020.03.12</td><td>211</td><td>215</td><td>215</td></tr><tr><th>27</th><td>2020.03.05</td><td>216</td><td>216</td><td>219</td></tr><tr><th>28</th><td>2020.02.27</td><td>219</td><td>216</td><td>211</td></tr><tr><th>29</th><td>2020.02.20</td><td>210</td><td>216</td><td>206</td></tr><tr><th>30</th><td>2020.02.13</td><td>205</td><td>217</td><td>203</td></tr><tr><th>&vellip;</th><td>&vellip;</td><td>&vellip;</td><td>&vellip;</td><td>&vellip;</td></tr></tbody></table>



# Visualize the Data

## Print original data as is

- ActualValue before 2020.03.19 loose meaning 


```julia
using Plots
gr()
plot(df2[:,1], 
    [df2[:,2]  df2[:,3] df2[:,4]  ], 
    label    = ["actual" "forcast" "previous"],
    legend    =:topleft, # :right, :left, :top, :bottom, :inside, :best, :legend, :topright, :topleft, :bottomleft, :bottomright
    xlabel   = "time",
    ylabel   = "indicators",
    size     = (1400, 600), # width, height
    layout = (3, 1)
    )
```




![svg](output_8_0.svg)




```julia
histogram( 
    df2[:,2], # data
    label    = ["actual"],
    nbins = 100)      # number of bars
```




![svg](output_9_0.svg)



## Plot before 2020.03.19

- the **ForecastValue** is total garbage
- the **PreviousValue** looks like shift, but it is not meaningful
- we will use only **ActualValue** however I need to figure out how to normalize it
    - from the histogram it looks that a jump in numbers (being very dangerous), is an outlyer (a black swan event)


```julia
using Plots
gr()
plot(df2[1:end-24,1], 
    [df2[1:end-24,2] df2[1:end-24,3] df2[1:end-24,4] ], 
    label    = ["actual" "forcast" "previous"],
    legend    =:topleft, # :right, :left, :top, :bottom, :inside, :best, :legend, :topright, :topleft, :bottomleft, :bottomright
    xlabel   = "time",
    ylabel   = "indicators",
    size     = (1400, 600), # width, height
    layout = (1, 1)
    )
```




![svg](output_11_0.svg)



## Plot after 2020.03.19

- **ForecastValue** is total garbage
- **PreviousValue** looks like shift, but it is not meaningful


```julia
using Plots
println("job loses started on ", df2[end-24,1])
gr()
plot(df2[end-24:end,1], 
    [df2[end-24:end,2], df2[end-24:end,3] , df2[end-24:end,4] ], 
    label    = ["actual" "forcast" "previous"],
    legend    =:topleft, # :right, :left, :top, :bottom, :inside, :best, :legend, :topright, :topleft, :bottomleft, :bottomright
    xlabel   = "time",
    ylabel   = "indicators",
    size     = (1400, 600), # width, height
    layout = (1, 1)
    )
```

    job loses started on 2020.03.19





![svg](output_13_1.svg)




```julia
histogram( 
    df2[end-24:end,2], # data
    label    = ["actual"],
    nbins = 30)      # number of bars
```




![svg](output_14_0.svg)




```julia
histogram( 
    df2[1:end-24,2], # data
    label    = ["actual"],
    nbins = 30)      # number of bars

```




![svg](output_15_0.svg)




```julia
using DataFrames, CSV
#sort!(df1, [:Date]);
df2 = sort(df1, (order(:Date, rev=false)));
first(df2,3)
```




<table class="data-frame"><thead><tr><th></th><th>Date</th><th>ActualValue</th><th>ForecastValue</th><th>PreviousValue</th></tr><tr><th></th><th>String</th><th>Int64</th><th>Int64⍰</th><th>Int64</th></tr></thead><tbody><p>3 rows × 4 columns</p><tr><th>1</th><td>2007.02.22</td><td>338</td><td>missing</td><td>357</td></tr><tr><th>2</th><td>2007.03.08</td><td>328</td><td>missing</td><td>338</td></tr><tr><th>3</th><td>2007.03.15</td><td>320</td><td>missing</td><td>328</td></tr></tbody></table>




```julia
last(df2,5)
```




<table class="data-frame"><thead><tr><th></th><th>Date</th><th>ActualValue</th><th>ForecastValue</th><th>PreviousValue</th></tr><tr><th></th><th>String</th><th>Int64</th><th>Int64⍰</th><th>Int64</th></tr></thead><tbody><p>5 rows × 4 columns</p><tr><th>1</th><td>2020.08.06</td><td>1186</td><td>1435</td><td>1435</td></tr><tr><th>2</th><td>2020.08.13</td><td>963</td><td>1316</td><td>1191</td></tr><tr><th>3</th><td>2020.08.20</td><td>1106</td><td>1078</td><td>971</td></tr><tr><th>4</th><td>2020.08.27</td><td>1006</td><td>1039</td><td>1104</td></tr><tr><th>5</th><td>2020.09.03</td><td>881</td><td>1059</td><td>1011</td></tr></tbody></table>




```julia

```
