//*** Start of Trident VAFC definition
#include "vesa_afc.h"

#ifndef _TRID_AFC
#define	_TRID_AFC

/*** Definition of current Trident VAG cards' (VAFC supported) ID
***/
#define LCD		0xa3
#define	Aladin  0xe3
#define	Dragon	0xd3

//*** Definition of Device Capabilities

#define Tri_Vendor_String "Trident Microsystems"
#define Tri_Model_ID 		9440
#define Tri_Rev_ID 			0
#define Tri_Version			ox00

#ifdef Dragon
#undef	Tri_Version
#define	Tri_Version			0xd3
#endif

#ifdef Aladin                   
#undef	Tri_Version
#define	Tri_Version			0xe3
#endif

#define Tri_Dev_Caps 		(							\
							VAFC_SUPPORTS_OVERLAY_KEY| 	\
							VAFC_SUPPORTS_OVERLAY_MASKS|\
							VAFC_SUPPORTS_OEM_API		\
							)                                                       

//*** Current Available VGA Color Space Types
#define 	Num_of_Color_Spaces		4		//The number of supported color spaces 
#define 	Supported_Color_Spaces	DWORD CoSpAr[Num_of_Color_Spaces] ={ 	\
						VAFCRGB_8_INDEXED,									\
						VAFCRGB_15A,										\
						VAFCRGB_16,											\
						VAFCRGB_24};
							
		
/* Status Codes ----------------------------------*/

#define VAFCERR_NOSUPPORT_KEY_TYPE		(VAFCERR_MAX_ERRORS+1)	/*Key type was recognized, but not supported*/
#define VAFCERR_NOSUPPORT_PCLK_DELAY	(VAFCERR_MAX_ERRORS+2)    /*Recognized pclk delay not supported*/
#define VAFCERR_NOSUPPORT_CLK_PHASE		(VAFCERR_MAX_ERRORS+3)    /*Recognized clock phase can not be changed*/
#define VAFCERR_NOSUPPORT_CLK_POL		(VAFCERR_MAX_ERRORS+4)	/*Selected Clock polarity can not be changed*/
#define VAFCERR_NOSUPPORT_PXL_OUT		(VAFCERR_MAX_ERRORS+5)	/*Pixel Data enable/disable can not be changed*/
#define VAFCERR_NOSUPPORT_SYNC			(VAFCERR_MAX_ERRORS+6)	/*Known sync can not be changed*/
#define VAFCERR_NOSUPPORT_GRAPHICS_INFO	(VAFCERR_MAX_ERRORS+7)  /* Get graphics information is not supported */	
#define VAFCERR_NOSUPPORT_PREFERRED_SETUP (VAFCERR_MAX_ERRORS+8)  /* Get preferred setup is not supported */
#define VAFCERR_INVALID_KEY_TYPE		(VAFCERR_MAX_ERRORS+9)	/*Key type was unknown*/
#define VAFCERR_INVALID_CLK_ATTRIB		(VAFCERR_MAX_ERRORS+10)	/*Unknown clock attribute*/
#define VAFCERR_INVALID_CLK				(VAFCERR_MAX_ERRORS+11)	/*Unknown clk*/
#define VAFCERR_INVALID_PCLK_DELAY		(VAFCERR_MAX_ERRORS+12)	/*Unknown pixel clock delay*/
#define VAFCERR_INVALID_SYNC			(VAFCERR_MAX_ERRORS+13)	/*Unknown sync*/

#define FC_CONNECTED					(VAFCERR_MAX_ERRORS+14)   /* FC connected physically */
#define VAFC_CONNECTED					(VAFCERR_MAX_ERRORS+15)	/* VAFC Connected physically */
#define VAFC_DRIVER_UNINSTALLED			(VAFCERR_MAX_ERRORS+16)	/* Can't find VAFC Driver */
#define VAFC_LCD_WITHOUT_VLORPCIBUS     (VAFCERR_MAX_ERRORS+17) /* VAFC on LCD not with VL or PCI */

#define VAFCERR_NOTTRID_VGA				(VAFCERR_MAX_ERRORS+18)	/* Not a trident VGA card */
#define VAFCERR_NOSUPPORT_SET_PXLOUT    (VAFCERR_MAX_ERRORS+19)	/* The pixel out bit should always be 0, i.e. disabled */
/*
 * The following define the type of keying the VGA card will do.
 * Tell the keying mechanism when to enable the video and vga
 * These parameters will be used by the following message commands:
 *	DRV_VAFC_GET_KEY_TYPE
 *  DRV_VAFC_SET_KEY_TYPE
 */
