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
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP3_BIP/DataMemory.v";
static int ng1[] = {0, 0};
static int ng2[] = {9, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};



static void Always_34_0(char *t0)
{
    char t13[8];
    char t18[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    int t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;
    int t40;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2192);
    *((int *)t2) = 1;
    t3 = (t0 + 2024);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(46, ng0);

LAB21:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 784U);
    t4 = *((char **)t2);
    xsi_vlogtype_concat(t13, 2, 2, 2U, t4, 1, t3, 1);

LAB22:    t2 = ((char*)((ng4)));
    t31 = xsi_vlog_unsigned_case_compare(t13, 2, t2, 2);
    if (t31 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng5)));
    t31 = xsi_vlog_unsigned_case_compare(t13, 2, t2, 2);
    if (t31 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);

LAB29:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(37, ng0);

LAB9:    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1472);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);

LAB10:    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    if (*((unsigned int *)t11) != 0)
        goto LAB12;

LAB11:    t12 = (t5 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB12;

LAB15:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB14;

LAB13:    *((unsigned int *)t13) = 1;

LAB14:    t15 = (t13 + 4);
    t6 = *((unsigned int *)t15);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB8;

LAB12:    t14 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB14;

LAB16:    xsi_set_current_line(39, ng0);

LAB18:    xsi_set_current_line(40, ng0);
    t16 = ((char*)((ng1)));
    t17 = (t0 + 1380);
    t20 = (t0 + 1380);
    t21 = (t20 + 44U);
    t22 = *((char **)t21);
    t23 = (t0 + 1380);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    t26 = (t0 + 1472);
    t27 = (t26 + 36U);
    t28 = *((char **)t27);
    xsi_vlog_generic_convert_array_indices(t18, t19, t22, t25, 2, 1, t28, 4, 2);
    t29 = (t18 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t19 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (!(t33));
    t35 = (t31 && t34);
    if (t35 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 4, t5, 32);
    t11 = (t0 + 1472);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 4);
    goto LAB10;

LAB19:    t36 = *((unsigned int *)t18);
    t37 = *((unsigned int *)t19);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_wait_assign_value(t17, t16, 0, *((unsigned int *)t19), t39, 0LL);
    goto LAB20;

LAB23:    xsi_set_current_line(49, ng0);

LAB30:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1060U);
    t11 = *((char **)t5);
    t5 = (t0 + 1380);
    t12 = (t0 + 1380);
    t14 = (t12 + 44U);
    t15 = *((char **)t14);
    t16 = (t0 + 1380);
    t17 = (t16 + 40U);
    t20 = *((char **)t17);
    t21 = (t0 + 968U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t18, t19, t15, t20, 2, 1, t22, 11, 2);
    t21 = (t18 + 4);
    t6 = *((unsigned int *)t21);
    t34 = (!(t6));
    t23 = (t19 + 4);
    t7 = *((unsigned int *)t23);
    t35 = (!(t7));
    t38 = (t34 && t35);
    if (t38 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    goto LAB29;

LAB25:    xsi_set_current_line(54, ng0);

LAB33:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1380);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t11 = (t0 + 1380);
    t12 = (t11 + 44U);
    t14 = *((char **)t12);
    t15 = (t0 + 1380);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    t20 = (t0 + 968U);
    t21 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t18, 16, t5, t14, t17, 2, 1, t21, 11, 2);
    t20 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t20, t18, 0, 0, 16, 0LL);
    goto LAB29;

LAB31:    t8 = *((unsigned int *)t18);
    t9 = *((unsigned int *)t19);
    t39 = (t8 - t9);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t5, t11, 0, *((unsigned int *)t19), t40, 0LL);
    goto LAB32;

}


extern void work_m_00000000002204254213_2461264495_init()
{
	static char *pe[] = {(void *)Always_34_0};
	xsi_register_didat("work_m_00000000002204254213_2461264495", "isim/PruebaCpu_isim_beh.exe.sim/work/m_00000000002204254213_2461264495.didat");
	xsi_register_executes(pe);
}
