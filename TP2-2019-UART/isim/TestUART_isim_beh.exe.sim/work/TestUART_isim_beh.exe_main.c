/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003885379568_1164157689_init();
    work_m_00000000003756298227_1573349579_init();
    work_m_00000000000235947551_1376674007_init();
    work_m_00000000003525750583_2885315853_init();
    work_m_00000000002002011171_3865191691_init();
    work_m_00000000004226401150_0870518519_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004226401150_0870518519");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
