// The MIT License
//
// Copyright (c) 2017-2019 by the author(s)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
// Author(s):
//   - Andreas Oeldemann <andreas.oeldemann@tum.de>
//
// Description:
//
// AXI-Lite slave that contains control/status registers that can be
// read/written by the software running on the host computer via PCIExpress.
// Code partly generated by Xilinx Vivado peripheral generator.
//
// Description:
//
// This module provides provides an AXI Lite interface, which allows the
// software to access a single 32 bit wide register. The content of the
// register is fixed at design time and contains the following information:
//   - Bits 31-16: 0xF15E (crc16 of the string "fluent10g")
//   - Bits 15-0:  Version number
//
// The module allows the software to determine whether the FPGA is programmed
// with the correct bitstream and the version number is the expected one.

`timescale 1 ns / 1ps

`include "nt_ident_cpuregs_defines.vh"

module nt_ident_top # (
  parameter C_AXI_BASE_ADDRESS = 32'h00000000
)
(
  input wire           clk,
  input wire           rstn,

  input wire [31:0]    s_axi_awaddr,
  input wire [2:0]     s_axi_awprot,
  input wire           s_axi_awvalid,
  output wire          s_axi_awready,
  input wire [31:0]    s_axi_wdata,
  input wire [3:0]     s_axi_wstrb,
  input wire           s_axi_wvalid,
  output wire          s_axi_wready,
  output wire [1:0]    s_axi_bresp,
  output wire          s_axi_bvalid,
  input wire           s_axi_bready,
  input wire [31:0]    s_axi_araddr,
  input wire [2:0]     s_axi_arprot,
  output wire          s_axi_arready,
  input wire           s_axi_arvalid,
  output wire [31:0]   s_axi_rdata,
  output wire [1:0]    s_axi_rresp,
  output wire          s_axi_rvalid,
  input wire           s_axi_rready
);

  nt_ident_cpuregs # (
    .C_AXI_BASE_ADDRESS(C_AXI_BASE_ADDRESS)
  ) nt_ident_cpuregs_inst (
    .clk(clk),
    .rstn(rstn),

    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awport(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arready(s_axi_arready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready)
  );

endmodule
