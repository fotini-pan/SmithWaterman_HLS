// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "seq1"
#define AUTOTB_TVIN_seq1  "../tv/cdatafile/c.SmithWaterman.autotvin_seq1.dat"
// wrapc file define: "seq2"
#define AUTOTB_TVIN_seq2  "../tv/cdatafile/c.SmithWaterman.autotvin_seq2.dat"
// wrapc file define: "aligned_seq1"
#define AUTOTB_TVIN_aligned_seq1  "../tv/cdatafile/c.SmithWaterman.autotvin_aligned_seq1.dat"
#define AUTOTB_TVOUT_aligned_seq1  "../tv/cdatafile/c.SmithWaterman.autotvout_aligned_seq1.dat"
// wrapc file define: "n"
#define AUTOTB_TVOUT_n  "../tv/cdatafile/c.SmithWaterman.autotvout_n.dat"
// wrapc file define: "aligned_seq2"
#define AUTOTB_TVIN_aligned_seq2  "../tv/cdatafile/c.SmithWaterman.autotvin_aligned_seq2.dat"
#define AUTOTB_TVOUT_aligned_seq2  "../tv/cdatafile/c.SmithWaterman.autotvout_aligned_seq2.dat"
// wrapc file define: "m"
#define AUTOTB_TVOUT_m  "../tv/cdatafile/c.SmithWaterman.autotvout_m.dat"
// wrapc file define: "l"
#define AUTOTB_TVOUT_l  "../tv/cdatafile/c.SmithWaterman.autotvout_l.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "aligned_seq1"
#define AUTOTB_TVOUT_PC_aligned_seq1  "../tv/rtldatafile/rtl.SmithWaterman.autotvout_aligned_seq1.dat"
// tvout file define: "n"
#define AUTOTB_TVOUT_PC_n  "../tv/rtldatafile/rtl.SmithWaterman.autotvout_n.dat"
// tvout file define: "aligned_seq2"
#define AUTOTB_TVOUT_PC_aligned_seq2  "../tv/rtldatafile/rtl.SmithWaterman.autotvout_aligned_seq2.dat"
// tvout file define: "m"
#define AUTOTB_TVOUT_PC_m  "../tv/rtldatafile/rtl.SmithWaterman.autotvout_m.dat"
// tvout file define: "l"
#define AUTOTB_TVOUT_PC_l  "../tv/rtldatafile/rtl.SmithWaterman.autotvout_l.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			seq1_depth = 0;
			seq2_depth = 0;
			aligned_seq1_depth = 0;
			n_depth = 0;
			aligned_seq2_depth = 0;
			m_depth = 0;
			l_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{seq1 " << seq1_depth << "}\n";
			total_list << "{seq2 " << seq2_depth << "}\n";
			total_list << "{aligned_seq1 " << aligned_seq1_depth << "}\n";
			total_list << "{n " << n_depth << "}\n";
			total_list << "{aligned_seq2 " << aligned_seq2_depth << "}\n";
			total_list << "{m " << m_depth << "}\n";
			total_list << "{l " << l_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int seq1_depth;
		int seq2_depth;
		int aligned_seq1_depth;
		int n_depth;
		int aligned_seq2_depth;
		int m_depth;
		int l_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void SmithWaterman (
char seq1[100],
char seq2[100],
char aligned_seq1[100],
int* n,
char aligned_seq2[100],
int* m,
int* l);

