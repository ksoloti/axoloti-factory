<patch-1.0 appVersion="1.1.0">
   <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keybnote1" x="14" y="14">
      <params/>
      <attribs>
         <spinner attributeName="note" value="60"/>
      </attribs>
   </obj>
   <obj type="env/d" uuid="190ae648e41832b41adbedb465317c18a010aefe" name="d_1" x="210" y="14">
      <params>
         <frac32.s.map name="d" onParent="true" value="-20.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="noise.uniform_2" x="322" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/abs" uuid="f4078fd9b2dff40d4f1551b79900c9ab360c99" name="abs_1" x="420" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/lp1" uuid="1b1fd7085e44d2b7b80b59b8d68796b909c1b2cc" name="filter.lowpass~_1" x="504" y="14">
      <params>
         <frac32.s.map name="freq" onParent="true" value="-29.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="env/d lin m" uuid="e9d9a5152981b17626748fd93e7e6a39c0afe3aa" name="d_2" x="210" y="98">
      <params>
         <frac32.s.map name="d" onParent="true" value="-13.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="arithmetic.*c_2" x="308" y="98">
      <params>
         <frac32.u.map name="amp" onParent="true" value="24.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="osc.sine_1" x="406" y="98">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="-30.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="dc7fbdd46e5e6d4b8de62ee63fd6321639b2f167" name="*_1" x="504" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" uuid="c16a625a661f40e4b359db604dcd00b3befcdbe3" name="*_2" x="504" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="bd" x="588" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/c 64" uuid="9116584b9960241e86c12effea4ce12d13871e77" name="c_1" x="126" y="280">
      <params/>
      <attribs/>
   </obj>
   <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="noise.uniform_1" x="308" y="294">
      <params/>
      <attribs/>
   </obj>
   <obj type="midi/in/keyb note" uuid="ac0cd98e6c0373b7be73d25900342a62ebcf5f" name="keybnote1_" x="14" y="322">
      <params/>
      <attribs>
         <spinner attributeName="note" value="62"/>
      </attribs>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_1" x="126" y="322">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 2" uuid="f14884de1baf3e615e12ee162a96a013eca76789" name="div_1" x="210" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/d m" uuid="85e82f54dfc28839d300cda777af8907ae2a28d0" name="env.decay.m_1" x="294" y="336">
      <params>
         <frac32.s.map name="d" onParent="true" value="11.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="gain.vca~_1" x="406" y="336">
      <params/>
      <attribs/>
   </obj>
   <obj type="filter/bp svf" uuid="451629d3f559049e7f516d5014f3d5fa818827c7" name="filter.bpfsvf~_1" x="490" y="336">
      <params>
         <frac32.s.map name="pitch" value="55.0"/>
         <frac32.u.map name="reso" value="23.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="snr" x="602" y="336">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="noise.uniform_2" outlet="wave"/>
         <dest obj="abs_1" inlet="in"/>
      </net>
      <net>
         <source obj="d_2" outlet="env"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="osc.sine_1" outlet="wave"/>
         <dest obj="*_1" inlet="b"/>
      </net>
      <net>
         <source obj="*_1" outlet="result"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="arithmetic.*c_2" outlet="out"/>
         <dest obj="osc.sine_1" inlet="pitch"/>
      </net>
      <net>
         <source obj="abs_1" outlet="out"/>
         <dest obj="filter.lowpass~_1" inlet="in"/>
      </net>
      <net>
         <source obj="filter.lowpass~_1" outlet="out"/>
         <dest obj="*_1" inlet="a"/>
      </net>
      <net>
         <source obj="keybnote1" outlet="gate"/>
         <dest obj="d_1" inlet="trig"/>
         <dest obj="d_2" inlet="trig"/>
      </net>
      <net>
         <source obj="d_1" outlet="env"/>
         <dest obj="arithmetic.*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="keybnote1" outlet="velocity"/>
         <dest obj="d_2" inlet="d"/>
      </net>
      <net>
         <source obj="env.decay.m_1" outlet="env"/>
         <dest obj="gain.vca~_1" inlet="v"/>
      </net>
      <net>
         <source obj="noise.uniform_1" outlet="wave"/>
         <dest obj="gain.vca~_1" inlet="a"/>
      </net>
      <net>
         <source obj="gain.vca~_1" outlet="o"/>
         <dest obj="filter.bpfsvf~_1" inlet="in"/>
      </net>
      <net>
         <source obj="keybnote1_" outlet="gate"/>
         <dest obj="env.decay.m_1" inlet="trig"/>
      </net>
      <net>
         <source obj="keybnote1_" outlet="velocity"/>
         <dest obj="-_1" inlet="in2"/>
      </net>
      <net>
         <source obj="c_1" outlet="o"/>
         <dest obj="-_1" inlet="in1"/>
      </net>
      <net>
         <source obj="-_1" outlet="out"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="env.decay.m_1" inlet="d"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="bd" inlet="outlet"/>
      </net>
      <net>
         <source obj="filter.bpfsvf~_1" outlet="out"/>
         <dest obj="snr" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
      <MidiChannel>1</MidiChannel>
      <HasMidiChannelSelector>true</HasMidiChannelSelector>
      <NPresets>8</NPresets>
      <NPresetEntries>32</NPresetEntries>
      <NModulationSources>8</NModulationSources>
      <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-7</x>
      <y>-7</y>
      <width>1550</width>
      <height>848</height>
   </windowPos>
</patch-1.0>