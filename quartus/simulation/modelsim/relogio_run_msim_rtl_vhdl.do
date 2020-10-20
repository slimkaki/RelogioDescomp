transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/flipflopGenerico.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/divisorGenerico.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/decodificador.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/conversorHex7seg.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/constants.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/bancoReg.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/ULA.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/somadorGenerico.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/registradorGenerico.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/muxGenerico2x1.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/divisorGenerico_e_Interface.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/UnidadeControle.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/memoriaROM.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/fetch.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/fluxo_de_dados.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/CPU.vhd}
vcom -2008 -work work {/home/rafaelalmada/Documents/RelogioDescomp/quartus/TopLevel.vhd}

