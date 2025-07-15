//=============================================================================
// Project       : UART VIP
//=============================================================================
// Filename      : test_pkg.sv
// Author        : Huy Nguyen
// Company       : NO
// Date          : 20-Dec-2021
//=============================================================================
// Description   : 
//
//
//
//=============================================================================
`ifndef GUARD_UART_TEST_PKG__SV
`define GUARD_UART_TEST_PKG__SV

package test_pkg;
  import uvm_pkg::*;
  import uart_pkg::*;
  import seq_pkg::*;
  import env_pkg::*;

  // Include your file
  `include "uart_base_test.sv"
  `include "uart_5bitdata_TXRX_test.sv"
  `include "uart_6bitdata_TXRX_test.sv"
  `include "uart_7bitdata_TXRX_test.sv"
  `include "uart_8bitdata_TXRX_test.sv"
  `include "uart_9bitdata_TXRX_test.sv"
  `include "uart_EVEN_TXRX_test.sv"
  `include "uart_ODD_TXRX_test.sv"
  `include "uart_1stopbit_TXRX_test.sv"
  `include "uart_2stopbit_TXRX_test.sv"
  `include "uart_4800_TXRX_test.sv"
  `include "uart_9600_TXRX_test.sv"
  `include "uart_19200_TXRX_test.sv"
  `include "uart_57600_TXRX_test.sv"
  `include "uart_115200_TXRX_test.sv"
  `include "uart_custom_TXRX_test.sv"

  `include "uart_5bitdata_RXTX_test.sv"
  `include "uart_6bitdata_RXTX_test.sv"
  `include "uart_7bitdata_RXTX_test.sv"
  `include "uart_8bitdata_RXTX_test.sv"
  `include "uart_9bitdata_RXTX_test.sv"
  `include "uart_EVEN_RXTX_test.sv"
  `include "uart_ODD_RXTX_test.sv"
  `include "uart_1stopbit_RXTX_test.sv"
  `include "uart_2stopbit_RXTX_test.sv"
  `include "uart_4800_RXTX_test.sv"
  `include "uart_9600_RXTX_test.sv"
  `include "uart_19200_RXTX_test.sv"
  `include "uart_57600_RXTX_test.sv"
  `include "uart_115200_RXTX_test.sv"
  `include "uart_custom_RXTX_test.sv"

  `include "uart_5bitdata_FULL_test.sv"
  `include "uart_6bitdata_FULL_test.sv"
  `include "uart_7bitdata_FULL_test.sv"
  `include "uart_8bitdata_FULL_test.sv"
  `include "uart_9bitdata_FULL_test.sv"
  `include "uart_EVEN_FULL_test.sv"
  `include "uart_ODD_FULL_test.sv"
  `include "uart_1stopbit_FULL_test.sv"
  `include "uart_2stopbit_FULL_test.sv"
  `include "uart_4800_FULL_test.sv"
  `include "uart_9600_FULL_test.sv"
  `include "uart_19200_FULL_test.sv"
  `include "uart_57600_FULL_test.sv"
  `include "uart_115200_FULL_test.sv"
  `include "uart_custom_FULL_test.sv"

  `include "uart_datawidth_mismatch_test.sv"
  `include "uart_baudrate_mismatch_test.sv"
  `include "uart_parity_mismatch_test.sv"
  `include "uart_stopwidth_mismatch_test.sv"


endpackage: test_pkg

`endif