#define VAFCVGA						(VAFCESCAPE|0x0)		//VGA port only
#define VAFCCOLOR_AND_VIDEO			(VAFCESCAPE|0x1)		//Video key & Color key
#define VAFCCOLOR_AND_NOT_VIDEO		(VAFCESCAPE|0x2)		//Color key & ~Video key
#define VAFCCOLOR					(VAFCESCAPE|0x3)		//Color key
#define VAFCNOT_COLOR_AND_VIDEO		(VAFCESCAPE|0x4)		//~Color key & Video key
#define VAFCVIDEO					(VAFCESCAPE|0x5)		//Video key
#define VAFCCOLOR_XOR_VIDEO			(VAFCESCAPE|0x6)		//Color key xor Video key
#define VAFCCOLOR_OR_VIDEO			(VAFCESCAPE|0x7)		//Color key | Video key
#define VAFCNOT_COLOR_AND_NOT_VIDEO	(VAFCESCAPE|0x8)		//~Color key & ~Video key
#define VAFCCOLOR_XNOR_VIDEO		(VAFCESCAPE|0x9)		//Color key xnor Video key
#define VAFCNOT_VIDEO				(VAFCESCAPE|0xa)		//~Video key
#define VAFCCOLOR_OR_NOT_VIDEO      (VAFCESCAPE|0xb)		//Color key | ~Video key
#define VAFCNOT_COLOR               (VAFCESCAPE|0xc)		//~Color key
#define VAFCNOT_COLOR_OR_VIDEO      (VAFCESCAPE|0xd)		//~Color key | Video key
#define VAFCNOT_COLOR_OR_NOT_VIDEO  (VAFCESCAPE|0xe)		//~Color key | ~Video key
#define VAFCVIDEO_PORT              (VAFCESCAPE|0xf)		//Video port only

/*
 * The following definitions defines the amount of delay to make the 
 * pixel clock with respect to the pixel data
 * These parameters will be used by the following message commands:
 *	DRV_VAFC_GET_PCLK_DELAY
 *  DRV_VAFC_SET_PCLK_DELAY
 */
#define VAFCPIXEL_DELAY_0			(VAFCESCAPE|0x0)		//0 ns delay
#define VAFCPIXEL_DELAY_4			(VAFCESCAPE|0x1)		//4 ns delay
#define VAFCPIXEL_DELAY_8			(VAFCESCAPE|0x2)		//8 ns delay
#define VAFCPIXEL_DELAY_12			(VAFCESCAPE|0x3)		//12 ns delay

/*
 * The following definitions defines the Different polarities and phase
 * of clocks that can be set
 * The first group tells whether the clock will be inverted or not and the phase
 * 	they can be ORed only on the output or getting of info, not on the setting.
 * The second group select the clock to modify
 * These parameters will be used by the following message commands:
 *	DRV_VAFC_GET_CLK
 *	DRV_VAFC_SET_CLK
 */
#define	VAFCCLK_INVERTED			(VAFCESCAPE|0x1)
#define	VAFCCLK_NORMAL				(VAFCESCAPE|0x2)
#define VAFCCLK_0_PHASE				(VAFCESCAPE|0x4)
#define VAFCCLK_180_PHASE			(VAFCESCAPE|0x8)

//Definition of the clocks
#define VAFCDCLK_OUT				(VAFCESCAPE|0x0)		//Select the DCLK output polarity
#define VAFCVCLK_IN					(VAFCESCAPE|0x1)		//Select the VCLK input polarity
#define VAFCSF_INPUT_MODE_CLK		(VAFCESCAPE|0x2)		//Select the Standard feature connector 
															//input mode clock polarity

/*
 * The following definitions defines the SYNCs and whether or not they will
 * be set before or after AFC processing
 *  The first group is to tell if it is going to be sent before or after
 * the second group is to select the SYNC
 * These parameters will be used by the following message commands:
 *	DRV_VAFC_GET_SYNC_AFCPROS
 *	DRV_VAFC_SET_SYNC_AFCPROS
 */
#define	VAFCSYNC_BEFORE				(VAFCESCAPE|0x0)
#define	VAFCSYNC_AFTER				(VAFCESCAPE|0x1)

//Definition of the syncs
#define VAFCHSYNC_OUT				(VAFCESCAPE|0x0)		//Select the HSYNC


/* Interface messages -----------------------------*/

/*
 * Message: DRV_VAFC_GET_KEY_TYPE
 * LParam1: (LPARAM)(unsigned long far *) &dwKeyType
 * LParam2: (LPARAM) 0L;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to determine the current keying mode of the 
 * VGA graphics subsystem.
 */
#define DRV_VAFC_GET_KEY_TYPE		(DRV_VAFC_VENDOR_START +0)

/*
 * Message: DRV_VAFC_SET_KEY_TYPE
 * LParam1: (LPARAM)(unsigned long) dwKeyType
 * LParam2: (LPARAM) 0L;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 * The video application or driver uses this message to set the current keying mode of the 
 * VGA graphics subsystem.
 */
#define DRV_VAFC_SET_KEY_TYPE		(DRV_VAFC_VENDOR_START +1)

/*
 * Message: DRV_VAFC_GET_PCLK_DELAY
 * LParam1: (LPARAM)(unsigned long far *) &dwDelay
 * LParam2: (LPARAM) 0L;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to determine the current delay of the 
 * pixel clock.  Delay means the delay of the pixel clock with respect to pixel data.
 */
