<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="Ð­" xrefpart="/%S.%C%R">
<libraries>
<library name="LM2596-Breakout">
<packages>
<package name="LM2596-BREAKOUT">
<pad name="1" x="-8.89" y="17.78" drill="1" diameter="2.54" shape="square"/>
<pad name="4" x="8.5725" y="17.78" drill="1" diameter="2.54" shape="square"/>
<pad name="2" x="-8.89" y="-19.3675" drill="1" diameter="2.54" shape="square"/>
<pad name="3" x="8.5725" y="-19.3675" drill="1" diameter="2.54" shape="square"/>
<wire x1="-10.795" y1="-21.2725" x2="-10.795" y2="19.685" width="0.127" layer="21"/>
<wire x1="-10.795" y1="19.685" x2="10.4775" y2="19.685" width="0.127" layer="21"/>
<wire x1="-10.795" y1="-21.2725" x2="10.4775" y2="-21.2725" width="0.127" layer="21"/>
<wire x1="10.4775" y1="-21.2725" x2="10.4775" y2="19.685" width="0.127" layer="21"/>
<text x="-10.795" y="20.0025" size="1.27" layer="21">LM2596-Breakout</text>
</package>
</packages>
<symbols>
<symbol name="LM2596-BREAKOUT">
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-7.62" x2="-15.24" y2="7.62" width="0.254" layer="94"/>
<pin name="VIN+" x="-20.32" y="5.08" length="middle"/>
<pin name="VIN-" x="-20.32" y="-5.08" length="middle"/>
<pin name="VOUT+" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="VOUT-" x="20.32" y="-5.08" length="middle" rot="R180"/>
<text x="-15.24" y="10.16" size="1.778" layer="95">LM2596-BreakOut</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM2596-BREAKOUT">
<description>Break out for LM2596 Switching power supply (regulated)</description>
<gates>
<gate name="G$1" symbol="LM2596-BREAKOUT" x="0" y="0"/>
</gates>
<devices>
<device name="LM2596-BREAKOUT" package="LM2596-BREAKOUT">
<connects>
<connect gate="G$1" pin="VIN+" pad="4"/>
<connect gate="G$1" pin="VIN-" pad="1"/>
<connect gate="G$1" pin="VOUT+" pad="3"/>
<connect gate="G$1" pin="VOUT-" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-ptr500">
<description>&lt;b&gt;PTR Connectors&lt;/b&gt;&lt;p&gt;
Aug. 2004 / PTR Meßtechnik:&lt;br&gt;
Die Bezeichnung der Serie AK505 wurde geändert.&lt;br&gt;
Es handelt sich hierbei um AK500 in horizontaler Ausführung.&lt;p&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Alte Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;Neue Bezeichnung&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AK505/2DS,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AK500/2DS-5.0-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;AKZ505/2,grau&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=LEFT&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#0000FF"&gt;AKZ500/2-5.08-H-GRAU&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
  &lt;/TABLE&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="AK500/2">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<wire x1="-5.08" y1="-3.556" x2="-5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.937" x2="-5.08" y2="3.937" width="0.1524" layer="21"/>
