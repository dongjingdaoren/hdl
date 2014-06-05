// -------------------------------------------------------------
// 
// File Name: hdlsrc\qpskhdltest\QPSK_Modulator.v
// Created: 2014-04-21 15:30:34
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: QPSK_Modulator
// Source Path: qpskhdltest/QPSK Modulator
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module QPSK_Modulator
          (
           in0,
           out0_re,
           out0_im
          );


  input   [1:0] in0;  // ufix2
  output  signed [15:0] out0_re;  // sfix16_En15
  output  signed [15:0] out0_im;  // sfix16_En15

  parameter signed [15:0] t1_re_0 = 23170;  // sfix16
  parameter signed [15:0] t1_re_1 = -23170;  // sfix16
  parameter signed [15:0] t1_re_2 = -23170;  // sfix16
  parameter signed [15:0] t1_re_3 = 23170;  // sfix16
  parameter signed [15:0] t1_im_0 = 23170;  // sfix16
  parameter signed [15:0] t1_im_1 = 23170;  // sfix16
  parameter signed [15:0] t1_im_2 = -23170;  // sfix16
  parameter signed [15:0] t1_im_3 = -23170;  // sfix16

  wire [1:0] constellationLUTaddress;  // ufix2
  wire signed [15:0] constellationLUT_t1_re [0:3];  // sfix16_En15 [4]
  wire signed [15:0] constellationLUT_t1_im [0:3];  // sfix16_En15 [4]


  assign constellationLUTaddress = in0;



  assign constellationLUT_t1_re[0] = t1_re_0;
  assign constellationLUT_t1_re[1] = t1_re_1;
  assign constellationLUT_t1_re[2] = t1_re_2;
  assign constellationLUT_t1_re[3] = t1_re_3;
  assign constellationLUT_t1_im[0] = t1_im_0;
  assign constellationLUT_t1_im[1] = t1_im_1;
  assign constellationLUT_t1_im[2] = t1_im_2;
  assign constellationLUT_t1_im[3] = t1_im_3;
  assign out0_re = constellationLUT_t1_re[constellationLUTaddress];
  assign out0_im = constellationLUT_t1_im[constellationLUTaddress];



endmodule  // QPSK_Modulator

