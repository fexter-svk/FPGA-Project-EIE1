// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mf2915@EEWS104A-015
//  Generated date: Fri May 06 16:08:25 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    markers_core
// ------------------------------------------------------------------


module markers_core (
  vin, vga_xy, clk, en, arst_n, vout_rsc_mgc_out_stdreg_d, volume_rsc_mgc_out_stdreg_d
);
  input [89:0] vin;
  input [19:0] vga_xy;
  input clk;
  input en;
  input arst_n;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;
  output [3:0] volume_rsc_mgc_out_stdreg_d;
  reg [3:0] volume_rsc_mgc_out_stdreg_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [3:0] acc_12_0_sva;
    reg [3:0] acc_12_1_sva;
    reg [9:0] red_xy_0_sva;
    reg [9:0] red_xy_1_sva;
    reg [9:0] blue_xy_0_sva;
    reg [9:0] blue_xy_1_sva;
    reg [3:0] volume_previous_sva;
    reg [5:0] acc_imod_sva;
    reg [3:0] if_acc_1_psp_sva;
    reg [3:0] if_acc_svs;
    reg unequal_tmp;
    reg land_sva_1;
    reg land_lpi_1_dfm;
    reg slc_svs;
    reg land_3_sva_1;
    reg land_3_lpi_1_dfm;
    reg land_2_sva_1;
    reg land_2_lpi_1_dfm;
    reg [3:0] acc_12_0_sva_2;
    reg [3:0] acc_12_0_sva_dfm_1;
    reg aif_11_slc_svs;
    reg land_5_sva_1;
    reg land_5_lpi_1_dfm;
    reg aif_17_slc_svs;
    reg aif_17_land_sva_1;
    reg land_4_lpi_1_dfm;
    reg [3:0] acc_12_1_sva_2;
    reg [3:0] acc_12_1_sva_dfm_1;
    reg slc_2_svs;
    reg if_4_land_lpi_1_dfm;
    reg [9:0] red_xy_0_sva_2;
    reg [9:0] red_xy_1_sva_2;
    reg [9:0] red_xy_0_sva_dfm_2;
    reg [9:0] red_xy_1_sva_dfm_2;
    reg slc_3_svs;
    reg if_6_land_lpi_1_dfm;
    reg [9:0] blue_xy_0_sva_2;
    reg [9:0] blue_xy_1_sva_2;
    reg [9:0] blue_xy_0_sva_dfm_2;
    reg [9:0] blue_xy_1_sva_dfm_2;
    reg [10:0] deltax_square_red_acc_psp_sva;
    reg [10:0] deltax_square_blue_acc_psp_sva;
    reg land_12_sva_1;
    reg land_12_lpi_1_dfm;
    reg [10:0] deltay_square_red_acc_psp_sva;
    reg aif_41_land_sva_1;
    reg land_14_sva_1;
    reg land_14_lpi_1_dfm;
    reg [10:0] deltay_square_blue_acc_psp_sva;
    reg aif_47_land_sva_1;
    reg land_13_lpi_1_dfm;
    reg [6:0] conc_imod_sg1_sva;
    reg [5:0] conc_imod_1_sg1_sva;
    reg [3:0] volume_current_sva;
    reg [4:0] acc_11_cse_sva;
    reg slc_8_svs;
    reg land_15_sva_1;
    reg [3:0] volume_previous_sva_dfm;
    reg [3:0] acc_12_0_sva_dfm_2;
    reg [3:0] acc_12_1_sva_dfm_2;
    reg [9:0] red_xy_0_sva_dfm_3;
    reg [9:0] red_xy_1_sva_dfm_3;
    reg [9:0] blue_xy_0_sva_dfm_3;
    reg [9:0] blue_xy_1_sva_dfm_3;
    reg land_2_lpi_1_dfm_1;
    reg land_4_lpi_1_dfm_1;
    reg [9:0] red_xy_1_sva_dfm_4;
    reg [9:0] blue_xy_1_sva_dfm_4;
    reg land_12_lpi_1_dfm_1;
    reg land_14_lpi_1_dfm_1;
    reg land_13_lpi_1_dfm_1;
    reg land_12_lpi_1_dfm_st;
    reg land_14_lpi_1_dfm_st;
    reg [1:0] volume_current_slc_acc_idiv_1_itm;
    reg [1:0] volume_current_slc_acc_idiv_1_itm_1;
    reg [1:0] volume_current_slc_acc_idiv_2_itm;
    reg [1:0] volume_current_slc_acc_idiv_2_itm_1;
    reg volume_current_slc_acc_idiv_3_itm;
    reg volume_current_slc_acc_idiv_3_itm_1;
    reg volume_current_slc_acc_idiv_4_itm;
    reg volume_current_slc_acc_idiv_4_itm_1;
    reg slc_acc_idiv_2_itm;
    reg slc_acc_idiv_2_itm_1;
    reg slc_acc_idiv_3_itm;
    reg slc_acc_idiv_3_itm_1;
    reg slc_acc_idiv_itm;
    reg slc_acc_idiv_itm_1;
    reg slc_acc_idiv_4_itm;
    reg slc_acc_idiv_4_itm_1;
    reg slc_acc_idiv_5_itm;
    reg slc_acc_idiv_5_itm_1;
    reg slc_acc_idiv_1_itm;
    reg slc_acc_idiv_1_itm_1;
    reg [4:0] volume_current_slc_acc_idiv_itm;
    reg [4:0] volume_current_slc_acc_idiv_itm_1;
    reg volume_current_slc_acc_idiv_12_itm;
    reg volume_current_slc_acc_idiv_12_itm_1;
    reg volume_current_slc_acc_idiv_12_itm_2;
    reg volume_current_slc_acc_idiv_13_itm;
    reg volume_current_slc_acc_idiv_13_itm_1;
    reg volume_current_slc_acc_idiv_13_itm_2;
    reg volume_current_slc_acc_idiv_9_itm;
    reg volume_current_slc_acc_idiv_9_itm_1;
    reg [1:0] volume_current_acc_9_itm;
    reg [1:0] volume_current_acc_9_itm_1;
    reg volume_current_slc_acc_idiv_6_itm;
    reg volume_current_slc_acc_idiv_6_itm_1;
    reg [1:0] volume_current_acc_8_itm;
    reg [1:0] volume_current_acc_8_itm_1;
    reg [2:0] volume_current_slc_acc_idiv_10_itm;
    reg [2:0] volume_current_slc_acc_idiv_10_itm_1;
    reg [2:0] volume_current_slc_acc_idiv_10_itm_2;
    reg volume_current_slc_acc_idiv_7_itm;
    reg volume_current_slc_acc_idiv_7_itm_1;
    reg volume_current_slc_acc_idiv_14_itm;
    reg volume_current_slc_acc_idiv_14_itm_1;
    reg volume_current_slc_acc_idiv_5_itm;
    reg volume_current_slc_acc_idiv_5_itm_1;
    reg volume_current_slc_acc_idiv_8_itm;
    reg volume_current_slc_acc_idiv_8_itm_1;
    reg [1:0] volume_current_acc_10_itm;
    reg [1:0] volume_current_acc_10_itm_1;
    reg and_11_itm;
    reg and_11_itm_1;
    reg land_2_lpi_1_dfm_st_1;
    reg land_4_lpi_1_dfm_st_1;
    reg land_12_lpi_1_dfm_st_1;
    reg land_14_lpi_1_dfm_st_1;
    reg main_stage_0_2;
    reg main_stage_0_3;
    reg main_stage_0_4;
    reg [10:0] volume_current_acc_sdt;
    reg and_7_cse;
    reg and_9_cse;
    reg [10:0] volume_current_acc_psp;

    reg[9:0] select_0;
    begin : core_rlpExit
      forever begin : core_rlp
        // C-Step 0 of Loop 'core_rlp'
        acc_12_0_sva = 4'b0;
        acc_12_1_sva = 4'b0;
        red_xy_0_sva = 10'b0;
        red_xy_1_sva = 10'b0;
        blue_xy_0_sva = 10'b0;
        blue_xy_1_sva = 10'b0;
        volume_previous_sva = 4'b0;
        main_stage_0_2 = 1'b0;
        main_stage_0_3 = 1'b0;
        main_stage_0_4 = 1'b0;
        begin : mainExit
          forever begin : main
            // C-Step 0 of Loop 'main'
            begin : waitLoop0Exit
              forever begin : waitLoop0
                @(posedge clk or negedge ( arst_n ));
                if ( ~ arst_n )
                  disable core_rlpExit;
                if ( en )
                  disable waitLoop0Exit;
              end
            end
            // C-Step 1 of Loop 'main'
            if ( main_stage_0_4 ) begin
              land_15_sva_1 = 1'b0;
              volume_current_sva = (({(~ volume_current_slc_acc_idiv_12_itm_2) ,
                  2'b11 , (~ volume_current_slc_acc_idiv_13_itm_2)}) + conv_u2u_3_4(conv_u2u_2_3(volume_current_acc_9_itm_1)
                  + conv_u2u_2_3(volume_current_acc_8_itm_1))) + (conv_u2s_3_4(volume_current_slc_acc_idiv_10_itm_2)
                  + conv_s2s_2_4(volume_current_acc_10_itm_1));
              acc_11_cse_sva = readslicef_6_5_1((({1'b1 , volume_current_sva , 1'b1})
                  + conv_u2s_5_6({(~ volume_previous_sva) , 1'b1})));
              slc_8_svs = readslicef_5_1_4((conv_s2u_4_5(acc_11_cse_sva[4:1]) + 5'b1));
              if ( slc_8_svs ) begin
              end
              else begin
                land_15_sva_1 = ~ (readslicef_6_1_5((conv_s2s_5_6(~ acc_11_cse_sva)
                    + 6'b11)));
              end
              volume_previous_sva_dfm = MUX_v_4_2_2({volume_previous_sva , volume_current_sva},
                  land_15_sva_1 & (~ slc_8_svs));
              volume_rsc_mgc_out_stdreg_d <= volume_previous_sva_dfm;
              vout_rsc_mgc_out_stdreg_d <= {({{9{and_11_itm_1}}, and_11_itm_1}) ,
                  10'b0 , ({{9{land_13_lpi_1_dfm_1}}, land_13_lpi_1_dfm_1})};
              volume_previous_sva = volume_previous_sva_dfm;
            end
            if ( main_stage_0_3 ) begin
              aif_47_land_sva_1 = 1'b0;
              aif_41_land_sva_1 = 1'b0;
              if ( land_12_lpi_1_dfm_st_1 ) begin
                deltay_square_red_acc_psp_sva = readslicef_12_11_1((({1'b1 , (vga_xy[19:10])
                    , 1'b1}) + conv_u2s_11_12({(~ red_xy_1_sva_dfm_4) , 1'b1})));
                if ( deltay_square_red_acc_psp_sva[10] ) begin
                end
                else begin
                  aif_41_land_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (deltay_square_red_acc_psp_sva[9:0]))})
                      + 11'b101001)));
                end
              end
              if ( land_14_lpi_1_dfm_st_1 ) begin
                deltay_square_blue_acc_psp_sva = readslicef_12_11_1((({1'b1 , (vga_xy[19:10])
                    , 1'b1}) + conv_u2s_11_12({(~ blue_xy_1_sva_dfm_4) , 1'b1})));
                if ( deltay_square_blue_acc_psp_sva[10] ) begin
                end
                else begin
                  aif_47_land_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (deltay_square_blue_acc_psp_sva[9:0]))})
                      + 11'b101001)));
                end
              end
              land_13_lpi_1_dfm = aif_47_land_sva_1 & (~ (deltay_square_blue_acc_psp_sva[10]))
                  & land_14_lpi_1_dfm_1;
              conc_imod_sg1_sva = (conv_u2s_6_7(readslicef_7_6_1((conv_u2u_6_7({volume_current_slc_acc_idiv_1_itm_1
                  , 1'b0 , volume_current_slc_acc_idiv_2_itm_1 , 1'b1}) + conv_u2u_6_7({(~
                  volume_current_slc_acc_idiv_3_itm_1) , 3'b111 , (~ volume_current_slc_acc_idiv_4_itm_1)
                  , 1'b1})))) + conv_s2s_6_7({slc_acc_idiv_2_itm_1 , 1'b0 , slc_acc_idiv_3_itm_1
                  , 2'b0 , slc_acc_idiv_itm_1})) + (conv_s2s_6_7({slc_acc_idiv_4_itm_1
                  , 1'b0 , ({{1{slc_acc_idiv_5_itm_1}}, slc_acc_idiv_5_itm_1}) ,
                  1'b0 , slc_acc_idiv_1_itm_1}) + conv_s2s_6_7({1'b1 , volume_current_slc_acc_idiv_itm_1}));
              conc_imod_1_sg1_sva = (readslicef_7_6_1((conv_s2s_6_7({1'b1 , (~ (conc_imod_sg1_sva[6]))
                  , 2'b11 , (~ (conc_imod_sg1_sva[6])) , 1'b1}) + conv_u2s_6_7({(conc_imod_sg1_sva[4:0])
                  , 1'b1})))) + ({(conc_imod_sg1_sva[5]) , 1'b0 , (conc_imod_sg1_sva[5])
                  , 2'b0 , (conc_imod_sg1_sva[5])});
              volume_current_acc_9_itm = conv_u2u_1_2(volume_current_slc_acc_idiv_9_itm_1)
                  + conv_u2u_1_2(conc_imod_sg1_sva[5]);
              volume_current_acc_8_itm = conv_u2u_1_2(~ (conc_imod_sg1_sva[6])) +
                  conv_u2u_1_2(~((conc_imod_1_sg1_sva[5]) & (~ volume_current_slc_acc_idiv_6_itm_1)));
              volume_current_acc_10_itm = conv_s2s_1_2(~(volume_current_slc_acc_idiv_7_itm_1
                  & (~ (conc_imod_1_sg1_sva[5])) & ((conc_imod_1_sg1_sva[4]) | (conc_imod_1_sg1_sva[3])
                  | (conc_imod_1_sg1_sva[2]) | (conc_imod_1_sg1_sva[1]) | (conc_imod_1_sg1_sva[0])
                  | volume_current_slc_acc_idiv_14_itm_1 | volume_current_slc_acc_idiv_5_itm_1)))
                  + conv_u2s_1_2(volume_current_slc_acc_idiv_8_itm_1);
              and_11_itm = aif_41_land_sva_1 & (~ (deltay_square_red_acc_psp_sva[10]))
                  & land_12_lpi_1_dfm_1 & (~ land_13_lpi_1_dfm);
            end
            if ( main_stage_0_2 ) begin
              land_14_sva_1 = 1'b0;
              land_12_sva_1 = 1'b0;
              blue_xy_1_sva_2 = 10'b0;
              blue_xy_0_sva_2 = 10'b0;
              red_xy_1_sva_2 = 10'b0;
              red_xy_0_sva_2 = 10'b0;
              acc_12_1_sva_2 = 4'b0;
              acc_12_0_sva_2 = 4'b0;
              if ( land_2_lpi_1_dfm_st_1 ) begin
                acc_12_0_sva_2 = acc_12_0_sva_dfm_2 + 4'b1;
              end
              acc_12_0_sva_dfm_1 = MUX_v_4_2_2({acc_12_0_sva_dfm_2 , acc_12_0_sva_2},
                  land_2_lpi_1_dfm_1);
              if ( land_4_lpi_1_dfm_st_1 ) begin
                acc_12_1_sva_2 = acc_12_1_sva_dfm_2 + 4'b1;
              end
              acc_12_1_sva_dfm_1 = MUX_v_4_2_2({acc_12_1_sva_dfm_2 , acc_12_1_sva_2},
                  land_4_lpi_1_dfm_1);
              slc_2_svs = readslicef_5_1_4((({1'b1 , (~ acc_12_0_sva_dfm_1)}) + 5'b101));
              if ( slc_2_svs ) begin
                if_4_land_lpi_1_dfm = ~((red_xy_1_sva_dfm_3[9]) | (red_xy_1_sva_dfm_3[8])
                    | (red_xy_1_sva_dfm_3[7]) | (red_xy_1_sva_dfm_3[6]) | (red_xy_1_sva_dfm_3[5])
                    | (red_xy_1_sva_dfm_3[4]) | (red_xy_1_sva_dfm_3[3]) | (red_xy_1_sva_dfm_3[2])
                    | (red_xy_1_sva_dfm_3[1]) | (red_xy_1_sva_dfm_3[0]) | (red_xy_0_sva_dfm_3[9])
                    | (red_xy_0_sva_dfm_3[8]) | (red_xy_0_sva_dfm_3[7]) | (red_xy_0_sva_dfm_3[6])
                    | (red_xy_0_sva_dfm_3[5]) | (red_xy_0_sva_dfm_3[4]) | (red_xy_0_sva_dfm_3[3])
                    | (red_xy_0_sva_dfm_3[2]) | (red_xy_0_sva_dfm_3[1]) | (red_xy_0_sva_dfm_3[0]));
                if ( if_4_land_lpi_1_dfm ) begin
                  red_xy_0_sva_2 = vga_xy[9:0];
                  red_xy_1_sva_2 = vga_xy[19:10];
                end
              end
              and_7_cse = if_4_land_lpi_1_dfm & slc_2_svs;
              red_xy_0_sva_dfm_2 = MUX_v_10_2_2({red_xy_0_sva_dfm_3 , red_xy_0_sva_2},
                  and_7_cse);
              red_xy_1_sva_dfm_2 = MUX_v_10_2_2({red_xy_1_sva_dfm_3 , red_xy_1_sva_2},
                  and_7_cse);
              slc_3_svs = readslicef_5_1_4((({1'b1 , (~ acc_12_1_sva_dfm_1)}) + 5'b101));
              if ( slc_3_svs ) begin
                if_6_land_lpi_1_dfm = ~((blue_xy_1_sva_dfm_3[9]) | (blue_xy_1_sva_dfm_3[8])
                    | (blue_xy_1_sva_dfm_3[7]) | (blue_xy_1_sva_dfm_3[6]) | (blue_xy_1_sva_dfm_3[5])
                    | (blue_xy_1_sva_dfm_3[4]) | (blue_xy_1_sva_dfm_3[3]) | (blue_xy_1_sva_dfm_3[2])
                    | (blue_xy_1_sva_dfm_3[1]) | (blue_xy_1_sva_dfm_3[0]) | (blue_xy_0_sva_dfm_3[9])
                    | (blue_xy_0_sva_dfm_3[8]) | (blue_xy_0_sva_dfm_3[7]) | (blue_xy_0_sva_dfm_3[6])
                    | (blue_xy_0_sva_dfm_3[5]) | (blue_xy_0_sva_dfm_3[4]) | (blue_xy_0_sva_dfm_3[3])
                    | (blue_xy_0_sva_dfm_3[2]) | (blue_xy_0_sva_dfm_3[1]) | (blue_xy_0_sva_dfm_3[0]));
                if ( if_6_land_lpi_1_dfm ) begin
                  blue_xy_0_sva_2 = vga_xy[9:0];
                  blue_xy_1_sva_2 = vga_xy[19:10];
                end
              end
              and_9_cse = if_6_land_lpi_1_dfm & slc_3_svs;
              blue_xy_0_sva_dfm_2 = MUX_v_10_2_2({blue_xy_0_sva_dfm_3 , blue_xy_0_sva_2},
                  and_9_cse);
              blue_xy_1_sva_dfm_2 = MUX_v_10_2_2({blue_xy_1_sva_dfm_3 , blue_xy_1_sva_2},
                  and_9_cse);
              deltax_square_red_acc_psp_sva = readslicef_12_11_1((({1'b1 , (vga_xy[9:0])
                  , 1'b1}) + conv_u2s_11_12({(~ red_xy_0_sva_dfm_2) , 1'b1})));
              deltax_square_blue_acc_psp_sva = readslicef_12_11_1((({1'b1 , (vga_xy[9:0])
                  , 1'b1}) + conv_u2s_11_12({(~ blue_xy_0_sva_dfm_2) , 1'b1})));
              if ( deltax_square_red_acc_psp_sva[10] ) begin
              end
              else begin
                land_12_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (deltax_square_red_acc_psp_sva[9:0]))})
                    + 11'b101001)));
              end
              land_12_lpi_1_dfm = land_12_sva_1 & (~ (deltax_square_red_acc_psp_sva[10]));
              land_12_lpi_1_dfm_st = land_12_lpi_1_dfm;
              if ( deltax_square_blue_acc_psp_sva[10] ) begin
              end
              else begin
                land_14_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (deltax_square_blue_acc_psp_sva[9:0]))})
                    + 11'b101001)));
              end
              land_14_lpi_1_dfm = land_14_sva_1 & (~ (deltax_square_blue_acc_psp_sva[10]));
              land_14_lpi_1_dfm_st = land_14_lpi_1_dfm;
              volume_current_acc_sdt = conv_u2u_10_11(~ red_xy_1_sva_dfm_2) + conv_u2u_10_11(~
                  blue_xy_1_sva_dfm_2);
              volume_current_acc_psp = conv_u2u_10_11(volume_current_acc_sdt[10:1])
                  + 11'b10111100001;
              volume_current_slc_acc_idiv_1_itm = volume_current_acc_psp[8:7];
              volume_current_slc_acc_idiv_2_itm = volume_current_acc_psp[8:7];
              volume_current_slc_acc_idiv_3_itm = volume_current_acc_psp[10];
              volume_current_slc_acc_idiv_4_itm = volume_current_acc_psp[10];
              slc_acc_idiv_2_itm = volume_current_acc_psp[6];
              slc_acc_idiv_3_itm = volume_current_acc_psp[6];
              slc_acc_idiv_itm = volume_current_acc_psp[6];
              slc_acc_idiv_4_itm = volume_current_acc_psp[9];
              slc_acc_idiv_5_itm = volume_current_acc_psp[9];
              slc_acc_idiv_1_itm = volume_current_acc_psp[9];
              volume_current_slc_acc_idiv_itm = volume_current_acc_psp[5:1];
              volume_current_slc_acc_idiv_12_itm = volume_current_acc_psp[10];
              volume_current_slc_acc_idiv_13_itm = volume_current_acc_psp[10];
              volume_current_slc_acc_idiv_9_itm = volume_current_acc_psp[9];
              volume_current_slc_acc_idiv_6_itm = volume_current_acc_psp[10];
              volume_current_slc_acc_idiv_10_itm = volume_current_acc_psp[9:7];
              volume_current_slc_acc_idiv_7_itm = volume_current_acc_psp[10];
              volume_current_slc_acc_idiv_14_itm = volume_current_acc_psp[0];
              volume_current_slc_acc_idiv_5_itm = volume_current_acc_sdt[0];
              volume_current_slc_acc_idiv_8_itm = volume_current_acc_psp[6];
              acc_12_0_sva = acc_12_0_sva_dfm_1;
              acc_12_1_sva = acc_12_1_sva_dfm_1;
              red_xy_0_sva = red_xy_0_sva_dfm_2;
              red_xy_1_sva = red_xy_1_sva_dfm_2;
              blue_xy_0_sva = blue_xy_0_sva_dfm_2;
              blue_xy_1_sva = blue_xy_1_sva_dfm_2;
            end
            aif_17_land_sva_1 = 1'b0;
            land_5_sva_1 = 1'b0;
            land_2_sva_1 = 1'b0;
            land_3_sva_1 = 1'b0;
            land_sva_1 = 1'b0;
            acc_imod_sva = conv_s2s_5_6(({3'b100 , (vga_xy[9:8])}) + conv_u2s_4_5(readslicef_5_4_1((conv_u2u_4_5({(vga_xy[2:0])
                , 1'b1}) + conv_u2u_4_5(vga_xy[6:3]))))) + conv_u2s_5_6({(conv_u2u_1_2(~
                (vga_xy[3])) + conv_u2u_1_2(~ (vga_xy[7]))) , 2'b0 , (readslicef_2_1_1((conv_u2u_1_2(vga_xy[7])
                + 2'b1)))});
            if_acc_1_psp_sva = (readslicef_5_4_1((({(~ (acc_imod_sva[3])) , 4'b1})
                + conv_s2u_3_5(acc_imod_sva[5:3])))) + ({1'b1 , (acc_imod_sva[2:0])});
            if_acc_svs = conv_s2u_1_4(if_acc_1_psp_sva[3]) + if_acc_1_psp_sva;
            unequal_tmp = (if_acc_svs[3]) | (if_acc_svs[2]) | (if_acc_svs[1]) | (if_acc_svs[0]);
            select_0 = vga_xy[19:10];
            case (select_0)
              10'b0 : begin
                land_sva_1 = ~((vga_xy[9]) | (vga_xy[8]) | (vga_xy[7]) | (vga_xy[6])
                    | (vga_xy[5]) | (vga_xy[4]) | (vga_xy[3]) | (vga_xy[2]) | (vga_xy[1])
                    | (vga_xy[0]));
              end
              default : begin
                // NOP
              end
            endcase
            land_lpi_1_dfm = land_sva_1 & (~((vga_xy[19]) | (vga_xy[18]) | (vga_xy[17])
                | (vga_xy[16]) | (vga_xy[15]) | (vga_xy[14]) | (vga_xy[13]) | (vga_xy[12])
                | (vga_xy[11]) | (vga_xy[10])));
            slc_svs = readslicef_4_1_3((conv_u2u_3_4(vin[29:27]) + 4'b1011));
            if ( slc_svs ) begin
            end
            else begin
              land_3_sva_1 = ~ (readslicef_10_1_9((conv_u2s_9_10(~ (vin[28:20]))
                  + 10'b1111111101)));
            end
            land_3_lpi_1_dfm = land_3_sva_1 & (~ slc_svs);
            if ( land_3_lpi_1_dfm ) begin
              land_2_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (vin[19:10]))}) +
                  11'b110010001)));
            end
            land_2_lpi_1_dfm = land_2_sva_1 & land_3_lpi_1_dfm;
            aif_11_slc_svs = readslicef_11_1_10((({1'b1 , (~ (vin[29:20]))}) + 11'b101000001));
            if ( aif_11_slc_svs ) begin
            end
            else begin
              land_5_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (vin[19:10]))}) +
                  11'b101000001)));
            end
            land_5_lpi_1_dfm = land_5_sva_1 & (~ aif_11_slc_svs);
            if ( land_5_lpi_1_dfm ) begin
              aif_17_slc_svs = readslicef_8_1_7((conv_u2u_7_8(vin[9:3]) + 8'b11010011));
              if ( aif_17_slc_svs ) begin
              end
              else begin
                aif_17_land_sva_1 = ~ (readslicef_11_1_10((({1'b1 , (~ (vin[9:0]))})
                    + 11'b1011010001)));
              end
            end
            land_4_lpi_1_dfm = aif_17_land_sva_1 & (~ aif_17_slc_svs) & land_5_lpi_1_dfm;
            acc_12_0_sva_dfm_2 = acc_12_0_sva & ({{3{unequal_tmp}}, unequal_tmp});
            acc_12_1_sva_dfm_2 = acc_12_1_sva & ({{3{unequal_tmp}}, unequal_tmp});
            red_xy_0_sva_dfm_3 = red_xy_0_sva & (signext_10_1(~ land_lpi_1_dfm));
            red_xy_1_sva_dfm_3 = red_xy_1_sva & (signext_10_1(~ land_lpi_1_dfm));
            blue_xy_0_sva_dfm_3 = blue_xy_0_sva & (signext_10_1(~ land_lpi_1_dfm));
            blue_xy_1_sva_dfm_3 = blue_xy_1_sva & (signext_10_1(~ land_lpi_1_dfm));
            land_2_lpi_1_dfm_1 = land_2_lpi_1_dfm;
            land_4_lpi_1_dfm_1 = land_4_lpi_1_dfm;
            red_xy_1_sva_dfm_4 = red_xy_1_sva_dfm_2;
            blue_xy_1_sva_dfm_4 = blue_xy_1_sva_dfm_2;
            land_12_lpi_1_dfm_1 = land_12_lpi_1_dfm;
            land_14_lpi_1_dfm_1 = land_14_lpi_1_dfm;
            land_13_lpi_1_dfm_1 = land_13_lpi_1_dfm;
            volume_current_slc_acc_idiv_1_itm_1 = volume_current_slc_acc_idiv_1_itm;
            volume_current_slc_acc_idiv_2_itm_1 = volume_current_slc_acc_idiv_2_itm;
            volume_current_slc_acc_idiv_3_itm_1 = volume_current_slc_acc_idiv_3_itm;
            volume_current_slc_acc_idiv_4_itm_1 = volume_current_slc_acc_idiv_4_itm;
            slc_acc_idiv_2_itm_1 = slc_acc_idiv_2_itm;
            slc_acc_idiv_3_itm_1 = slc_acc_idiv_3_itm;
            slc_acc_idiv_itm_1 = slc_acc_idiv_itm;
            slc_acc_idiv_4_itm_1 = slc_acc_idiv_4_itm;
            slc_acc_idiv_5_itm_1 = slc_acc_idiv_5_itm;
            slc_acc_idiv_1_itm_1 = slc_acc_idiv_1_itm;
            volume_current_slc_acc_idiv_itm_1 = volume_current_slc_acc_idiv_itm;
            volume_current_slc_acc_idiv_12_itm_2 = volume_current_slc_acc_idiv_12_itm_1;
            volume_current_slc_acc_idiv_12_itm_1 = volume_current_slc_acc_idiv_12_itm;
            volume_current_slc_acc_idiv_13_itm_2 = volume_current_slc_acc_idiv_13_itm_1;
            volume_current_slc_acc_idiv_13_itm_1 = volume_current_slc_acc_idiv_13_itm;
            volume_current_slc_acc_idiv_9_itm_1 = volume_current_slc_acc_idiv_9_itm;
            volume_current_acc_9_itm_1 = volume_current_acc_9_itm;
            volume_current_slc_acc_idiv_6_itm_1 = volume_current_slc_acc_idiv_6_itm;
            volume_current_acc_8_itm_1 = volume_current_acc_8_itm;
            volume_current_slc_acc_idiv_10_itm_2 = volume_current_slc_acc_idiv_10_itm_1;
            volume_current_slc_acc_idiv_10_itm_1 = volume_current_slc_acc_idiv_10_itm;
            volume_current_slc_acc_idiv_7_itm_1 = volume_current_slc_acc_idiv_7_itm;
            volume_current_slc_acc_idiv_14_itm_1 = volume_current_slc_acc_idiv_14_itm;
            volume_current_slc_acc_idiv_5_itm_1 = volume_current_slc_acc_idiv_5_itm;
            volume_current_slc_acc_idiv_8_itm_1 = volume_current_slc_acc_idiv_8_itm;
            volume_current_acc_10_itm_1 = volume_current_acc_10_itm;
            and_11_itm_1 = and_11_itm;
            land_2_lpi_1_dfm_st_1 = land_2_lpi_1_dfm;
            land_4_lpi_1_dfm_st_1 = land_4_lpi_1_dfm;
            land_12_lpi_1_dfm_st_1 = land_12_lpi_1_dfm_st;
            land_14_lpi_1_dfm_st_1 = land_14_lpi_1_dfm_st;
            main_stage_0_4 = main_stage_0_3;
            main_stage_0_3 = main_stage_0_2;
            main_stage_0_2 = 1'b1;
          end
        end
      end
    end
    volume_current_acc_psp = 11'b0;
    and_9_cse = 1'b0;
    and_7_cse = 1'b0;
    volume_current_acc_sdt = 11'b0;
    main_stage_0_4 = 1'b0;
    main_stage_0_3 = 1'b0;
    main_stage_0_2 = 1'b0;
    land_14_lpi_1_dfm_st_1 = 1'b0;
    land_12_lpi_1_dfm_st_1 = 1'b0;
    land_4_lpi_1_dfm_st_1 = 1'b0;
    land_2_lpi_1_dfm_st_1 = 1'b0;
    and_11_itm_1 = 1'b0;
    and_11_itm = 1'b0;
    volume_current_acc_10_itm_1 = 2'b0;
    volume_current_acc_10_itm = 2'b0;
    volume_current_slc_acc_idiv_8_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_8_itm = 1'b0;
    volume_current_slc_acc_idiv_5_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_5_itm = 1'b0;
    volume_current_slc_acc_idiv_14_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_14_itm = 1'b0;
    volume_current_slc_acc_idiv_7_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_7_itm = 1'b0;
    volume_current_slc_acc_idiv_10_itm_2 = 3'b0;
    volume_current_slc_acc_idiv_10_itm_1 = 3'b0;
    volume_current_slc_acc_idiv_10_itm = 3'b0;
    volume_current_acc_8_itm_1 = 2'b0;
    volume_current_acc_8_itm = 2'b0;
    volume_current_slc_acc_idiv_6_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_6_itm = 1'b0;
    volume_current_acc_9_itm_1 = 2'b0;
    volume_current_acc_9_itm = 2'b0;
    volume_current_slc_acc_idiv_9_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_9_itm = 1'b0;
    volume_current_slc_acc_idiv_13_itm_2 = 1'b0;
    volume_current_slc_acc_idiv_13_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_13_itm = 1'b0;
    volume_current_slc_acc_idiv_12_itm_2 = 1'b0;
    volume_current_slc_acc_idiv_12_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_12_itm = 1'b0;
    volume_current_slc_acc_idiv_itm_1 = 5'b0;
    volume_current_slc_acc_idiv_itm = 5'b0;
    slc_acc_idiv_1_itm_1 = 1'b0;
    slc_acc_idiv_1_itm = 1'b0;
    slc_acc_idiv_5_itm_1 = 1'b0;
    slc_acc_idiv_5_itm = 1'b0;
    slc_acc_idiv_4_itm_1 = 1'b0;
    slc_acc_idiv_4_itm = 1'b0;
    slc_acc_idiv_itm_1 = 1'b0;
    slc_acc_idiv_itm = 1'b0;
    slc_acc_idiv_3_itm_1 = 1'b0;
    slc_acc_idiv_3_itm = 1'b0;
    slc_acc_idiv_2_itm_1 = 1'b0;
    slc_acc_idiv_2_itm = 1'b0;
    volume_current_slc_acc_idiv_4_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_4_itm = 1'b0;
    volume_current_slc_acc_idiv_3_itm_1 = 1'b0;
    volume_current_slc_acc_idiv_3_itm = 1'b0;
    volume_current_slc_acc_idiv_2_itm_1 = 2'b0;
    volume_current_slc_acc_idiv_2_itm = 2'b0;
    volume_current_slc_acc_idiv_1_itm_1 = 2'b0;
    volume_current_slc_acc_idiv_1_itm = 2'b0;
    land_14_lpi_1_dfm_st = 1'b0;
    land_12_lpi_1_dfm_st = 1'b0;
    land_13_lpi_1_dfm_1 = 1'b0;
    land_14_lpi_1_dfm_1 = 1'b0;
    land_12_lpi_1_dfm_1 = 1'b0;
    blue_xy_1_sva_dfm_4 = 10'b0;
    red_xy_1_sva_dfm_4 = 10'b0;
    land_4_lpi_1_dfm_1 = 1'b0;
    land_2_lpi_1_dfm_1 = 1'b0;
    blue_xy_1_sva_dfm_3 = 10'b0;
    blue_xy_0_sva_dfm_3 = 10'b0;
    red_xy_1_sva_dfm_3 = 10'b0;
    red_xy_0_sva_dfm_3 = 10'b0;
    acc_12_1_sva_dfm_2 = 4'b0;
    acc_12_0_sva_dfm_2 = 4'b0;
    volume_previous_sva_dfm = 4'b0;
    land_15_sva_1 = 1'b0;
    slc_8_svs = 1'b0;
    acc_11_cse_sva = 5'b0;
    volume_current_sva = 4'b0;
    conc_imod_1_sg1_sva = 6'b0;
    conc_imod_sg1_sva = 7'b0;
    land_13_lpi_1_dfm = 1'b0;
    aif_47_land_sva_1 = 1'b0;
    deltay_square_blue_acc_psp_sva = 11'b0;
    land_14_lpi_1_dfm = 1'b0;
    land_14_sva_1 = 1'b0;
    aif_41_land_sva_1 = 1'b0;
    deltay_square_red_acc_psp_sva = 11'b0;
    land_12_lpi_1_dfm = 1'b0;
    land_12_sva_1 = 1'b0;
    deltax_square_blue_acc_psp_sva = 11'b0;
    deltax_square_red_acc_psp_sva = 11'b0;
    blue_xy_1_sva_dfm_2 = 10'b0;
    blue_xy_0_sva_dfm_2 = 10'b0;
    blue_xy_1_sva_2 = 10'b0;
    blue_xy_0_sva_2 = 10'b0;
    if_6_land_lpi_1_dfm = 1'b0;
    slc_3_svs = 1'b0;
    red_xy_1_sva_dfm_2 = 10'b0;
    red_xy_0_sva_dfm_2 = 10'b0;
    red_xy_1_sva_2 = 10'b0;
    red_xy_0_sva_2 = 10'b0;
    if_4_land_lpi_1_dfm = 1'b0;
    slc_2_svs = 1'b0;
    acc_12_1_sva_dfm_1 = 4'b0;
    acc_12_1_sva_2 = 4'b0;
    land_4_lpi_1_dfm = 1'b0;
    aif_17_land_sva_1 = 1'b0;
    aif_17_slc_svs = 1'b0;
    land_5_lpi_1_dfm = 1'b0;
    land_5_sva_1 = 1'b0;
    aif_11_slc_svs = 1'b0;
    acc_12_0_sva_dfm_1 = 4'b0;
    acc_12_0_sva_2 = 4'b0;
    land_2_lpi_1_dfm = 1'b0;
    land_2_sva_1 = 1'b0;
    land_3_lpi_1_dfm = 1'b0;
    land_3_sva_1 = 1'b0;
    slc_svs = 1'b0;
    land_lpi_1_dfm = 1'b0;
    land_sva_1 = 1'b0;
    unequal_tmp = 1'b0;
    if_acc_svs = 4'b0;
    if_acc_1_psp_sva = 4'b0;
    acc_imod_sva = 6'b0;
    volume_previous_sva = 4'b0;
    blue_xy_1_sva = 10'b0;
    blue_xy_0_sva = 10'b0;
    red_xy_1_sva = 10'b0;
    red_xy_0_sva = 10'b0;
    acc_12_1_sva = 4'b0;
    acc_12_0_sva = 4'b0;
    volume_rsc_mgc_out_stdreg_d <= 4'b0;
    vout_rsc_mgc_out_stdreg_d <= 30'b0;
  end


  function [4:0] readslicef_6_5_1;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_6_5_1 = tmp[4:0];
  end
  endfunction


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_6_1_5;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 5;
    readslicef_6_1_5 = tmp[0:0];
  end
  endfunction


  function [3:0] MUX_v_4_2_2;
    input [7:0] inputs;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[7:4];
      end
      1'b1 : begin
        result = inputs[3:0];
      end
      default : begin
        result = inputs[7:4];
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
  end
  endfunction


  function [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function [5:0] readslicef_7_6_1;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_7_6_1 = tmp[5:0];
  end
  endfunction


  function [9:0] MUX_v_10_2_2;
    input [19:0] inputs;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[19:10];
      end
      1'b1 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[19:10];
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [0:0] readslicef_2_1_1;
    input [1:0] vector;
    reg [1:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_2_1_1 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_4_1_3;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 3;
    readslicef_4_1_3 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_10_1_9;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 9;
    readslicef_10_1_9 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_8_1_7;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_8_1_7 = tmp[0:0];
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function signed [3:0] conv_u2s_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2s_3_4 = {1'b0, vector};
  end
  endfunction


  function signed [3:0] conv_s2s_2_4 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_4 = {{2{vector[1]}}, vector};
  end
  endfunction


  function signed [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_s2u_4_5 ;
    input signed [3:0]  vector ;
  begin
    conv_s2u_4_5 = {vector[3], vector};
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_u2s_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_7 = {1'b0, vector};
  end
  endfunction


  function  [6:0] conv_u2u_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_7 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_s2s_6_7 ;
    input signed [5:0]  vector ;
  begin
    conv_s2s_6_7 = {vector[5], vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [1:0] conv_s2s_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_2 = {vector[0], vector};
  end
  endfunction


  function signed [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 = {1'b0, vector};
  end
  endfunction


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_s2u_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2u_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function  [3:0] conv_s2u_1_4 ;
    input signed [0:0]  vector ;
  begin
    conv_s2u_1_4 = {{3{vector[0]}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    markers
//  Generated from file(s):
//    2) $PROJECT_HOME/../markers_source/blur.c
// ------------------------------------------------------------------


module markers (
  vin, vout_rsc_z, vga_xy, volume_rsc_z, clk, en, arst_n
);
  input [89:0] vin;
  output [29:0] vout_rsc_z;
  input [19:0] vga_xy;
  output [3:0] volume_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [29:0] vout_rsc_mgc_out_stdreg_d;
  wire [3:0] volume_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mgc_out_stdreg #(.rscid(4),
  .width(4)) volume_rsc_mgc_out_stdreg (
      .d(volume_rsc_mgc_out_stdreg_d),
      .z(volume_rsc_z)
    );
  markers_core markers_core_inst (
      .vin(vin),
      .vga_xy(vga_xy),
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d),
      .volume_rsc_mgc_out_stdreg_d(volume_rsc_mgc_out_stdreg_d)
    );
endmodule