extern "C" void AESL_WRAP_SmithWaterman (
char seq1[100],
char seq2[100],
char aligned_seq1[100],
int* n,
char aligned_seq2[100],
int* m,
int* l)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "aligned_seq1"
		aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq1, AESL_token); // data

			sc_bv<8> *aligned_seq1_pc_buffer = new sc_bv<8>[100];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'aligned_seq1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'aligned_seq1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					aligned_seq1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_aligned_seq1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: aligned_seq1
				{
					// bitslice(7, 0)
					// {
						// celement: aligned_seq1(7, 0)
						// {
							sc_lv<8>* aligned_seq1_lv0_0_99_1 = new sc_lv<8>[100];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: aligned_seq1(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								if (&(aligned_seq1[0]) != NULL) // check the null address if the c port is array or others
								{
									aligned_seq1_lv0_0_99_1[hls_map_index].range(7, 0) = sc_bv<8>(aligned_seq1_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: aligned_seq1(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aligned_seq1[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aligned_seq1[0]
								// output_left_conversion : aligned_seq1[i_0]
								// output_type_conversion : (aligned_seq1_lv0_0_99_1[hls_map_index]).to_uint64()
								if (&(aligned_seq1[0]) != NULL) // check the null address if the c port is array or others
								{
									aligned_seq1[i_0] = (aligned_seq1_lv0_0_99_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] aligned_seq1_pc_buffer;
		}

		// output port post check: "n"
		aesl_fh.read(AUTOTB_TVOUT_PC_n, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_n, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_n, AESL_token); // data

			sc_bv<32> *n_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'n', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'n', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					n_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_n, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_n))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: n
				{
					// bitslice(31, 0)
					// {
						// celement: n(31, 0)
						// {
							sc_lv<32>* n_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: n(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(n[0]) != NULL) // check the null address if the c port is array or others
								{
									n_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(n_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: n(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : n[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : n[0]
								// output_left_conversion : n[i_0]
								// output_type_conversion : (n_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(n[0]) != NULL) // check the null address if the c port is array or others
								{
									n[i_0] = (n_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] n_pc_buffer;
		}

		// output port post check: "aligned_seq2"
		aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq2, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq2, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq2, AESL_token); // data

			sc_bv<8> *aligned_seq2_pc_buffer = new sc_bv<8>[100];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'aligned_seq2', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'aligned_seq2', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					aligned_seq2_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_aligned_seq2, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_aligned_seq2))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: aligned_seq2
				{
					// bitslice(7, 0)
					// {
						// celement: aligned_seq2(7, 0)
						// {
							sc_lv<8>* aligned_seq2_lv0_0_99_1 = new sc_lv<8>[100];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: aligned_seq2(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								if (&(aligned_seq2[0]) != NULL) // check the null address if the c port is array or others
								{
									aligned_seq2_lv0_0_99_1[hls_map_index].range(7, 0) = sc_bv<8>(aligned_seq2_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: aligned_seq2(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aligned_seq2[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aligned_seq2[0]
								// output_left_conversion : aligned_seq2[i_0]
								// output_type_conversion : (aligned_seq2_lv0_0_99_1[hls_map_index]).to_uint64()
								if (&(aligned_seq2[0]) != NULL) // check the null address if the c port is array or others
								{
									aligned_seq2[i_0] = (aligned_seq2_lv0_0_99_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] aligned_seq2_pc_buffer;
		}

		// output port post check: "m"
		aesl_fh.read(AUTOTB_TVOUT_PC_m, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_m, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_m, AESL_token); // data

			sc_bv<32> *m_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'm', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'm', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					m_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_m, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_m))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: m
				{
					// bitslice(31, 0)
					// {
						// celement: m(31, 0)
						// {
							sc_lv<32>* m_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: m(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(m[0]) != NULL) // check the null address if the c port is array or others
								{
									m_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(m_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: m(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : m[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : m[0]
								// output_left_conversion : m[i_0]
								// output_type_conversion : (m_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(m[0]) != NULL) // check the null address if the c port is array or others
								{
									m[i_0] = (m_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] m_pc_buffer;
		}

		// output port post check: "l"
		aesl_fh.read(AUTOTB_TVOUT_PC_l, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_l, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_l, AESL_token); // data

			sc_bv<32> *l_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'l', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'l', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					l_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_l, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_l))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: l
				{
					// bitslice(31, 0)
					// {
						// celement: l(31, 0)
						// {
							sc_lv<32>* l_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: l(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(l[0]) != NULL) // check the null address if the c port is array or others
								{
									l_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(l_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: l(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : l[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : l[0]
								// output_left_conversion : l[i_0]
								// output_type_conversion : (l_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(l[0]) != NULL) // check the null address if the c port is array or others
								{
									l[i_0] = (l_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] l_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "seq1"
		char* tvin_seq1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_seq1);

		// "seq2"
		char* tvin_seq2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_seq2);

		// "aligned_seq1"
		char* tvin_aligned_seq1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_aligned_seq1);
		char* tvout_aligned_seq1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_aligned_seq1);

		// "n"
		char* tvout_n = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_n);

		// "aligned_seq2"
		char* tvin_aligned_seq2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_aligned_seq2);
		char* tvout_aligned_seq2 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_aligned_seq2);

		// "m"
		char* tvout_m = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_m);

		// "l"
		char* tvout_l = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_l);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_seq1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_seq1, tvin_seq1);

		sc_bv<8>* seq1_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: seq1
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: seq1(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : seq1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : seq1[0]
						// regulate_c_name       : seq1
						// input_type_conversion : seq1[i_0]
						if (&(seq1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> seq1_tmp_mem;
							seq1_tmp_mem = seq1[i_0];
							seq1_tvin_wrapc_buffer[hls_map_index].range(7, 0) = seq1_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_seq1, "%s\n", (seq1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_seq1, tvin_seq1);
		}

		tcl_file.set_num(100, &tcl_file.seq1_depth);
		sprintf(tvin_seq1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_seq1, tvin_seq1);

		// release memory allocation
		delete [] seq1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_seq2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_seq2, tvin_seq2);

		sc_bv<8>* seq2_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: seq2
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: seq2(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : seq2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : seq2[0]
						// regulate_c_name       : seq2
						// input_type_conversion : seq2[i_0]
						if (&(seq2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> seq2_tmp_mem;
							seq2_tmp_mem = seq2[i_0];
							seq2_tvin_wrapc_buffer[hls_map_index].range(7, 0) = seq2_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_seq2, "%s\n", (seq2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_seq2, tvin_seq2);
		}

		tcl_file.set_num(100, &tcl_file.seq2_depth);
		sprintf(tvin_seq2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_seq2, tvin_seq2);

		// release memory allocation
		delete [] seq2_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_aligned_seq1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_aligned_seq1, tvin_aligned_seq1);

		sc_bv<8>* aligned_seq1_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: aligned_seq1
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: aligned_seq1(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aligned_seq1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aligned_seq1[0]
						// regulate_c_name       : aligned_seq1
						// input_type_conversion : aligned_seq1[i_0]
						if (&(aligned_seq1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> aligned_seq1_tmp_mem;
							aligned_seq1_tmp_mem = aligned_seq1[i_0];
							aligned_seq1_tvin_wrapc_buffer[hls_map_index].range(7, 0) = aligned_seq1_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_aligned_seq1, "%s\n", (aligned_seq1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_aligned_seq1, tvin_aligned_seq1);
		}

		tcl_file.set_num(100, &tcl_file.aligned_seq1_depth);
		sprintf(tvin_aligned_seq1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_aligned_seq1, tvin_aligned_seq1);

		// release memory allocation
		delete [] aligned_seq1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_aligned_seq2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_aligned_seq2, tvin_aligned_seq2);

		sc_bv<8>* aligned_seq2_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: aligned_seq2
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: aligned_seq2(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aligned_seq2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aligned_seq2[0]
						// regulate_c_name       : aligned_seq2
						// input_type_conversion : aligned_seq2[i_0]
						if (&(aligned_seq2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> aligned_seq2_tmp_mem;
							aligned_seq2_tmp_mem = aligned_seq2[i_0];
							aligned_seq2_tvin_wrapc_buffer[hls_map_index].range(7, 0) = aligned_seq2_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_aligned_seq2, "%s\n", (aligned_seq2_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_aligned_seq2, tvin_aligned_seq2);
		}

		tcl_file.set_num(100, &tcl_file.aligned_seq2_depth);
		sprintf(tvin_aligned_seq2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_aligned_seq2, tvin_aligned_seq2);

		// release memory allocation
		delete [] aligned_seq2_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		SmithWaterman(seq1, seq2, aligned_seq1, n, aligned_seq2, m, l);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_aligned_seq1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_aligned_seq1, tvout_aligned_seq1);

		sc_bv<8>* aligned_seq1_tvout_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: aligned_seq1
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: aligned_seq1(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aligned_seq1[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aligned_seq1[0]
						// regulate_c_name       : aligned_seq1
						// input_type_conversion : aligned_seq1[i_0]
						if (&(aligned_seq1[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> aligned_seq1_tmp_mem;
							aligned_seq1_tmp_mem = aligned_seq1[i_0];
							aligned_seq1_tvout_wrapc_buffer[hls_map_index].range(7, 0) = aligned_seq1_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvout_aligned_seq1, "%s\n", (aligned_seq1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_aligned_seq1, tvout_aligned_seq1);
		}

		tcl_file.set_num(100, &tcl_file.aligned_seq1_depth);
		sprintf(tvout_aligned_seq1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_aligned_seq1, tvout_aligned_seq1);

		// release memory allocation
		delete [] aligned_seq1_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_n, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_n, tvout_n);

		sc_bv<32>* n_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: n
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: n(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : n[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : n[0]
						// regulate_c_name       : n
						// input_type_conversion : n[i_0]
						if (&(n[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> n_tmp_mem;
							n_tmp_mem = n[i_0];
							n_tvout_wrapc_buffer[hls_map_index].range(31, 0) = n_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_n, "%s\n", (n_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_n, tvout_n);
		}

		tcl_file.set_num(1, &tcl_file.n_depth);
		sprintf(tvout_n, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_n, tvout_n);

		// release memory allocation
		delete [] n_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_aligned_seq2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_aligned_seq2, tvout_aligned_seq2);

		sc_bv<8>* aligned_seq2_tvout_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: aligned_seq2
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: aligned_seq2(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aligned_seq2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aligned_seq2[0]
						// regulate_c_name       : aligned_seq2
						// input_type_conversion : aligned_seq2[i_0]
						if (&(aligned_seq2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> aligned_seq2_tmp_mem;
							aligned_seq2_tmp_mem = aligned_seq2[i_0];
							aligned_seq2_tvout_wrapc_buffer[hls_map_index].range(7, 0) = aligned_seq2_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvout_aligned_seq2, "%s\n", (aligned_seq2_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_aligned_seq2, tvout_aligned_seq2);
		}

		tcl_file.set_num(100, &tcl_file.aligned_seq2_depth);
		sprintf(tvout_aligned_seq2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_aligned_seq2, tvout_aligned_seq2);

		// release memory allocation
		delete [] aligned_seq2_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_m, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_m, tvout_m);

		sc_bv<32>* m_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: m
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: m(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : m[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : m[0]
						// regulate_c_name       : m
						// input_type_conversion : m[i_0]
						if (&(m[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> m_tmp_mem;
							m_tmp_mem = m[i_0];
							m_tvout_wrapc_buffer[hls_map_index].range(31, 0) = m_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_m, "%s\n", (m_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_m, tvout_m);
		}

		tcl_file.set_num(1, &tcl_file.m_depth);
		sprintf(tvout_m, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_m, tvout_m);

		// release memory allocation
		delete [] m_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_l, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_l, tvout_l);

		sc_bv<32>* l_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: l
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: l(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : l[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : l[0]
						// regulate_c_name       : l
						// input_type_conversion : l[i_0]
						if (&(l[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> l_tmp_mem;
							l_tmp_mem = l[i_0];
							l_tvout_wrapc_buffer[hls_map_index].range(31, 0) = l_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_l, "%s\n", (l_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_l, tvout_l);
		}

		tcl_file.set_num(1, &tcl_file.l_depth);
		sprintf(tvout_l, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_l, tvout_l);

		// release memory allocation
		delete [] l_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "seq1"
		delete [] tvin_seq1;
		// release memory allocation: "seq2"
		delete [] tvin_seq2;
		// release memory allocation: "aligned_seq1"
		delete [] tvin_aligned_seq1;
		delete [] tvout_aligned_seq1;
		// release memory allocation: "n"
		delete [] tvout_n;
		// release memory allocation: "aligned_seq2"
		delete [] tvin_aligned_seq2;
		delete [] tvout_aligned_seq2;
		// release memory allocation: "m"
		delete [] tvout_m;
		// release memory allocation: "l"
		delete [] tvout_l;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

