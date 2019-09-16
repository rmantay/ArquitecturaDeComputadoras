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
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/Rx.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};



static void Always_45_0(char *t0)
{
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

LAB0:    t1 = (t0 + 3028U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3656);
    *((int *)t2) = 1;
    t3 = (t0 + 3056);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1172U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(52, ng0);

LAB10:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1952);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1860);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 2, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2044);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2320);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2228);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2504);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2412);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);

LAB9:    xsi_set_current_line(47, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1860);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2044);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2228);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2412);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    goto LAB8;

}

static void Always_60_1(char *t0)
{
    char t9[8];
    char t33[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;

LAB0:    t1 = (t0 + 3172U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3664);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1860);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1952);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 2);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2504);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1860);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(69, ng0);
    t6 = (t0 + 1356U);
    t7 = *((char **)t6);
    t6 = ((char*)((ng2)));
    memset(t9, 0, 8);
    t10 = (t7 + 4);
    t11 = (t6 + 4);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t6);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB19;

LAB16:    if (t21 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t9) = 1;

LAB19:    t25 = (t9 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t9);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB20;

LAB21:
LAB22:    goto LAB15;

LAB9:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 1264U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t5);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB11:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 1264U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t5);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB36;

LAB37:
LAB38:    goto LAB15;

LAB13:    xsi_set_current_line(102, ng0);
    t3 = (t0 + 1264U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t5);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB57;

LAB58:
LAB59:    goto LAB15;

LAB18:    t24 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(69, ng0);

LAB23:    xsi_set_current_line(70, ng0);
    t31 = ((char*)((ng3)));
    t32 = (t0 + 1952);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 2);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB22;

LAB24:    xsi_set_current_line(76, ng0);
    t6 = (t0 + 2044);
    t7 = (t6 + 36U);
    t10 = *((char **)t7);
    t11 = (t0 + 264);
    t24 = *((char **)t11);
    t11 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t24, 32, t11, 32);
    memset(t33, 0, 8);
    t25 = (t10 + 4);
    t31 = (t9 + 4);
    t17 = *((unsigned int *)t10);
    t18 = *((unsigned int *)t9);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t25);
    t21 = *((unsigned int *)t31);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t26 = *((unsigned int *)t25);
    t27 = *((unsigned int *)t31);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t23 & t29);
    if (t30 != 0)
        goto LAB30;

LAB27:    if (t28 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t33) = 1;

LAB30:    t34 = (t33 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t33);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(81, ng0);

LAB35:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 4, t6, 32);
    t7 = (t0 + 2136);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);

LAB33:    goto LAB26;

LAB29:    t32 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(76, ng0);

LAB34:    xsi_set_current_line(77, ng0);
    t40 = ((char*)((ng5)));
    t41 = (t0 + 1952);
    xsi_vlogvar_assign_value(t41, t40, 0, 0, 2);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2320);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB33;

LAB36:    xsi_set_current_line(87, ng0);
    t6 = (t0 + 2044);
    t7 = (t6 + 36U);
    t10 = *((char **)t7);
    t11 = (t0 + 344);
    t24 = *((char **)t11);
    t11 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t24, 32, t11, 32);
    memset(t33, 0, 8);
    t25 = (t10 + 4);
    t31 = (t9 + 4);
    t17 = *((unsigned int *)t10);
    t18 = *((unsigned int *)t9);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t25);
    t21 = *((unsigned int *)t31);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t26 = *((unsigned int *)t25);
    t27 = *((unsigned int *)t31);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t23 & t29);
    if (t30 != 0)
        goto LAB42;

LAB39:    if (t28 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t33) = 1;

LAB42:    t34 = (t33 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t33);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(97, ng0);

LAB56:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 4, t6, 32);
    t7 = (t0 + 2136);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);

LAB45:    goto LAB38;

LAB41:    t32 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB42;

LAB43:    xsi_set_current_line(87, ng0);

LAB46:    xsi_set_current_line(88, ng0);
    t40 = ((char*)((ng2)));
    t41 = (t0 + 2136);
    xsi_vlogvar_assign_value(t41, t40, 0, 0, 4);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t33, 0, 8);
    t6 = (t33 + 4);
    t7 = (t5 + 4);
    t12 = *((unsigned int *)t5);
    t13 = (t12 >> 1);
    *((unsigned int *)t33) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 1);
    *((unsigned int *)t6) = t15;
    t16 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t16 & 127U);
    t17 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t17 & 127U);
    t10 = (t0 + 1356U);
    t11 = *((char **)t10);
    xsi_vlogtype_concat(t9, 8, 8, 2U, t11, 1, t33, 7);
    t10 = (t0 + 2504);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 8);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 264);
    t7 = *((char **)t6);
    t6 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t7, 32, t6, 32);
    memset(t33, 0, 8);
    t10 = (t5 + 4);
    t11 = (t9 + 4);
    t12 = *((unsigned int *)t5);
    t13 = *((unsigned int *)t9);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB50;

LAB47:    if (t21 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t33) = 1;

LAB50:    t25 = (t33 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t33);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(93, ng0);

LAB55:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 3, t6, 32);
    t7 = (t0 + 2320);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 3);

LAB53:    goto LAB45;

LAB49:    t24 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(90, ng0);

LAB54:    xsi_set_current_line(91, ng0);
    t31 = ((char*)((ng6)));
    t32 = (t0 + 1952);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 2);
    goto LAB53;

LAB57:    xsi_set_current_line(103, ng0);
    t6 = (t0 + 2044);
    t7 = (t6 + 36U);
    t10 = *((char **)t7);
    t11 = (t0 + 344);
    t24 = *((char **)t11);
    t11 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t24, 32, t11, 32);
    memset(t33, 0, 8);
    t25 = (t10 + 4);
    t31 = (t9 + 4);
    t17 = *((unsigned int *)t10);
    t18 = *((unsigned int *)t9);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t25);
    t21 = *((unsigned int *)t31);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t26 = *((unsigned int *)t25);
    t27 = *((unsigned int *)t31);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t23 & t29);
    if (t30 != 0)
        goto LAB63;

LAB60:    if (t28 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t33) = 1;

LAB63:    t34 = (t33 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t33);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB64;

LAB65:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 4, t6, 32);
    t7 = (t0 + 2136);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);

LAB66:    goto LAB59;

LAB62:    t32 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB63;

LAB64:    xsi_set_current_line(104, ng0);

LAB67:    xsi_set_current_line(105, ng0);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 1952);
    xsi_vlogvar_assign_value(t41, t40, 0, 0, 2);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB66;

}

static void Cont_113_2(char *t0)
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

LAB0:    t1 = (t0 + 3316U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3724);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
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
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 3672);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_114_3(char *t0)
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

LAB0:    t1 = (t0 + 3460U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1860);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3760);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
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
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 3680);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003756298227_3831866458_init()
{
	static char *pe[] = {(void *)Always_45_0,(void *)Always_60_1,(void *)Cont_113_2,(void *)Cont_114_3};
	xsi_register_didat("work_m_00000000003756298227_3831866458", "isim/TestRX_isim_beh.exe.sim/work/m_00000000003756298227_3831866458.didat");
	xsi_register_executes(pe);
}
