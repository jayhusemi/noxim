/*****************************************************************************

  TGlobalTrafficTable.h -- Global Traffic Table definition

*****************************************************************************/

#ifndef __TGLOBAL_TRAFFIC_TABLE_H__
#define __TGLOBAL_TRAFFIC_TABLE_H__

//---------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include "NoximDefs.h"
using namespace std;

//---------------------------------------------------------------------------

// Structure used to store information into the table
struct TLocalTrafficLink
{
  int src;                    // ID of the source node (PE)
  int dst;                    // ID of the destination node (PE)
  int traffic;                // Type of traffic distribution
};

//---------------------------------------------------------------------------

class TGlobalTrafficTable
{

public:

  // The constructor by default sets valid to false
  TGlobalTrafficTable(); 

  // Load traffic table from file. Returns true if OK (and sets valid to true), false otherwise
  bool load(const char* fname);

  // Tell how many times the PE whose ID is specified is in table as source
  int occurrencesAsSource(const int id);

  // Return a random destination ID from the table given a source ID
  int randomDestinationGivenTheSource(const int src);

  // Tell if the current Traffic Table is valid
  bool isValid() { return valid; }


  // Give back the number of lines in the table
  int size() { return numberOfLines; }

private:

  vector<TLocalTrafficLink> traffic_table;
  bool valid;
  int numberOfLines;

};

//---------------------------------------------------------------------------

#endif