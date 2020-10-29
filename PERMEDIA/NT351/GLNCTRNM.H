//
//  glnctrnm.h
//
//  Offset definition file for exensible counter objects and counters
//
//  These "relative" offsets must start at 0 and be multiples of 2 (i.e.
//  even numbers). In the Open Procedure, they will be added to the 
//  "First Counter" and "First Help" values fo the device they belong to, 
//  in order to determine the  absolute location of the counter and 
//  object names and corresponding help text in the registry.
//
//  this file is used by the extensible counter DLL code as well as the 
//  counter name and help text definition file (.INI) file that is used
//  by LODCTR to load the names into the registry.
//
#define GLNTOBJ 0
#define IDLETIME 2
#define IDLEBASE 4
#define BUSYTIME 6
#define BUSYBASE 8
#define HBUSYTIME 10
#define HBUSYBASE 12
#define DMALOADS 14
#define DMACOUNT 16
#define VBLANKTIME 18
#define VBLANKBASE 20
