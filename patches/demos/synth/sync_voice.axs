<patch-1.0 appVersion="1.2.0">
  <obj type="midi/in/keyb zone lru" uuid="36a44968a4f8b980273e94dca846b7544a3c45d2" name="keybzone_lru_1" x="28" y="0">
    <params/>
    <attribs>
      <spinner attributeName="startNote" value="0"/>
      <spinner attributeName="endNote" value="126"/>
    </attribs>
  </obj>
  <obj type="lfo/square" uuid="de6909eb64db13af5b43f979a4c130024b3a4793" name="square_1" x="280" y="0">
    <params>
      <frac32.s.map name="pitch" onParent="true" value="1.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="rand/uniform f trig" uuid="223873125a332e3b8a82795a3eef167993adb086" name="randtrig_1" x="378" y="0">
    <params/>
    <attribs/>
  </obj>
  <obj type="dist/slew" uuid="707ebc5c162f073ad14978244bc6dda1984b8955" name="slew_1" x="490" y="0">
    <params>
      <frac32.u.map name="slew" value="0.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="osc_1" x="168" y="60">
    <params>
      <frac32.s.map name="pitch" onParent="true" value="3.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="env/ahd" uuid="2139369d6de2ba5ddf76e602d1d25df653ca9eed" name="envahd_1" x="350" y="140">
    <params>
      <frac32.s.map name="a" value="0.0"/>
      <frac32.s.map name="d" value="54.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="envd_1" x="140" y="180">
    <params>
      <frac32.s.map name="d" onParent="true" value="2.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="mix2_1" x="238" y="180">
    <params>
      <frac32.u.map name="gain1" value="33.5"/>
      <frac32.u.map name="gain2" value="20.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_1" x="532" y="200">
    <params>
      <frac32.u.map name="amp" value="16.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="osc~_1" x="14" y="340">
    <params>
      <frac32.s.map name="pitch" value="0.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="osc/saw sync" uuid="c55144faace5cfeddae3b63b3fa345483866d90" name="sawsync~_1" x="112" y="340">
    <params>
      <frac32.s.map name="pitch" value="11.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca~_1" x="252" y="340">
    <params/>
    <attribs/>
  </obj>
  <obj type="filter/hp1" uuid="abea7276611b289bed35b80345a6bc4efd4d9a4e" name="hipass~_1" x="378" y="340">
    <params>
      <frac32.s.map name="freq" value="0.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="audio/out stereo" uuid="a1ca7a567f535acc21055669829101d3ee7f0189" name="dac~_1" x="658" y="340">
    <params/>
    <attribs/>
  </obj>
  <obj type="disp/scope 128 b" uuid="2b69f51a714fc276503ef10c349d6d253d1ae5e2" name="scope_128s_v2_1" x="252" y="440">
    <params/>
    <attribs/>
  </obj>
  <nets>
    <net>
      <source obj="hipass~_1" outlet="out"/>
      <dest obj="dac~_1" inlet="left"/>
      <dest obj="dac~_1" inlet="right"/>
    </net>
    <net>
      <source obj="osc~_1" outlet="wave"/>
      <dest obj="sawsync~_1" inlet="sync"/>
    </net>
    <net>
      <source obj="keybzone_lru_1" outlet="note"/>
      <dest obj="osc~_1" inlet="pitch"/>
      <dest obj="osc_1" inlet="pitch"/>
      <dest obj="mix2_1" inlet="bus_in"/>
    </net>
    <net>
      <source obj="keybzone_lru_1" outlet="gate"/>
      <dest obj="envahd_1" inlet="gate"/>
      <dest obj="envd_1" inlet="trig"/>
    </net>
    <net>
      <source obj="envd_1" outlet="env"/>
      <dest obj="mix2_1" inlet="in1"/>
    </net>
    <net>
      <source obj="mix2_1" outlet="out"/>
      <dest obj="sawsync~_1" inlet="pitch"/>
    </net>
    <net>
      <source obj="envahd_1" outlet="env"/>
      <dest obj="*c_1" inlet="in"/>
    </net>
    <net>
      <source obj="*c_1" outlet="out"/>
      <dest obj="vca~_1" inlet="v"/>
    </net>
    <net>
      <source obj="sawsync~_1" outlet="wave"/>
      <dest obj="vca~_1" inlet="a"/>
      <dest obj="scope_128s_v2_1" inlet="in"/>
    </net>
    <net>
      <source obj="vca~_1" outlet="o"/>
      <dest obj="hipass~_1" inlet="in"/>
    </net>
    <net>
      <source obj="square_1" outlet="wave"/>
      <dest obj="randtrig_1" inlet="trig"/>
    </net>
    <net>
      <source obj="randtrig_1" outlet="rand"/>
      <dest obj="slew_1" inlet="in"/>
    </net>
    <net>
      <source obj="slew_1" outlet="out"/>
      <dest obj="mix2_1" inlet="in2"/>
    </net>
  </nets>
  <settings>
    <subpatchmode>polyphonic</subpatchmode>
    <NPresets>8</NPresets>
    <NPresetEntries>32</NPresetEntries>
    <NModulationSources>8</NModulationSources>
    <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
  </settings>
  <notes><![CDATA[]]></notes>
  <windowPos>
    <x>0</x>
    <y>2</y>
    <width>968</width>
    <height>750</height>
  </windowPos>
</patch-1.0>