/**********************************************************************************************
	*	VESA_AFC.H	
	*	In term of VESA Advanced Feature Connector (VAFC) Software Interface Proposal
	*	Version:		1.0P 
	*	Revision:		0.09
	*	Revision date:	April 13, 1994
	*	This header file defines the interface that a VAFC-compliant graphics subsystem
	*	must supply. It contains the VAFC standard preprocessor definition, type and 
	*	structure definitions, and API messages.
**********************************************************************************************/
#ifndef	_VESA_AFC
#define	_VESA_AFC

/*** Status codes ***/
#define VAFCERR_NONE					0  /* No errors have occurred */
#define VAFCERR_GENERAL_FAILURE			1  /* General failure */
#define VAFCERR_NOSUPPORT_COLORSPACE	2  /* Color space not supported */
#define VAFCERR_NOSUPPORT_BUSWIDTH		3  /* Bus width configuration not supported */
#define VAFCERR_NOSUPPORT_ESCAPECODE	4  /* Escape code not supported */
#define VAFCERR_NOSUPPORT_CLOCKING		5  /* Clocking mode not supported */
#define VAFCERR_NOSUPPORT_DATAMODE		6  /* Does not support synch/asynch data mode */
#define VAFCERR_NOSUPPORT_OVERLAYKEY	7  /* Graphics subsystem does not support overlay keying -- overlay key ignored */	
#define VAFCERR_NOSUPPORT_POSITION		8  /* Graphics subsystem does not support new video position */
#define VAFCERR_NOSUPPORT_EXTENDED_MODE	9  /* The graphics subsystem does not support the VAFC extended mode */
#define VAFCERR_INVALID_OVERLAY_KEY		10 /* The chosen overlay color key is invalid for the current graphics color space format */
#define VAFCERR_INVALID_POSITION		11 /* The chosen window position is invalid */
#define VAFCERR_INVALID_SIZE			12 /* The chosen window size is invalid */ 
#define VAFCERR_INCOMPLETE_LIST			13 /* The color space format list is incomplete */
#define VAFCERR_INVALID_STRUCTURE		14 /* The passed sturcture's size is invalid for the current graphics color space format */
#define VAFCERR_NOT_WORD_BOUNDARY		15 /* The video position/size is not on a word (16-bit) boundary */
#define VAFCERR_NOT_DWORD_BOUNDARY		16 /* The video position/size is not on a double word boundary */
#define VAFCERR_NOT_QWORD_BOUNDARY		17 /* The video position/size is not on a quad word boundary */
#define VAFCERR_NOT_DQWORD_BOUNDARY		18 /* The video position/size is not on a double-quad word boundary */
#define VAFCERR_MAX_ERRORS				19 /* Number of error codes, for string table manipulation */

/*** Vendor string length ***/
#define	MAX_VENDOR_LEN					63 /* Maximum characters in the VESA vendor string */

/*** VAVI Devices ***/
#define	VIDEO_INPUT			0x0001	/* Video input device -- UNUSED */	
#define	GRAPHIC_PORT		0x0002	/* Graphics device -- UNUSED */
#define	VIDEO_COMPRESSOR	0x0004	/* Video compressor */
#define	VIDEO_DECOMPRESSOR	0x0008	/* Video decompressor -- UNUSED */
#define	VAFC_DEVICE			0x0010	/* VAFC device -- ALWAYS use the code !!! */
#define	ALL_DEVICES			0xffff	/* All VAVI devices -- UNUSED */

/*** Device Capabilities ***/
#define VAFC_SUPPORTS_OVERLAY_KEY		0x00000001	/* Device supports overlay color keying */
#define VAFC_SUPPORTS_OVERLAY_MASKS		0x00000002	/* Device supports overlay masks */
#define VAFC_SUPPORTS_EXTENDED_QUERY	0x00000004	/* Device supports extended mode GET call */
#define VAFC_SUPPORTS_EXTENDED_SETUP	0x00000008	/* Device supports extended mode SET call */
#define VAFC_SUPPORTS_POSITIONING		0x00000010	/* Device supports window positioning */
#define VAFC_SUPPORTS_OEM_API			0x00000020	/* Device has an OEM-specific API */

