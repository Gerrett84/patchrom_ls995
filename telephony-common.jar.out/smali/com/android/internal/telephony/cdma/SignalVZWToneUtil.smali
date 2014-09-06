.class public Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;
.super Ljava/lang/Object;
.source "SignalVZWToneUtil.java"


# static fields
.field public static final CDMA_INVALID_TONE:I = -0x1

.field public static final IS95_CONST_IR_ALERT_HIGH:I = 0x1

.field public static final IS95_CONST_IR_ALERT_LOW:I = 0x2

.field public static final IS95_CONST_IR_ALERT_MED:I = 0x0

.field public static final IS95_CONST_IR_SIGNAL_IS54B:I = 0x2

.field public static final IS95_CONST_IR_SIGNAL_ISDN:I = 0x1

.field public static final IS95_CONST_IR_SIGNAL_TONE:I = 0x0

.field public static final IS95_CONST_IR_SIGNAL_USR_DEFD_ALERT:I = 0x4

.field public static final IS95_CONST_IR_SIG_IS54B_L:I = 0x1

.field public static final IS95_CONST_IR_SIG_IS54B_NO_TONE:I = 0x0

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_L:I = 0x7

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SLS:I = 0xa

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SS:I = 0x8

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SSL:I = 0x9

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_S_X4:I = 0xb

.field public static final IS95_CONST_IR_SIG_IS54B_PPP:I = 0xc

.field public static final IS95_CONST_IR_SIG_IS54B_SLS:I = 0x5

.field public static final IS95_CONST_IR_SIG_IS54B_SS:I = 0x2

.field public static final IS95_CONST_IR_SIG_IS54B_SSL:I = 0x3

.field public static final IS95_CONST_IR_SIG_IS54B_SS_2:I = 0x4

.field public static final IS95_CONST_IR_SIG_IS54B_S_X4:I = 0x6

.field public static final IS95_CONST_IR_SIG_ISDN_INTGRP:I = 0x1

.field public static final IS95_CONST_IR_SIG_ISDN_NORMAL:I = 0x0

.field public static final IS95_CONST_IR_SIG_ISDN_OFF:I = 0xf

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_3:I = 0x3

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_5:I = 0x5

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_6:I = 0x6

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_7:I = 0x7

.field public static final IS95_CONST_IR_SIG_ISDN_PING:I = 0x4

.field public static final IS95_CONST_IR_SIG_ISDN_SP_PRI:I = 0x2

.field public static final IS95_CONST_IR_SIG_TONE_ABBR_ALRT:I = 0x0

.field public static final IS95_CONST_IR_SIG_TONE_ABB_INT:I = 0x3

.field public static final IS95_CONST_IR_SIG_TONE_ABB_RE:I = 0x5

.field public static final IS95_CONST_IR_SIG_TONE_ANSWER:I = 0x8

.field public static final IS95_CONST_IR_SIG_TONE_BUSY:I = 0x6

.field public static final IS95_CONST_IR_SIG_TONE_CALL_W:I = 0x9

.field public static final IS95_CONST_IR_SIG_TONE_CONFIRM:I = 0x7

.field public static final IS95_CONST_IR_SIG_TONE_DIAL:I = 0x0

.field public static final IS95_CONST_IR_SIG_TONE_INT:I = 0x2

.field public static final IS95_CONST_IR_SIG_TONE_NO_TONE:I = 0x3f

.field public static final IS95_CONST_IR_SIG_TONE_PIP:I = 0xa

.field public static final IS95_CONST_IR_SIG_TONE_REORDER:I = 0x4

.field public static final IS95_CONST_IR_SIG_TONE_RING:I = 0x1

.field public static final TAPIAMSSCDMA_SIGNAL_PITCH_UNKNOWN:I

.field private static hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    .line 118
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v5, v3, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v5, v3, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v5, v3, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v5, v3, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v5, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v4, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v5, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v5, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v4, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v5, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v4, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v5, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v4, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v3, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v3, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v3, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v4, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v5, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v3, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v4, v5}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v5, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v3, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v4, v4}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v5, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v3, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v4, v7}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v3, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v4, v4, v6}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v4, v4, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {v6, v3, v3}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v6, v3, v1}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 461
    return-void
.end method

.method public static getAudioToneFromSignalInfo(III)I
    .locals 3
    .parameter "signalType"
    .parameter "alertPitch"
    .parameter "signal"

    .prologue
    .line 104
    sget-object v1, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->hm:Ljava/util/HashMap;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SignalVZWToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 106
    const/4 v1, -0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static signalParamHash(III)Ljava/lang/Integer;
    .locals 3
    .parameter "signalType"
    .parameter "alertPitch"
    .parameter "signal"

    .prologue
    const/16 v0, 0x100

    .line 87
    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    .line 98
    const/4 p1, 0x0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    mul-int/lit16 v1, p0, 0x100

    mul-int/lit16 v1, v1, 0x100

    mul-int/lit16 v2, p1, 0x100

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method