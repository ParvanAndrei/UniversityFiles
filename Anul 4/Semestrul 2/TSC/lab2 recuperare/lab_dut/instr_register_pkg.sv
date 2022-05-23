/***********************************************************************
 * A SystemVerilog RTL model of an instruction regisgter:
 * User-defined type definitions
 **********************************************************************/
package instr_register_pkg;
  //timeunit 1ns/1ns;

  typedef enum logic [3:0] {
  	ZERO,
    PASSA,
    PASSB,
    ADD,
    SUB,
    MULT,
    DIV,
    MOD
  } opcode_t; // definim tipurile de operatii

  typedef logic signed [31:0] operand_t; 
  typedef logic signed [63:0] result; // rezultatul care este de 64
  typedef logic [5:0] address_t; 
  
  typedef struct {
    opcode_t  opc;
    operand_t op_a;
    operand_t op_b;
    result r;
  } instruction_t; // o structura care contine operanzii operatorul si rezultatul

endpackage: instr_register_pkg
