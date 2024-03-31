![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# ALU_DECODERS diagram description
## The diagram is conformed with multiple verilog files, it contains the following.
  * A 3 bits ALU (Arithemtic Logic Unit). ("ALU3B.v")
  * A Gray decoder which output is targeted for a decimal representation for a 7 segments display. ("Decod_Gray.v")
  * A Octal decoder which output is targeted for a decimal representation for a 7 segments display. ("Decod_Octal-v")
  * A 2 to 1 14 bits multiplexer. ("Mux2_1_14b.v")
  * The top module ("Proyecto_Final.v")
  * The tinytapeout top module ("tt_um_ALU_DECODERS.v")
## The system has the following 9 inputs.
  * "A_in [2:0]" Number A which the ALU will operate, "Num_A_in" in the tinytape out top module.
  * "B_in [2:0]" Number B which the ALU will operate, "Num_B_in" in the tinytape out top module.
  * "Sel_in[1:0]" The ALU selector "Sel_A_in" in the tinytape out top module.
  * "Sel_in" The multiplexer selector in order to chose the Octal or Gray output "Sel_M_in" in the tinytape out top module.
## The system has the following 14 outputs
  * "Disp_out[13:0]"
    * Disp_out[13:7] is for the left 7 segment display decoder.
    * Disp_out[6:0] is for the right 7 segment display decoder.
# Diagram.
![image](https://github.com/Santiago-Robledo/tt06-ALU-Decoders/assets/143015883/3c2c46f2-a145-4caa-838c-1e5994d1daba)
# Internal Diagram
![Proyecto_LP_Visio](https://github.com/Santiago-Robledo/tt06-ALU-Decoders/assets/143015883/13afab86-897a-45ec-89e6-9e3ad0cef5e9)

# Objectives
  * Learn Verilog to design digital integrated circuits.
  * Learn the modern digital design flux for ICs with open source EDAs and PDKs ("Electronic Design Automation") (Skywater 130nm).
  * Learn the module instantiation for estructural design.
  * Review the combinational design process.
# Arithmetic Logic Unit (ALU)
  "An arithmetic and logic unit (ALU) is a combinational circuit that can perform any of a number of different arithmetic and logical operations on a pair of b-bit operands." (Wakerly, 2018). This operations are chosen with a correspondant select input, similar to a mux where the number of operations an ALU can perform goes by the following expression (2^N)-1, where N is the number of bits of the selector.

  ![image](https://github.com/Santiago-Robledo/tt06-ALU-Decoders/assets/143015883/9ee2fcfa-bde3-4ebc-bcd0-28764e79b37e)



# Multiplexer
  "A multiplexer is a digital switch, it connecats data from a one of n sources to its output. A select input S selects which of the n data inputs is to be tranferred to the output." (Wakerly,2018)

  ![image](https://github.com/Santiago-Robledo/tt06-ALU-Decoders/assets/143015883/5ebb8e1c-483c-4546-9b9e-206d28947d65)


# Octal number system
  "The octal number system uses radix 8, it is useful for representing multibit numbers because their radices are powers of 2, it follows that each 3-bit string can be uniquely represented by one octal digit". (Wakerly,2018)

  ![image](https://github.com/Santiago-Robledo/tt06-ALU-Decoders/assets/143015883/4f5ce339-077a-4a4a-b643-5ad08b43e09b)

# Gray Code (Wakerly,2018)
  It is a digital code in which only one bit changes at each boarder, it commonly used in Karnaugh Maps.
    * It follows the next algorith.
      * You take the LSB and compare it with the upper order bit.
        * If its equal you put a 0. (XOR)
        * If they are different you place a 1. (XOR)
      * You move 1 bit order and repeat.
      *When you reach the MSB consider the las comparison with a 0.
In this algorith you fill the Gray code from the LSB up to the MSB.

![image](https://github.com/Santiago-Robledo/tt06-ALU-Decoders/assets/143015883/1b9584f3-58ad-4123-8463-d44201a18992)

# Bibliography
  * Wakerly, J. F. (2018). Digital design: Principles and Practices, Fifth Edition, pp. 383, pp.37-39, pp.61-62.
    





















# Tiny Tapeout Verilog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Verilog Projects

1. Add your Verilog files to the `src` folder.
2. Edit the [info.yaml](info.yaml) and update information about your project, paying special attention to the `source_files` and `top_module` properties. If you are upgrading an existing Tiny Tapeout project, check out our [online info.yaml migration tool](https://tinytapeout.github.io/tt-yaml-upgrade-tool/).
3. Edit [docs/info.md](docs/info.md) and add a description of your project.
4. Optionally, add a testbench to the `test` folder. See [test/README.md](test/README.md) for more information.

The GitHub action will automatically build the ASIC files using [OpenLane](https://www.zerotoasiccourse.com/terminology/openlane/).

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)