<wire x1="5.08" y1="3.937" x2="5.08" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.556" x2="5.08" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="-5.588" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="-5.08" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="3.175" x2="-5.588" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="2.032" x2="-5.08" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="-5.08" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.159" x2="5.08" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.159" x2="5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="5.08" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.159" x2="-5.08" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.159" x2="5.08" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="1.4986" y1="-1.397" x2="3.9116" y2="1.016" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-1.016" x2="3.5306" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-3.9116" y1="-1.016" x2="-1.4986" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-3.5306" y1="-1.397" x2="-1.1176" y2="1.016" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="-1.016" x2="3.5306" y2="1.016" width="0.6096" layer="51"/>
<wire x1="-3.5306" y1="-1.016" x2="-1.4986" y2="1.016" width="0.6096" layer="51"/>
<wire x1="1.1176" y1="-1.016" x2="1.4986" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="3.5306" y1="1.397" x2="3.9116" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-3.9116" y1="-1.016" x2="-3.5306" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="1.397" x2="-1.1176" y2="1.016" width="0.1524" layer="51"/>
<circle x="2.5146" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="-2.5146" y="3.048" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5146" y="0" radius="1.778" width="0.1524" layer="51"/>
<circle x="-2.5146" y="0" radius="1.778" width="0.1524" layer="51"/>
<pad name="1" x="-2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<pad name="2" x="2.5146" y="0" drill="1.3208" shape="long" rot="R90"/>
<text x="-5.08" y="4.445" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.715" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.445" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="0.635" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<rectangle x1="-0.381" y1="-1.905" x2="0.381" y2="1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="KL">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KLV">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-3.81" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AK500/2" prefix="X" uservalue="yes">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KLV" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="AK500/2">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-cypressindustries">
<description>&lt;b&gt;Connectors from Cypress Industries&lt;/b&gt;&lt;p&gt;
www.cypressindustries.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="85-32003-00X-1">
<description>&lt;b&gt;USB A TYPE TRIPLE R/A DIP&lt;/b&gt;&lt;p&gt;
Source: http://www.cypressindustries.com/pdf/85-32003-00x-1.pdf</description>
<wire x1="-10.225" y1="-7.2" x2="-9.775" y2="-7.2" width="0.1016" layer="21"/>
<wire x1="-9.775" y1="-7.2" x2="-9.775" y2="-6.6" width="0.1016" layer="21"/>
<wire x1="-9.775" y1="-6.6" x2="-1.825" y2="-6.6" width="0.1016" layer="21"/>
<wire x1="-1.825" y1="-6.6" x2="1.85" y2="-6.6" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-6.6" x2="3.75" y2="-6.6" width="0.1016" layer="21"/>
<wire x1="3.75" y1="-6.6" x2="7.5" y2="-6.6" width="0.1016" layer="51"/>
<wire x1="7.5" y1="-6.6" x2="9.075" y2="-6.6" width="0.1016" layer="21"/>
<wire x1="9.075" y1="6.6" x2="7.5" y2="6.6" width="0.1016" layer="21"/>
<wire x1="7.5" y1="6.6" x2="3.85" y2="6.6" width="0.1016" layer="51"/>
<wire x1="3.85" y1="6.6" x2="1.975" y2="6.6" width="0.1016" layer="21"/>
<wire x1="1.975" y1="6.6" x2="-1.925" y2="6.6" width="0.1016" layer="51"/>
<wire x1="-1.925" y1="6.6" x2="-9.775" y2="6.6" width="0.1016" layer="21"/>
<wire x1="-9.775" y1="6.6" x2="-9.775" y2="7.2" width="0.1016" layer="21"/>
<wire x1="-9.775" y1="7.2" x2="-10.225" y2="7.2" width="0.1016" layer="21"/>
<wire x1="-10.225" y1="7.2" x2="-10.225" y2="5" width="0.1016" layer="21"/>
<wire x1="-10.225" y1="5" x2="-10.225" y2="4.625" width="0.1016" layer="21"/>
<wire x1="-10.225" y1="4.625" x2="-10.225" y2="-4.975" width="0.1016" layer="21"/>
<wire x1="-10.225" y1="-4.975" x2="-10.225" y2="-7.2" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="2.9591" x2="-8.5685" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-8.5685" y1="2.7514" x2="-8.828" y2="2.5438" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-8.828" y1="2.5438" x2="-8.828" y2="1.9727" width="0.1016" layer="21" curve="34.099487"/>
<wire x1="-8.828" y1="1.9727" x2="-8.5685" y2="1.7651" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-8.5685" y1="1.7651" x2="-5.8171" y2="1.5055" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="1.5055" x2="-5.8171" y2="1.7132" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="1.7132" x2="-8.2051" y2="1.9727" width="0.1016" layer="21"/>
<wire x1="-8.2051" y1="1.9727" x2="-8.2051" y2="2.4919" width="0.1016" layer="21"/>
<wire x1="-8.2051" y1="2.4919" x2="-5.8171" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="2.7514" x2="-5.8171" y2="2.9591" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="-2.9589" x2="-8.5685" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-8.5685" y1="-2.7512" x2="-8.828" y2="-2.5436" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-8.828" y1="-2.5436" x2="-8.828" y2="-1.9725" width="0.1016" layer="21" curve="-34.099487"/>
<wire x1="-8.828" y1="-1.9725" x2="-8.5685" y2="-1.7649" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-8.5685" y1="-1.7649" x2="-5.8171" y2="-1.5053" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="-1.5053" x2="-5.8171" y2="-1.713" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="-1.713" x2="-8.2051" y2="-1.9725" width="0.1016" layer="21"/>
<wire x1="-8.2051" y1="-1.9725" x2="-8.2051" y2="-2.4917" width="0.1016" layer="21"/>
<wire x1="-8.2051" y1="-2.4917" x2="-5.8171" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-5.8171" y1="-2.7512" x2="-5.8171" y2="-2.9589" width="0.1016" layer="21"/>
<wire x1="9.075" y1="6.6" x2="9.075" y2="-6.6" width="0.1016" layer="21"/>
<wire x1="-10.225" y1="4.625" x2="-11.075" y2="2.25" width="0.1016" layer="21"/>
<wire x1="-11.075" y1="2.25" x2="-11.075" y2="1.75" width="0.1016" layer="21"/>
<wire x1="-11.075" y1="1.75" x2="-11.2" y2="1.75" width="0.1016" layer="21" curve="-180"/>
<wire x1="-11.2" y1="1.75" x2="-11.2" y2="2.325" width="0.1016" layer="21"/>
<wire x1="-11.2" y1="2.325" x2="-10.225" y2="5" width="0.1016" layer="21"/>
<wire x1="-10.225" y1="-4.625" x2="-11.075" y2="-2.25" width="0.1016" layer="21"/>
<wire x1="-11.075" y1="-2.25" x2="-11.075" y2="-1.75" width="0.1016" layer="21"/>
<wire x1="-11.075" y1="-1.75" x2="-11.2" y2="-1.75" width="0.1016" layer="21" curve="180"/>
<wire x1="-11.2" y1="-1.75" x2="-11.2" y2="-2.325" width="0.1016" layer="21"/>
<wire x1="-11.2" y1="-2.325" x2="-10.225" y2="-4.975" width="0.1016" layer="21"/>
<pad name="M1" x="0" y="6.57" drill="2.3" diameter="3" rot="R270"/>
<pad name="M2" x="0" y="-6.57" drill="2.3" diameter="3" rot="R270"/>
<pad name="M3" x="5.68" y="6.57" drill="2.3" diameter="3" rot="R270"/>
<pad name="M4" x="5.68" y="-6.57" drill="2.3" diameter="3" rot="R270"/>
<pad name="1-4" x="2.71" y="-3.5" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="2-4" x="5.33" y="-3.5" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="3-4" x="7.95" y="-3.5" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="1-2" x="2.71" y="1" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="2-2" x="5.33" y="1" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="3-2" x="7.95" y="1" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="3-3" x="7.95" y="-1" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="2-3" x="5.33" y="-1" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="1-3" x="2.71" y="-1" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="3-1" x="7.95" y="3.5" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="2-1" x="5.33" y="3.5" drill="0.92" diameter="1.27" rot="R270"/>
<pad name="1-1" x="2.71" y="3.5" drill="0.92" diameter="1.27" rot="R270"/>
<text x="-8" y="7" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="-5.5" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="USB4">
<wire x1="-2.54" y1="-5.08" x2="3.81" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="3.81" y2="7.62" width="0.254" layer="94"/>
<wire x1="-1.27" y1="6.35" x2="-1.27" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-3.81" x2="0.762" y2="-3.81" width="0.254" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="6.35" x2="0.762" y2="6.35" width="0.254" layer="94"/>
<text x="-2.54" y="8.89" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<text x="0.254" y="0" size="1.016" layer="94" rot="R90">USB</text>
<rectangle x1="0.762" y1="4.572" x2="1.27" y2="5.588" layer="94"/>
<rectangle x1="0.762" y1="2.032" x2="1.27" y2="3.048" layer="94"/>
<rectangle x1="0.762" y1="-0.508" x2="1.27" y2="0.508" layer="94"/>
<rectangle x1="0.762" y1="-3.048" x2="1.27" y2="-2.032" layer="94"/>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<polygon width="0.254" layer="94">
<vertex x="0.762" y="6.35"/>
<vertex x="2.54" y="6.35"/>
<vertex x="2.54" y="-3.81"/>
<vertex x="0.762" y="-3.81"/>
<vertex x="1.27" y="-3.302"/>
<vertex x="1.27" y="5.842"/>
</polygon>
</symbol>
<symbol name="SHIELD4">
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="7.62" y="-2.54" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="S1" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S3" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S4" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB_3PSHIELD-" prefix="X">
<description>&lt;b&gt;Triple USB Connector&lt;/b&gt;&lt;p&gt;
Source: www.cypressindustries.com</description>
<gates>
<gate name="A" symbol="USB4" x="-2.54" y="20.32" addlevel="always"/>
<gate name="B" symbol="USB4" x="-2.54" y="0" addlevel="always"/>
<gate name="C" symbol="USB4" x="-2.54" y="-20.32" addlevel="always"/>
<gate name="S" symbol="SHIELD4" x="-2.54" y="-30.48" addlevel="request"/>
</gates>
<devices>
<device name="85-32003-00X-1" package="85-32003-00X-1">
<connects>
<connect gate="A" pin="1" pad="1-1"/>
<connect gate="A" pin="2" pad="1-2"/>
<connect gate="A" pin="3" pad="1-3"/>
<connect gate="A" pin="4" pad="1-4"/>
<connect gate="B" pin="1" pad="2-1"/>
<connect gate="B" pin="2" pad="2-2"/>
<connect gate="B" pin="3" pad="2-3"/>
<connect gate="B" pin="4" pad="2-4"/>
<connect gate="C" pin="1" pad="3-1"/>
<connect gate="C" pin="2" pad="3-2"/>
<connect gate="C" pin="3" pad="3-3"/>
<connect gate="C" pin="4" pad="3-4"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
<connect gate="S" pin="S3" pad="M3"/>
<connect gate="S" pin="S4" pad="M4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94" font="vector">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="LM2596-Breakout" deviceset="LM2596-BREAKOUT" device="LM2596-BREAKOUT"/>
<part name="PWR_IN" library="con-ptr500" deviceset="AK500/2" device="" value="1"/>
<part name="+12V" library="con-ptr500" deviceset="AK500/2" device="" value="2"/>
<part name="+5V" library="con-ptr500" deviceset="AK500/2" device="" value="3"/>
<part name="FRAME1" library="frames" deviceset="A4L-LOC" device="" value="1"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="X4" library="con-cypressindustries" deviceset="USB_3PSHIELD-" device="85-32003-00X-1"/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="217.17" y="20.32" size="2.54" layer="94" font="vector">Azisi</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="83.82" y="110.49"/>
<instance part="PWR_IN" gate="-1" x="22.86" y="142.24"/>
<instance part="PWR_IN" gate="-2" x="22.86" y="137.16"/>
<instance part="+12V" gate="-1" x="149.86" y="139.7" rot="R180"/>
<instance part="+12V" gate="-2" x="149.86" y="144.78" rot="R180"/>
<instance part="+5V" gate="-1" x="149.86" y="123.19" rot="R180"/>
<instance part="+5V" gate="-2" x="149.86" y="128.27" rot="R180"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="GND1" gate="1" x="45.72" y="129.54"/>
<instance part="GND2" gate="1" x="55.88" y="101.6"/>
<instance part="GND3" gate="1" x="111.76" y="101.6"/>
<instance part="GND4" gate="1" x="135.89" y="119.38"/>
<instance part="GND5" gate="1" x="135.89" y="135.89"/>
<instance part="X4" gate="A" x="148.59" y="104.14"/>
<instance part="X4" gate="B" x="148.59" y="83.82"/>
<instance part="X4" gate="C" x="148.59" y="63.5"/>
<instance part="GND6" gate="1" x="135.89" y="97.79"/>
<instance part="GND7" gate="1" x="135.89" y="77.47"/>
<instance part="GND8" gate="1" x="135.89" y="57.15"/>
</instances>
<busses>
</busses>
<nets>
<net name="+12V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VIN+"/>
<wire x1="63.5" y1="115.57" x2="59.69" y2="115.57" width="0.1524" layer="91"/>
<label x="57.15" y="115.57" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="+12V" gate="-2" pin="KL"/>
<wire x1="144.78" y1="144.78" x2="140.97" y2="144.78" width="0.1524" layer="91"/>
<label x="139.7" y="144.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PWR_IN" gate="-1" pin="KL"/>
<wire x1="27.94" y1="142.24" x2="31.75" y2="142.24" width="0.1524" layer="91"/>
<wire x1="31.75" y1="142.24" x2="31.75" y2="144.78" width="0.1524" layer="91"/>
<wire x1="31.75" y1="144.78" x2="45.72" y2="144.78" width="0.1524" layer="91"/>
<label x="43.18" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VOUT+"/>
<wire x1="104.14" y1="115.57" x2="107.95" y2="115.57" width="0.1524" layer="91"/>
<label x="105.41" y="115.57" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="+5V" gate="-2" pin="KL"/>
<wire x1="144.78" y1="128.27" x2="140.97" y2="128.27" width="0.1524" layer="91"/>
<label x="139.7" y="128.27" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X4" gate="A" pin="1"/>
<wire x1="143.51" y1="109.22" x2="139.7" y2="109.22" width="0.1524" layer="91"/>
<label x="137.16" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X4" gate="B" pin="1"/>
<wire x1="143.51" y1="88.9" x2="139.7" y2="88.9" width="0.1524" layer="91"/>
<label x="137.16" y="88.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X4" gate="C" pin="1"/>
<wire x1="143.51" y1="68.58" x2="139.7" y2="68.58" width="0.1524" layer="91"/>
<label x="137.16" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="PWR_IN" gate="-2" pin="KL"/>
<wire x1="27.94" y1="137.16" x2="31.75" y2="137.16" width="0.1524" layer="91"/>
<wire x1="31.75" y1="137.16" x2="31.75" y2="134.62" width="0.1524" layer="91"/>
<wire x1="31.75" y1="134.62" x2="45.72" y2="134.62" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="45.72" y1="134.62" x2="45.72" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VIN-"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="63.5" y1="105.41" x2="55.88" y2="105.41" width="0.1524" layer="91"/>
<wire x1="55.88" y1="105.41" x2="55.88" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VOUT-"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="104.14" y1="105.41" x2="111.76" y2="105.41" width="0.1524" layer="91"/>
<wire x1="111.76" y1="105.41" x2="111.76" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+12V" gate="-1" pin="KL"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="144.78" y1="139.7" x2="135.89" y2="139.7" width="0.1524" layer="91"/>
<wire x1="135.89" y1="139.7" x2="135.89" y2="138.43" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+5V" gate="-1" pin="KL"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="144.78" y1="123.19" x2="135.89" y2="123.19" width="0.1524" layer="91"/>
<wire x1="135.89" y1="123.19" x2="135.89" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="135.89" y1="80.01" x2="135.89" y2="81.28" width="0.1524" layer="91"/>
<pinref part="X4" gate="B" pin="4"/>
<wire x1="135.89" y1="81.28" x2="143.51" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="135.89" y1="59.69" x2="135.89" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X4" gate="C" pin="4"/>
<wire x1="135.89" y1="60.96" x2="143.51" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X4" gate="A" pin="4"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="143.51" y1="101.6" x2="135.89" y2="101.6" width="0.1524" layer="91"/>
<wire x1="135.89" y1="101.6" x2="135.89" y2="100.33" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
