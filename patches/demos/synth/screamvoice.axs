<patch-1.0 appVersion="1.2.0">
  <obj type="midi/in/keyb" uuid="53b04874696932f38aceaa168bd5d9efb743716d" name="keyb1" x="0" y="0">
    <params/>
    <attribs/>
  </obj>
  <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="c1" x="588" y="14">
    <params>
      <frac32.u.map name="value" MidiCC="1" value="0.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth1" x="658" y="14">
    <params>
      <frac32.u.map name="time" value="41.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv1" x="224" y="28">
    <params/>
    <attribs/>
  </obj>
  <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c3" x="336" y="28">
    <params>
      <frac32.u.map name="amp" value="35.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="env/ahd lin m" uuid="f9b46834ce96425064b4ed7f53ad8b91ea1ac0ef" name="envahd1" x="448" y="28">
    <params>
      <frac32.s.map name="a" value="0.0"/>
      <frac32.s.map name="d" value="0.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c3_" x="224" y="70">
    <params>
      <frac32.u.map name="amp" value="16.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv1_" x="336" y="112">
    <params/>
    <attribs/>
  </obj>
  <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="osc1" x="616" y="112">
    <params>
      <frac32.s.map name="pitch" value="-61.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="mix/mix 2" uuid="682ea5496ded046d981e26b720a6e7f8eca97541" name="*c2" x="714" y="112">
    <params>
      <frac32.u.map name="gain1" value="4.5"/>
      <frac32.u.map name="gain2" value="8.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="lfo/sine" uuid="75f7330c26a13953215dccc3b7b9008545c9daa9" name="osc2" x="70" y="168">
    <params>
      <frac32.s.map name="pitch" value="0.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/div 32" uuid="40e43d0d284fded6b6cfadd45a5cb69c8d713691" name="div321" x="168" y="168">
    <params/>
    <attribs/>
  </obj>
  <obj type="mix/mix 1" uuid="26fb1fe4ed25d8bc2ac4a3f91ab6b80ed6d9d4fa" name="mix11" x="70" y="252">
    <params>
      <frac32.u.map name="gain1" value="1.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="osc/saw" uuid="739ecc36017ef3249479b8f01716b8bbfba9abc1" name="saw_1" x="154" y="252">
    <params>
      <frac32.s.map name="pitch" value="0.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="mix/mix 2" uuid="30c04239c88e09d3fa5c333b784ecf54f1b0e268" name="mix 2_1" x="350" y="280">
    <params>
      <frac32.u.map name="gain1" value="40.0"/>
      <frac32.u.map name="gain2" value="1.5541162490844727"/>
    </params>
    <attribs/>
  </obj>
  <obj type="filter/lp m" uuid="1aa1bc51da479ed92429af700591f9d7b9f45f22" name="lpf_1" x="448" y="280">
    <params>
      <frac32.s.map name="pitch" value="-20.0"/>
      <frac32.u.map name="reso" MidiCC="11" value="59.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="dist/inf" uuid="d12af924890d417179e6fdbcf71cb1ec3ba31f67" name="infclip_1_" x="560" y="280">
    <params/>
    <attribs/>
  </obj>
  <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="616" y="280">
    <params/>
    <attribs/>
  </obj>
  <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_1" x="672" y="280">
    <params>
      <frac32.u.map name="amp" value="53.0"/>
    </params>
    <attribs/>
  </obj>
  <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="v" x="784" y="280">
    <params/>
    <attribs/>
  </obj>
  <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="clean" x="784" y="322">
    <params/>
    <attribs/>
  </obj>
  <obj type="noise/uniform" uuid="a3926ef22ae9ac217cd09933d90101848796eb78" name="rand_1" x="84" y="350">
    <params/>
    <attribs/>
  </obj>
  <obj type="filter/lp1" uuid="1b1fd7085e44d2b7b80b59b8d68796b909c1b2cc" name="lowpass_1" x="168" y="350">
    <params>
      <frac32.s.map name="freq" value="60.5"/>
    </params>
    <attribs/>
  </obj>
  <obj type="math/div 32" uuid="c5455911d6a520e99e9737457c48bdcc84ef7aef" name="div_1" x="266" y="350">
    <params/>
    <attribs/>
  </obj>
  <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="a" x="784" y="364">
    <params/>
    <attribs/>
  </obj>
  <nets>
    <net>
      <source obj="lpf_1" outlet="out"/>
      <dest obj="infclip_1_" inlet="in"/>
      <dest obj="clean" inlet="outlet"/>
    </net>
    <net>
      <source obj="saw_1" outlet="wave"/>
      <dest obj="mix 2_1" inlet="in1"/>
    </net>
    <net>
      <source obj="envahd1" outlet="env"/>
      <dest obj="vca_1" inlet="v"/>
      <dest obj="*c2" inlet="in2"/>
      <dest obj="a" inlet="outlet"/>
    </net>
    <net>
      <source obj="infclip_1_" outlet="out"/>
      <dest obj="vca_1" inlet="a"/>
    </net>
    <net>
      <source obj="vca_1" outlet="o"/>
      <dest obj="*c_1" inlet="in"/>
    </net>
    <net>
      <source obj="mix 2_1" outlet="out"/>
      <dest obj="lpf_1" inlet="in"/>
    </net>
    <net>
      <source obj="*c2" outlet="out"/>
      <dest obj="lpf_1" inlet="pitch"/>
    </net>
    <net>
      <source obj="osc1" outlet="wave"/>
      <dest obj="*c2" inlet="in1"/>
    </net>
    <net>
      <source obj="mix11" outlet="out"/>
      <dest obj="saw_1" inlet="pitch"/>
    </net>
    <net>
      <source obj="keyb1" outlet="note"/>
      <dest obj="mix11" inlet="bus_in"/>
    </net>
    <net>
      <source obj="osc2" outlet="wave"/>
      <dest obj="div321" inlet="in"/>
    </net>
    <net>
      <source obj="div321" outlet="out"/>
      <dest obj="mix11" inlet="in1"/>
    </net>
    <net>
      <source obj="c1" outlet="out"/>
      <dest obj="smooth1" inlet="in"/>
    </net>
    <net>
      <source obj="smooth1" outlet="out"/>
      <dest obj="*c2" inlet="bus_in"/>
    </net>
    <net>
      <source obj="rand_1" outlet="wave"/>
      <dest obj="lowpass_1" inlet="in"/>
    </net>
    <net>
      <source obj="lowpass_1" outlet="out"/>
      <dest obj="div_1" inlet="in"/>
    </net>
    <net>
      <source obj="div_1" outlet="out"/>
      <dest obj="mix 2_1" inlet="in2"/>
    </net>
    <net>
      <source obj="keyb1" outlet="gate"/>
      <dest obj="envahd1" inlet="trig"/>
    </net>
    <net>
      <source obj="keyb1" outlet="velocity"/>
      <dest obj="inv1" inlet="in"/>
    </net>
    <net>
      <source obj="inv1" outlet="out"/>
      <dest obj="*c3" inlet="in"/>
    </net>
    <net>
      <source obj="keyb1" outlet="releaseVelocity"/>
      <dest obj="*c3_" inlet="in"/>
    </net>
    <net>
      <source obj="*c3_" outlet="out"/>
      <dest obj="inv1_" inlet="in"/>
    </net>
    <net>
      <source obj="*c_1" outlet="out"/>
      <dest obj="v" inlet="outlet"/>
    </net>
    <net>
      <source obj="*c3" outlet="out"/>
      <dest obj="envahd1" inlet="a"/>
    </net>
    <net>
      <source obj="inv1_" outlet="out"/>
      <dest obj="envahd1" inlet="d"/>
    </net>
  </nets>
  <settings>
    <subpatchmode>polyphonic</subpatchmode>
    <MidiChannel>1</MidiChannel>
    <NPresets>8</NPresets>
    <NPresetEntries>32</NPresetEntries>
    <NModulationSources>8</NModulationSources>
    <NModulationTargetsPerSource>8</NModulationTargetsPerSource>
  </settings>
  <notes><![CDATA[]]></notes>
  <windowPos>
    <x>0</x>
    <y>2</y>
    <width>1094</width>
    <height>674</height>
  </windowPos>
</patch-1.0>