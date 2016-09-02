<TeXmacs|1.99.5>

<style|browser>

<\body>
  <tabular|<tformat|<twith|table-hmode|min>|<twith|table-width|1par>|<cwith|1|-1|1|-1|cell-hyphen|t>|<table|<row|<\cell>
    <tabular|<tformat|<twith|table-hmode|min>|<twith|table-width|1par>|<cwith|1|-1|1|-1|cell-hyphen|t>|<table|<row|<\cell>
      <with|font-size|1.7|<with|font-series|bold|Image Processing>>
    </cell>>>>>

    <tabular|<tformat|<twith|table-hmode|min>|<twith|table-width|1par>|<cwith|1|-1|1|-1|cell-hyphen|t>|<table|<row|<\cell>
      Project I
    </cell>>>>>report
  </cell>>>>>

  <subsection|Histogram>

  filename: project01_historgram.histogramOwn.m Input:

  In file project01_histogram.m, I load a color image and use
  <with|color|blue|rgb2gray> funciton to get grey image. Next, I utilize
  <with|color|blue|histogramOwm> to observer the histograms of several
  images.

  Here is the procedure inside histogramOwn:

  <\enumerate-numeric>
    <item>Check the size of input image.

    <item>Use for loop to make statistic of the number of intensity.

    <item>According to input bins
  </enumerate-numeric>

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|project01report.html>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Histogram
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>
    </associate>
  </collection>
</auxiliary>