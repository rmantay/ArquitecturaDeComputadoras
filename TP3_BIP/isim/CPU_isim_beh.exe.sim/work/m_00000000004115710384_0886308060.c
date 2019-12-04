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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP3_BIP/ALU.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {0, 0};



static void Always_41_0(char *t0)
{
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 1616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1812);
    *((int *)t2) = 1;
    t3 = (t0 + 1644);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 864U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 1);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1092);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);

LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(44, ng0);
    t7 = (t0 + 680U);
    t8 = *((char **)t7);
    t7 = (t0 + 772U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 16, t8, 16, t9, 16);
    t7 = (t0 + 1092);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 16);
    goto LAB13;

LAB9:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 680U);
    t4 = *((char **)t3);
    t3 = (t0 + 772U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 16, t4, 16, t7, 16);
    t3 = (t0 + 1092);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 16);
    goto LAB13;

}


extern void work_m_00000000004115710384_0886308060_init()
{
	static char *pe[] = {(void *)Always_41_0};
	xsi_register_didat("work_m_00000000004115710384_0886308060", "isim/CPU_isim_beh.exe.sim/work/m_00000000004115710384_0886308060.didat");
	xsi_register_executes(pe);
}