/*** Alignment flags
 *	If none of the following is specified, it should be assumed that the VAFC driver and
 *	device support BYTE alignment.
***/                             
#define VAFC_SUPPORTS_WORD_ALIGN		0x00000040	/* Device supports word (16-bit) boundary alignment */
#define VAFC_SUPPORTS_DWORD_ALIGN		0x00000080	/* Device supports double word boundary alignment */
#define VAFC_SUPPORTS_QWORD_ALIGN		0x00000100	/* Device supports quad word boundary alignment */
#define VAFC_SUPPORTS_DQWORD_ALIGN		0x00000200	/* Device supports double-quad word boundary alignment */

/*** The following device capabilities mask is used to determine the number of color space
 *	formats the device supports. This can be used when using the message 
 *	DRV_VAFC_QUERY_COLOR_SPACE.
***/
#define VAFC_COLOR_SPACES_MASK			0xff000000	/* Definition to mask the number of color spaces */

/*** Vendor information block ***/
typedef struct tagVESADEVICECAPS {
	unsigned long	dwSize;						/* Size of this structure */
	unsigned long	dwStructRevID;				/* Structure revison ID = 0x0100 */
	char			szVendor[MAX_VENDOR_LEN+1];	/* Vendor string -- assigned by individual companies */			
	unsigned long	dwModelID;					/* Vendor specific Device ID */
	unsigned long	dwRevID;					/* Vendor specific revison ID */
	unsigned short	wDeviceType;				/* VESA registered device type */
	unsigned long	dwDeviceCaps;				/* Device capabilities field */
	unsigned long	dwReserved1;				/* Unused by VAFC, reserved for VMC usage */
	unsigned short	wReserved2;					/* Unused by VAFC, reserved for VMC usage */
} VESA_DEVICECAPS;                                                                                            
typedef VESA_DEVICECAPS _far *LPVESA_DEVICECAPS;                                                                                            

/*** Graphics information block ***/
typedef struct tagGraphicsInfoBlock {
	unsigned long	dwSize;					/* Size of the structure */
	unsigned long	dwColorSpace;			/* Graphics buffer color space format */
	unsigned short	wActivePixelWidth;		/* Number of active pixels on the screen */					
	unsigned short	wActivePixelHeight;		/* Number of active lines on the screen */					
	unsigned short	wTopBorderHeight;		/* Number of lines in top border */					
	unsigned short	wBottomBorderHeight;	/* Number of lines in bottom border */					
	unsigned short	wLeftBorderHeight;		/* Number of lines in the left border */					
	unsigned short	wRightBorderHeight;		/* Number of lines in the right border */					
	unsigned short	wHorzSyncPoparity;		/* Graphics horizontal sync polarity */					
	unsigned short	wVertSyncPolarity;		/* Graphics vertical sync polarity */	
	unsigned short	fInterlaced;			/* Interlaced status -- TRUE/FALSE flag */					
} VAFCGRAPHICS_INFO;
typedef VAFCGRAPHICS_INFO _far *LPVAFCGRAPHICS_INFO;	                        

/*** Extended mode information block ***/
typedef struct tagExtendedModeInfoBlock {
	unsigned long	dwSize;					/* Size of the structure */
	unsigned short	wFIFOSize;				/* FIFO size, in bytes */	
	unsigned short	wFullLevel;				/* Full Level of FIFO, in bytes */					
} VAFCEXTENDED_INFO;
typedef VAFCEXTENDED_INFO _far *LPVAFCEXTENDED_INFO;

/*** Setup controls ***/

/*** VAFCESCAPE
 *	allows vendors who control both side of the interface to define VENDOR SPECIFIC 
 *	parameters. If a parameter ANDed with VAFCESCAPE returns a none-zero result, the
 *	option is VENDOR SPECIFIC. If the VAFC driver does not support VAFCESCAPE, it should
 *	return VAFC_NOSUPPORT_ESCAPECODE.
 *	Vendor specific parameters have to be handled on a vendor-by-vendor basis. To do this,
 *	it is assumed that the application and/or driver provider will get the necessory VAFC
 *	vendor-specific interface documents and APIs from the vendor itself.
***/
#define VAFCESCAPE		0x80000000		/* User defined */