#define DRV_VAFC_GET_PCLK_DELAY		(DRV_VAFC_VENDOR_START +2)

/*
 * Message: DRV_VAFC_SET_PCLK_DELAY
 * LParam1: (LPARAM)(unsigned long) dwDelay
 * LParam2: (LPARAM) 0L;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to set the current delay of the 
 * pixel clock.
 */
#define DRV_VAFC_SET_PCLK_DELAY		(DRV_VAFC_VENDOR_START +3)
                  
/*
 * Message: DRV_VAFC_GET_CLK
 * LParam1: (LPARAM)(unsigned long) dwClock;
 * LParam2: (LPARAM)(unsigned long far *) &dwAttrib;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to determine the current polarity or phase of the 
 * clock.  dwAttrib will contain the ORed bits telling the polarity and phase.
 */
#define DRV_VAFC_GET_CLK			(DRV_VAFC_VENDOR_START +4)

/*
 * Message: DRV_VAFC_SET_CLK
 * LParam1: (LPARAM)(unsigned long) dwClock;
 * LParam2: (LPARAM)(unsigned long) dwAttrib;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to set the current polarity or phase of the 
 * clock.
 */
#define DRV_VAFC_SET_CLK			(DRV_VAFC_VENDOR_START + 5)

/*
 * Message: DRV_VAFC_GET_SYNC_AFCPROS
 * LParam1: (LPARAM)(unsigned long) dwSync;
 * LParam2: (LPARAM)(unsigned long far *) &dwBefore_After;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to determine whether the SYNC signal
 * output is set before AFC processing or after AFC processing.
 */
#define DRV_VAFC_GET_SYNC_AFCPROS	(DRV_VAFC_VENDOR_START +6)
                  
/*
 * Message: DRV_VAFC_SET_SYNC_AFCPROS
 * LParam1: (LPARAM)(unsigned long) dwSync;
 * LParam2: (LPARAM)(unsigned long) dwBefore_After;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 * The video application or driver uses this message to set whether the SYNC signal
 * output is set before AFC processing or after AFC processing.
 */
#define DRV_VAFC_SET_SYNC_AFCPROS	(DRV_VAFC_VENDOR_START +7)

/*
 * Message: DRV_VAFC_GET_PXL_OUT
 * LParam1: (LPARAM)(BOOL far *) &dwTF;
 * LParam2: (LPARAM) 0L;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to determine whether the pixel data bus
 * enable control in AFC mode is disabled all the time or only when EVIDEO# is low.
 */
#define DRV_VAFC_GET_PXL_OUT		(DRV_VAFC_VENDOR_START +8)

/*
 * Message: DRV_VAFC_SET_PXL_OUT
 * LParam1: (LPARAM)(BOOL) dwTF;
 * LParam2: (LPARAM) 0L;
 *
 * LRESULT: Non-zero if successful, or zero if the call failed.  Use the DRV_VAFC_GET_ERROR
 *			message to get the error code 
 *
 * The video application or driver uses this message to set whether the pixel data bus
 * enable control in AFC mode is disabled all the time or only when EVIDEO# is low.
 */
#define DRV_VAFC_SET_PXL_OUT		(DRV_VAFC_VENDOR_START +9)

/*
 * Following definitions are for DRV_VAFC_GET/SET_OVERLAY_COLOR_INFO
 * LPARAM2 is a operational instruction with one of following values..
*/ 
#define	OVERLAY_KEY_ONLY		0x00000001
#define	OVERLAY_MASK_ONLY		0x00000002
#define	OVERLAY_KEY_AND_MASK	0x00000004

/*
 * Following definition are for DRV_VAFC_GET/SET_CLK
 * LPARAM1 is a Colck controls structure and LPARAM2 is a operational instruction.
*/
typedef struct tagVAFCCLK_CONTROLS {
	unsigned char	SFC_CLK_POLARITY;	/* Standard FC input mode clock polarity selection */
	unsigned char	DCLK_PHASE;			/* DCLK phase selection, available only when DCLK / 2 */
	unsigned char	DCLK_POLARITY;		/* DCLK output polarity */
	unsigned char	VCLK_POLARITY;		/* VCLK input polarity */
} VAFCCLK_CONTROLS;
typedef VAFCCLK_CONTROLS _far *LPVAFCCLK_CONTROLS;

#define DO_SFC_CLK_POLARITY		0x00000001
#define DO_DCLK_PHASE			0x00000002
#define DO_DCLK_POLARITY		0x00000004
#define DO_VCLK_POLARITY		0x00000008
#define DO_ALL					0x00000010

/*
 * Following definition is for Memory Mapping mode register access
 */
typedef struct tagVGAMMIO {
	BOOL 	bEnabled;
	LPSTR	lpMMIOBase;
} VGAMMIO;
typedef VGAMMIO _far *LPVGAMMIO;

#endif //*** End of Trident VAFC defition
