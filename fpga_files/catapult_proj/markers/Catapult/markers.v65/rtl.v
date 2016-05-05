// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mf2915@EEWS305-026
//  Generated date: Thu May 05 17:49:16 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    markers_core
// ------------------------------------------------------------------


module markers_core (
  vin, vga_xy, clk, en, arst_n, vout_rsc_mgc_out_stdreg_d
);
  input [89:0] vin;
  input [19:0] vga_xy;
  input clk;
  input en;
  input arst_n;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire or_dcpl_4;
  wire or_dcpl_5;
  reg [3:0] acc_8_0_sva_dfm_2;
  reg [3:0] acc_8_1_sva_dfm_2;
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
  reg main_stage_0_2;
  reg main_stage_0_3;
  wire [3:0] acc_8_1_sva_dfm_1_mx0;
  wire [3:0] acc_8_0_sva_dfm_1_mx0;
  reg reg_deltay_square_red_acc_psp_sva_tmp;
  reg reg_deltay_square_blue_acc_psp_sva_tmp;
  wire [11:0] deltay_square_red_acc_1_itm;
  wire [12:0] nl_deltay_square_red_acc_1_itm;
  wire [11:0] deltay_square_blue_acc_1_itm;
  wire [12:0] nl_deltay_square_blue_acc_1_itm;
  wire [11:0] deltax_square_blue_acc_1_itm;
  wire [12:0] nl_deltax_square_blue_acc_1_itm;
  wire [11:0] deltax_square_red_acc_1_itm;
  wire [12:0] nl_deltax_square_red_acc_1_itm;
  wire [9:0] red_xy_1_sva_dfm_4_mx0;
  wire [9:0] blue_xy_1_sva_dfm_4_mx0;
  wire land_13_lpi_1_dfm;
  wire [9:0] red_xy_0_sva_dfm_2_mx0;
  wire [9:0] blue_xy_0_sva_dfm_2_mx0;
  wire [3:0] if_acc_svs;
  wire [4:0] nl_if_acc_svs;
  wire [3:0] if_acc_1_psp_sva;
  wire [4:0] nl_if_acc_1_psp_sva;
  wire [5:0] acc_imod_sva;
  wire [6:0] nl_acc_imod_sva;
  wire [8:0] aif_13_aif_acc_1_itm;
  wire [9:0] nl_aif_13_aif_acc_1_itm;
  wire nand_2_itm;
  wire or_itm;


  // Interconnect Declarations for Component Instantiations 
  assign nl_deltay_square_red_acc_1_itm = ({1'b1 , (vga_xy[19:10]) , 1'b1}) + conv_u2s_11_12({(~
      red_xy_1_sva_dfm_4) , 1'b1});
  assign deltay_square_red_acc_1_itm = nl_deltay_square_red_acc_1_itm[11:0];
  assign red_xy_1_sva_dfm_4_mx0 = MUX_v_10_2_2({(vga_xy[19:10]) , red_xy_1_sva_dfm_3},
      or_dcpl_4);
  assign nl_deltay_square_blue_acc_1_itm = ({1'b1 , (vga_xy[19:10]) , 1'b1}) + conv_u2s_11_12({(~
      blue_xy_1_sva_dfm_4) , 1'b1});
  assign deltay_square_blue_acc_1_itm = nl_deltay_square_blue_acc_1_itm[11:0];
  assign blue_xy_1_sva_dfm_4_mx0 = MUX_v_10_2_2({(vga_xy[19:10]) , blue_xy_1_sva_dfm_3},
      or_dcpl_5);
  assign land_13_lpi_1_dfm = (~ (readslicef_11_1_10((({1'b1 , (~ (deltay_square_blue_acc_1_itm[10:1]))})
      + 11'b101001)))) & (~ (deltay_square_blue_acc_1_itm[11])) & land_14_lpi_1_dfm_1;
  assign red_xy_0_sva_dfm_2_mx0 = MUX_v_10_2_2({(vga_xy[9:0]) , red_xy_0_sva_dfm_3},
      or_dcpl_4);
  assign blue_xy_0_sva_dfm_2_mx0 = MUX_v_10_2_2({(vga_xy[9:0]) , blue_xy_0_sva_dfm_3},
      or_dcpl_5);
  assign nl_deltax_square_blue_acc_1_itm = ({1'b1 , (vga_xy[9:0]) , 1'b1}) + conv_u2s_11_12({(~
      blue_xy_0_sva_dfm_2_mx0) , 1'b1});
  assign deltax_square_blue_acc_1_itm = nl_deltax_square_blue_acc_1_itm[11:0];
  assign nl_deltax_square_red_acc_1_itm = ({1'b1 , (vga_xy[9:0]) , 1'b1}) + conv_u2s_11_12({(~
      red_xy_0_sva_dfm_2_mx0) , 1'b1});
  assign deltax_square_red_acc_1_itm = nl_deltax_square_red_acc_1_itm[11:0];
  assign acc_8_1_sva_dfm_1_mx0 = MUX_v_4_2_2({acc_8_1_sva_dfm_2 , (acc_8_1_sva_dfm_2
      + 4'b1)}, land_4_lpi_1_dfm_1);
  assign acc_8_0_sva_dfm_1_mx0 = MUX_v_4_2_2({acc_8_0_sva_dfm_2 , (acc_8_0_sva_dfm_2
      + 4'b1)}, land_2_lpi_1_dfm_1);
  assign nl_if_acc_svs = conv_s2u_1_4(if_acc_1_psp_sva[3]) + if_acc_1_psp_sva;
  assign if_acc_svs = nl_if_acc_svs[3:0];
  assign nl_if_acc_1_psp_sva = (readslicef_5_4_1((({(~ (acc_imod_sva[3])) , 4'b1})
      + conv_s2u_3_5(acc_imod_sva[5:3])))) + ({1'b1 , (acc_imod_sva[2:0])});
  assign if_acc_1_psp_sva = nl_if_acc_1_psp_sva[3:0];
  assign nl_acc_imod_sva = conv_s2s_5_6(({3'b100 , (vga_xy[9:8])}) + conv_u2s_4_5(readslicef_5_4_1((conv_u2u_4_5({(vga_xy[2:0])
      , 1'b1}) + conv_u2u_4_5(vga_xy[6:3]))))) + conv_u2s_5_6({(conv_u2u_1_2(~ (vga_xy[3]))
      + conv_u2u_1_2(~ (vga_xy[7]))) , 2'b0 , (readslicef_2_1_1((conv_u2u_1_2(vga_xy[7])
      + 2'b1)))});
  assign acc_imod_sva = nl_acc_imod_sva[5:0];
  assign nl_aif_13_aif_acc_1_itm = ({1'b1 , (~ (vin[19:12]))}) + 9'b1100101;
  assign aif_13_aif_acc_1_itm = nl_aif_13_aif_acc_1_itm[8:0];
  assign nand_2_itm = ~((~((vga_xy[9]) | (vga_xy[8]) | (vga_xy[7]) | (vga_xy[6])
      | (vga_xy[5]) | (vga_xy[4]) | (vga_xy[3]) | (vga_xy[2]) | (vga_xy[1]) | (vga_xy[0])))
      & (~((vga_xy[19]) | (vga_xy[18]) | (vga_xy[17]) | (vga_xy[16]) | (vga_xy[15])
      | (vga_xy[14]) | (vga_xy[13]) | (vga_xy[12]) | (vga_xy[11]) | (vga_xy[10]))));
  assign or_itm = (if_acc_svs[3]) | (if_acc_svs[2]) | (if_acc_svs[1]) | (if_acc_svs[0]);
  assign or_dcpl_4 = ~((~((red_xy_1_sva_dfm_3[9]) | (red_xy_1_sva_dfm_3[8]) | (red_xy_1_sva_dfm_3[7])
      | (red_xy_1_sva_dfm_3[6]) | (red_xy_1_sva_dfm_3[5]) | (red_xy_1_sva_dfm_3[4])
      | (red_xy_1_sva_dfm_3[3]) | (red_xy_1_sva_dfm_3[2]) | (red_xy_1_sva_dfm_3[1])
      | (red_xy_1_sva_dfm_3[0]) | (red_xy_0_sva_dfm_3[9]) | (red_xy_0_sva_dfm_3[8])
      | (red_xy_0_sva_dfm_3[7]) | (red_xy_0_sva_dfm_3[6]) | (red_xy_0_sva_dfm_3[5])
      | (red_xy_0_sva_dfm_3[4]) | (red_xy_0_sva_dfm_3[3]) | (red_xy_0_sva_dfm_3[2])
      | (red_xy_0_sva_dfm_3[1]) | (red_xy_0_sva_dfm_3[0]))) & (readslicef_5_1_4((({1'b1
      , (~ acc_8_0_sva_dfm_1_mx0)}) + 5'b101))));
  assign or_dcpl_5 = ~((~((blue_xy_1_sva_dfm_3[9]) | (blue_xy_1_sva_dfm_3[8]) | (blue_xy_1_sva_dfm_3[7])
      | (blue_xy_1_sva_dfm_3[6]) | (blue_xy_1_sva_dfm_3[5]) | (blue_xy_1_sva_dfm_3[4])
      | (blue_xy_1_sva_dfm_3[3]) | (blue_xy_1_sva_dfm_3[2]) | (blue_xy_1_sva_dfm_3[1])
      | (blue_xy_1_sva_dfm_3[0]) | (blue_xy_0_sva_dfm_3[9]) | (blue_xy_0_sva_dfm_3[8])
      | (blue_xy_0_sva_dfm_3[7]) | (blue_xy_0_sva_dfm_3[6]) | (blue_xy_0_sva_dfm_3[5])
      | (blue_xy_0_sva_dfm_3[4]) | (blue_xy_0_sva_dfm_3[3]) | (blue_xy_0_sva_dfm_3[2])
      | (blue_xy_0_sva_dfm_3[1]) | (blue_xy_0_sva_dfm_3[0]))) & (readslicef_5_1_4((({1'b1
      , (~ acc_8_1_sva_dfm_1_mx0)}) + 5'b101))));
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      red_xy_1_sva_dfm_4 <= 10'b0;
      blue_xy_1_sva_dfm_4 <= 10'b0;
      land_12_lpi_1_dfm_1 <= 1'b0;
      land_14_lpi_1_dfm_1 <= 1'b0;
      acc_8_0_sva_dfm_2 <= 4'b0;
      acc_8_1_sva_dfm_2 <= 4'b0;
      red_xy_0_sva_dfm_3 <= 10'b0;
      red_xy_1_sva_dfm_3 <= 10'b0;
      blue_xy_0_sva_dfm_3 <= 10'b0;
      blue_xy_1_sva_dfm_3 <= 10'b0;
      land_4_lpi_1_dfm_1 <= 1'b0;
      land_2_lpi_1_dfm_1 <= 1'b0;
      main_stage_0_2 <= 1'b0;
      main_stage_0_3 <= 1'b0;
      reg_deltay_square_red_acc_psp_sva_tmp <= 1'b0;
      reg_deltay_square_blue_acc_psp_sva_tmp <= 1'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({vout_rsc_mgc_out_stdreg_d , ({(signext_10_1(~((readslicef_11_1_10((({1'b1
            , (~ (deltay_square_red_acc_1_itm[10:1]))}) + 11'b101001))) | (deltay_square_red_acc_1_itm[11])
            | (~ land_12_lpi_1_dfm_1) | land_13_lpi_1_dfm))) , 10'b0 , ({{9{land_13_lpi_1_dfm}},
            land_13_lpi_1_dfm})})}, main_stage_0_3);
        red_xy_1_sva_dfm_4 <= red_xy_1_sva_dfm_4_mx0;
        blue_xy_1_sva_dfm_4 <= blue_xy_1_sva_dfm_4_mx0;
        land_12_lpi_1_dfm_1 <= ~((readslicef_11_1_10((({1'b1 , (~ (deltax_square_red_acc_1_itm[10:1]))})
            + 11'b101001))) | (deltax_square_red_acc_1_itm[11]));
        land_14_lpi_1_dfm_1 <= ~((readslicef_11_1_10((({1'b1 , (~ (deltax_square_blue_acc_1_itm[10:1]))})
            + 11'b101001))) | (deltax_square_blue_acc_1_itm[11]));
        acc_8_0_sva_dfm_2 <= acc_8_0_sva_dfm_1_mx0 & ({{3{main_stage_0_2}}, main_stage_0_2})
            & ({{3{or_itm}}, or_itm});
        acc_8_1_sva_dfm_2 <= acc_8_1_sva_dfm_1_mx0 & ({{3{main_stage_0_2}}, main_stage_0_2})
            & ({{3{or_itm}}, or_itm});
        red_xy_0_sva_dfm_3 <= red_xy_0_sva_dfm_2_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        red_xy_1_sva_dfm_3 <= red_xy_1_sva_dfm_4_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        blue_xy_0_sva_dfm_3 <= blue_xy_0_sva_dfm_2_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        blue_xy_1_sva_dfm_3 <= blue_xy_1_sva_dfm_4_mx0 & ({{9{main_stage_0_2}}, main_stage_0_2})
            & ({{9{nand_2_itm}}, nand_2_itm});
        land_4_lpi_1_dfm_1 <= ~((readslicef_7_1_6((conv_u2u_6_7(vin[9:4]) + 7'b1010011)))
            | (aif_13_aif_acc_1_itm[8]) | (readslicef_9_1_8((({1'b1 , (~ (vin[29:22]))})
            + 9'b1100101))));
        land_2_lpi_1_dfm_1 <= ~((aif_13_aif_acc_1_itm[8]) | (readslicef_7_1_6((conv_u2u_6_7(vin[29:24])
            + 7'b1010011))));
        main_stage_0_2 <= 1'b1;
        main_stage_0_3 <= main_stage_0_2;
        reg_deltay_square_red_acc_psp_sva_tmp <= MUX_s_1_2_2({reg_deltay_square_red_acc_psp_sva_tmp
            , (MUX_s_1_2_2({reg_deltay_square_red_acc_psp_sva_tmp , (deltay_square_red_acc_1_itm[11])},
            land_12_lpi_1_dfm_1))}, main_stage_0_3);
        reg_deltay_square_blue_acc_psp_sva_tmp <= MUX_s_1_2_2({reg_deltay_square_blue_acc_psp_sva_tmp
            , (MUX_s_1_2_2({reg_deltay_square_blue_acc_psp_sva_tmp , (deltay_square_blue_acc_1_itm[11])},
            land_14_lpi_1_dfm_1))}, main_stage_0_3);
      end
    end
  end

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


  function [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
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


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function [29:0] MUX_v_30_2_2;
    input [59:0] inputs;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[59:30];
      end
      1'b1 : begin
        result = inputs[29:0];
      end
      default : begin
        result = inputs[59:30];
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
  end
  endfunction


  function [0:0] readslicef_7_1_6;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 6;
    readslicef_7_1_6 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_s2u_1_4 ;
    input signed [0:0]  vector ;
  begin
    conv_s2u_1_4 = {{3{vector[0]}}, vector};
  end
  endfunction


  function  [4:0] conv_s2u_3_5 ;
    input signed [2:0]  vector ;
  begin
    conv_s2u_3_5 = {{2{vector[2]}}, vector};
  end
  endfunction


  function signed [5:0] conv_s2s_5_6 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_6 = {vector[4], vector};
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


  function signed [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function  [6:0] conv_u2u_6_7 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_7 = {1'b0, vector};
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
  output [7:0] volume_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  mgc_out_stdreg #(.rscid(4),
  .width(8)) volume_rsc_mgc_out_stdreg (
      .d(8'b0),
      .z(volume_rsc_z)
    );
  markers_core markers_core_inst (
      .vin(vin),
      .vga_xy(vga_xy),
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule



