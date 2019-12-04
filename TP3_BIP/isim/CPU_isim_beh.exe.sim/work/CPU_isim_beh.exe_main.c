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
    work_m_00000000002053016221_1273460063_init();
    work_m_00000000004115710384_3702902938_init();
    work_m_00000000003379415906_2058220583_init();
    work_m_00000000000226616173_0035540680_init();
    work_m_00000000002249956762_2601983858_init();
    work_m_00000000004115710384_0886308060_init();
    work_m_00000000001742932285_3979377396_init();
    work_m_00000000003475350961_3508565487_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003475350961_3508565487");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