/*** The following define the color space formats for data crossing the VAFC connector.
 *	The default format is VAFCRGB_8_INDEXED. These same definitions are used by the VAFC
 *	driver to specify the color space format of the graphics buffer in the current graphics
 *	mode.
***/
#define VAFCRGB_8_INDEXED	0x00000001	/* Standard 8 bits indexed color */
#define VAFCRGB_15A			0x00000002	/* 16 bits aRGB, organized as 1:5:5:5 */
#define VAFCRGB_16			0x00000004	/* 16 bits RGB, organized as 5:6:5 */
#define VAFCRGB_24			0x00000008	/* 24 bits RGB, organized as 8:8:8 */
#define VAFCRGB_32A			0x00000010	/* 32 bits aRGB, organized as 8:8:8:8 */
#define VAFCYUV_422			0x00000020	/* Packed YUV, organized as 4:2:2 */
#define VAFCYUV_444			0x00000040	/* Packed YUV, organized as 4:4:4 */
/*** The following extra color space definitions are provided as base escape code color 
 *	space. Notice, as more color space are defined that they should be ORed with the 
 *	VAFCESCAPE code.
***/
#define VAFCRGB_8			(VAFCESCAPE | 0x00000001)	/* 8 bits RGB, organized as 3:3:2 */
#define VAFCYUV_411			(VAFCESCAPE | 0x00000002)	/* Packed YUV, organized as 4:1:1 */
#define VAFCRGB_15			(VAFCESCAPE | 0x00000004)	/* 16 bits RGB, organized as x:5:5:5 */

/*** The following define the available bus transfer widths avaiable across the VAFC 
 *	connector. The directions of the transfer are explicitly described in the definitions.
 *	The default or power up state of the H/W is a tri-stated VAFCBUS_8_OUT.
***/
#define VAFCBUS_8_OUT	0x00000001	/* Standard 8-bit data out (from DAC) */	                                                                    
#define VAFCBUS_8_IN	0x00000002	/* Standard 8-bit data out (to DAC) */
#define VAFCBUS_16_OUT	0x00000004	/* 16-bit data out (from DAC) */	                                                                    
#define VAFCBUS_16_IN	0x00000008	/* 16-bit data out (to DAC) */
#define VAFCBUS_32_OUT	0x00000010	/* 32-bit data out (from DAC) */	                                                                    
#define VAFCBUS_32_IN	0x00000020	/* 32-bit data out (to DAC) */
                                         
/*** The following define the available clocking modes across the VESA_VAFC bus. The default
 *	power up state of the connector is 1x clocking mode, VAFCCLOCK_1X.
***/
#define VAFCCLOCK_1X	0x00000001	/* 1X clock mode -- dot clock provided */	                                                                    
#define VAFCCLOCK_2X	0x00000002	/* 2X clock mode -- dot clock / 2 provided */	                                                                    
#define VAFCCLOCK_4X	0x00000004	/* 4X clock mode -- dot clock / 4 provided; for 1280 mode support */	

/*** The following define the available data mode across the VAFC connector ***/
#define VAFCDATA_SYNCHRONOUS	0x00000001	/* Synchronous data mode */	                                                                    
#define VAFCDATA_ASYNCHRONOUS	0x00000002	/* Asynchronous data mode */

/*** Preferred setup structure ***/
typedef struct tagPreferredParameters {
	unsigned long	dwSize;					/* Size of the structure */
	unsigned long	dwColorSpace;			/* Color space format */
	unsigned short	dwBusWidth;				/* Bus width */					
	unsigned short	dwClockingMode;			/* Clocking mode */					
	unsigned short	dwDataMode;				/* Data mode */					
} VAFCPREFERRED_PARAMETERS;	                            
typedef VAFCPREFERRED_PARAMETERS _far *LPVAFCPREFERRED_PARAMETERS;

