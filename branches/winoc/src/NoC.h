/*
 * Noxim - the NoC Simulator
 *
 * (C) 2005-2010 by the University of Catania
 * For the complete list of authors refer to file ../doc/AUTHORS.txt
 * For the license applied to these sources refer to file ../doc/LICENSE.txt
 *
 * This file represents the top-level testbench
 */

#ifndef __NOXIMNOC_H__
#define __NOXIMNOC_H__

#include <systemc.h>
#include "Tile.h"
#include "GlobalRoutingTable.h"
#include "GlobalTrafficTable.h"
#include "Hub.h"
#include "Channel.h"

using namespace std;

SC_MODULE(NoC)
{

    // I/O Ports
    sc_in_clk clock;		// The input clock for the NoC
    sc_in < bool > reset;	// The reset signal for the NoC

    // Signals
    sc_signal <bool> req_to_east[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> req_to_west[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> req_to_south[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> req_to_north[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];

    sc_signal <bool> ack_to_east[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> ack_to_west[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> ack_to_south[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> ack_to_north[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];


    sc_signal <Flit> flit_to_east[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <Flit> flit_to_west[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <Flit> flit_to_south[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <Flit> flit_to_north[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];

    sc_signal <int> free_slots_to_east[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <int> free_slots_to_west[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <int> free_slots_to_south[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <int> free_slots_to_north[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];

    // Wireless Hub
    sc_signal <bool> req_to_hub[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> ack_to_hub[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <Flit> flit_to_hub[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];

    sc_signal <bool> req_from_hub[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <bool> ack_from_hub[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];
    sc_signal <Flit> flit_from_hub[MAX_STATIC_DIM + 1][MAX_STATIC_DIM + 1];

    // NoP
    sc_signal <NoP_data> NoP_data_to_east[MAX_STATIC_DIM][MAX_STATIC_DIM];
    sc_signal <NoP_data> NoP_data_to_west[MAX_STATIC_DIM][MAX_STATIC_DIM];
    sc_signal <NoP_data> NoP_data_to_south[MAX_STATIC_DIM][MAX_STATIC_DIM];
    sc_signal <NoP_data> NoP_data_to_north[MAX_STATIC_DIM][MAX_STATIC_DIM];

    // Matrix of tiles
    Tile *t[MAX_STATIC_DIM][MAX_STATIC_DIM];
    
    //Hub *h[MAX_HUBS];
    Hub **h;

    Channel **channel;

    // Global tables
    GlobalRoutingTable grtable;
    GlobalTrafficTable gttable;

    //---------- Mau experiment <start>
    void flitsMonitor() {

	if (!reset.read()) {
	    //      if ((int)sc_simulation_time() % 5)
	    //        return;

	    unsigned int count = 0;
	    for (int i = 0; i < GlobalParams::mesh_dim_x; i++)
		for (int j = 0; j < GlobalParams::mesh_dim_y; j++)
		    count += t[i][j]->r->getFlitsCount();
	    cout << count << endl;
	}
    }
    //---------- Mau experiment <stop>

    // Constructor

    SC_CTOR(NoC) {

	//---------- Mau experiment <start>
	/*
	   SC_METHOD(flitsMonitor);
	   sensitive(reset);
	   sensitive_pos(clock);
	 */
	//---------- Mau experiment <stop>

	// Build the Mesh
	buildMesh("config.yaml");
    }

    // Support methods
    Tile *searchNode(const int id) const;

  private:

    void buildMesh(char const * cfg_fname);

};

#endif
