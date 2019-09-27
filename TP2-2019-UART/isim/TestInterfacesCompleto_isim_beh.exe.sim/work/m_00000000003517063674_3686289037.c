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
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/Int_Tx.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {48, 0};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {1, 0};



static void Cont_37_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1712);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3056);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 7U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 2);
    t18 = (t0 + 2996);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_39_1(char *t0)
{
    char t12[8];
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
    char *t13;

LAB0:    t1 = (t0 + 2656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3004);
    *((int *)t2) = 1;
    t3 = (t0 + 2684);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 932U);
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

LAB10:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1804);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1712);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1988);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1896);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(41, ng0);

LAB9:    xsi_set_current_line(42, ng0);
    t11 = ((char*)((ng1)));
    memcpy(t12, t11, 8);
    t13 = (t0 + 1712);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1896);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

}

static void Always_52_2(char *t0)
{
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;

LAB0:    t1 = (t0 + 2800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3012);
    *((int *)t2) = 1;
    t3 = (t0 + 2828);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 1528);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1712);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1804);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1896);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1988);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1712);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 1024U);
    t8 = *((char **)t7);
    t7 = (t8 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    memcpy(t15, t2, 8);
    t3 = (t0 + 1804);
    xsi_vlogvar_assign_value(t3, t15, 0, 0, 3);

LAB16:    goto LAB13;

LAB9:    xsi_set_current_line(69, ng0);

LAB18:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1896);
    t5 = (t3 + 36U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t7, 8, t8, 32);
    t14 = (t0 + 1988);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 8);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng5)));
    memcpy(t15, t2, 8);
    t3 = (t0 + 1804);
    xsi_vlogvar_assign_value(t3, t15, 0, 0, 3);
    goto LAB13;

LAB11:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 1116U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(78, ng0);

LAB22:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1896);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = (t0 + 1620);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 8);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    memcpy(t15, t2, 8);
    t3 = (t0 + 1804);
    xsi_vlogvar_assign_value(t3, t15, 0, 0, 3);

LAB21:    goto LAB13;

LAB14:    xsi_set_current_line(61, ng0);

LAB17:    xsi_set_current_line(62, ng0);
    t14 = ((char*)((ng3)));
    memcpy(t15, t14, 8);
    t16 = (t0 + 1804);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 3);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1988);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);
    goto LAB16;

LAB19:    xsi_set_current_line(76, ng0);
    t7 = ((char*)((ng5)));
    memcpy(t15, t7, 8);
    t8 = (t0 + 1804);
    xsi_vlogvar_assign_value(t8, t15, 0, 0, 3);
    goto LAB21;

}


extern void work_m_00000000003517063674_3686289037_init()
{
	static char *pe[] = {(void *)Cont_37_0,(void *)Always_39_1,(void *)Always_52_2};
	xsi_register_didat("work_m_00000000003517063674_3686289037", "isim/TestInterfacesCompleto_isim_beh.exe.sim/work/m_00000000003517063674_3686289037.didat");
	xsi_register_executes(pe);
}
