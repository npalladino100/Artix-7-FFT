vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr_mig_sim.v" \
"../../../../digital logic project.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr.v" \


vlog -work xil_defaultlib \
"glbl.v"