/*** Overlay controls ***/
/*** The values for the four bColorValueN members of the VAFCOVERLAY_CONTROLS structure
 *	depends on the color space format of the graphics subsystem:
 *
 *	If the graphics is using an 8-bit indexed color space, then the lower eight bits of
 *	bColorValue0 is the overlay color index. The rest of the variable should be masked 
 *	(value & 0xffffff00).
 *
 *	If the graphics is in a true-color modes, bColorValue0 is the red value, bColorValue1
 *	is the green value and bColorValue2 is the blue value. If the video color space format
 *	includes alpha information, then bColorValue3 is the alpha value.
 *
 *	For VAFC devices that support both overlay color keying and overlay masking, the 
 *	bColorValueN member can be used to mask each appropriate component.
 *
 *	NOTE: If the graphics sussystem does not support overlay color keying (it overlay based on
 *	image size and position) then the VAFC driver should return VAFCERR_NOSUPPORT_OVERLAYKEY
 *	to signify that the overlay key is ignored.
***/
typedef struct tagVAFCOverlayControls {
	unsigned long	dwSize;					/* Size of the structure */
	unsigned char	bColorValue0;			/* Meaning depends on graphics color space format */
	unsigned char	bColorValue1;			/* Meaning depends on graphics color space format */
	unsigned char	bColorValue2;			/* Meaning depends on graphics color space format */
	unsigned char	bColorValue3;			/* Meaning depends on graphics color space format */
	unsigned char	bMaskValue0;			/* Meaning depends on graphics color space format */
	unsigned char	bMaskValue1;			/* Meaning depends on graphics color space format */
	unsigned char	bMaskValue2;			/* Meaning depends on graphics color space format */
	unsigned char	bMaskValue3;			/* Meaning depends on graphics color space format */
} VAFCOVERLAY_CONTROLS;
typedef VAFCOVERLAY_CONTROLS _far *LPVAFCOVERLAY_CONTROLS;

/*** Interface Messages ***/
#define DRV_VAFC_GET_DEVCAPS				DRV_RESERVED
#define DRV_VAFC_GET_COLOR_SPACE			DRV_RESERVED + 1
#define DRV_VAFC_SET_COLOR_SPACE			DRV_RESERVED + 2
#define DRV_VAFC_GET_BUS_WIDTH				DRV_RESERVED + 3
#define DRV_VAFC_SET_BUS_WIDTH				DRV_RESERVED + 4
#define DRV_VAFC_GET_DATA_MODE				DRV_RESERVED + 5
#define DRV_VAFC_SET_DATA_MODE				DRV_RESERVED + 6
#define DRV_VAFC_GET_CLOCK_MODE				DRV_RESERVED + 7
#define DRV_VAFC_SET_CLOCK_MODE				DRV_RESERVED + 8
#define DRV_VAFC_GET_OVERLAY_COLOR_INFO		DRV_RESERVED + 9
#define DRV_VAFC_SET_OVERLAY_COLOR_INFO		DRV_RESERVED + 10
#define DRV_VAFC_GET_GRAPHICS_INFO			DRV_RESERVED + 11
#define DRV_VAFC_GET_WINDOW_RECT			DRV_RESERVED + 12
#define DRV_VAFC_SET_WINDOW_RECT			DRV_RESERVED + 13
#define DRV_VAFC_QUERY_COLOR_SPACES			DRV_RESERVED + 14
#define DRV_VAFC_GET_EXTENDED_SETUP			DRV_RESERVED + 15
#define DRV_VAFC_SET_EXTENDED_SETUP			DRV_RESERVED + 16
#define DRV_VAFC_GET_PREFERRED_SETUP		DRV_RESERVED + 17
#define DRV_VAFC_GET_ERROR					DRV_RESERVED + 18 

#define DRV_VAFC_VENDOR_START				DRV_RESERVED + 0x1000
#define DRV_VAFC_VENDOR_END					DRV_RESERVED + 0x1300

#endif	//*** End of standard VESA_AFC definition