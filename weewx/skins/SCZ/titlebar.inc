## titlebar for weewx skins
## Copyright Tom Keffer, Matthew Wall
## See LICENSE.txt for your rights
#errorCatcher Echo
#encoding UTF-8

<div id="title_bar">
  <div id="title">
    <h1 class="page_title">$station.location</h1>
    <p class="lastupdate">$current.dateTime</p>
    <a href="mobile/">mobile</a>
    <a href="smartphone/">smartphone</a>
    <a href="https://forecast.weather.gov/MapClick.php?lat=36.974240000000066&lon=-122.03097999999994">forecast</a>
  </div>
  <div id="rss_link"><a href="rss.xml">RSS</a></div>
  <div id="reports">
    Monthly Reports:
    <select name="reports" onchange="openTabularFile(value)">
      #for $monthYear in $SummaryByMonth
      <option value="$monthYear">$monthYear</option>
      #end for
      <option selected>- Select Month -</option>
    </select>
    <br/>
    Yearly Reports:
    <select name="reports" onchange="openTabularFile(value)">
      #for $yr in $SummaryByYear
      <option value="$yr">$yr</option>
      #end for
      <option selected>- Select Year -</option>
    </select>
    <br/>
  </div>
</div>
