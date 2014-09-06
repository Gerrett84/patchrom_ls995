.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private dedicated:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 132
    const-string v0, "telephony.db"

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 123
    iput-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 26
    .parameter "parser"

    .prologue
    .line 617
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v10, map:Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 620
    .local v18, prof_type:Ljava/lang/String;
    if-nez v18, :cond_0

    .line 621
    const/4 v10, 0x0

    .line 739
    .end local v10           #map:Landroid/content/ContentValues;
    :goto_0
    return-object v10

    .line 623
    .restart local v10       #map:Landroid/content/ContentValues;
    :cond_0
    const-string v23, "apn"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 624
    const-string v23, "profile_type"

    const-string v24, "apn"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :goto_1
    const/16 v23, 0x0

    const-string v24, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, mcc:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 632
    .local v14, mnc:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 638
    .local v16, numeric:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 639
    .local v15, name:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, apn:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "extraid"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 642
    .local v8, extraid:Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 643
    const-string v23, "extraid"

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :goto_2
    const-string v23, "numeric"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v23, "mcc"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v23, "mnc"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v23, "name"

    const/16 v24, 0x0

    const-string v25, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v23, "apn"

    const/16 v24, 0x0

    const-string v25, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v23, "user"

    const/16 v24, 0x0

    const-string v25, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v23, "server"

    const/16 v24, 0x0

    const-string v25, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v23, "password"

    const/16 v24, 0x0

    const-string v25, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/16 v23, 0x0

    const-string v24, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 661
    .local v20, proxy:Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 662
    const-string v23, "proxy"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_1
    const/16 v23, 0x0

    const-string v24, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 665
    .local v17, port:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 666
    const-string v23, "port"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_2
    const/16 v23, 0x0

    const-string v24, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 669
    .local v13, mmsproxy:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 670
    const-string v23, "mmsproxy"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_3
    const/16 v23, 0x0

    const-string v24, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 673
    .local v12, mmsport:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 674
    const-string v23, "mmsport"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_4
    const-string v23, "mmsc"

    const/16 v24, 0x0

    const-string v25, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/16 v23, 0x0

    const-string v24, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 678
    .local v22, type:Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 679
    const-string v23, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_5
    const/16 v23, 0x0

    const-string v24, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, auth:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 684
    const-string v23, "authtype"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    :cond_6
    const/16 v23, 0x0

    const-string v24, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 688
    .local v19, protocol:Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 689
    const-string v23, "protocol"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_7
    const/16 v23, 0x0

    const-string v24, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 693
    .local v21, roamingProtocol:Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 694
    const-string v23, "roaming_protocol"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_8
    const/16 v23, 0x0

    const-string v24, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, carrierEnabled:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 699
    const-string v23, "carrier_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 704
    :cond_9
    sget-object v23, Lcom/android/providers/telephony/TelephonyProvider;->mfeatureset:Ljava/lang/String;

    const-string v24, "SPCSBASE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 706
    const/16 v23, 0x0

    const-string v24, "inactivetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, inactivetimer:Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 708
    const-string v23, "inactivetimer"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    .end local v9           #inactivetimer:Ljava/lang/String;
    :goto_3
    const/16 v23, 0x0

    const-string v24, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, bearer:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 723
    const-string v23, "bearer"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    :cond_a
    const-string v23, "TelephonyProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " extraid("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v23, "TelephonyProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " --- title("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") apn("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") type("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") \n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v23, 0x0

    const-string v24, "defaultflag"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, defaultflag:Ljava/lang/String;
    if-eqz v7, :cond_10

    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const-string v23, "defaultsetting"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    :goto_4
    const-string v23, "usercreatesetting"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    .line 737
    const/16 v23, 0x0

    const-string v24, "dedicated"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    goto/16 :goto_0

    .line 625
    .end local v3           #apn:Ljava/lang/String;
    .end local v4           #auth:Ljava/lang/String;
    .end local v5           #bearer:Ljava/lang/String;
    .end local v6           #carrierEnabled:Ljava/lang/String;
    .end local v7           #defaultflag:Ljava/lang/String;
    .end local v8           #extraid:Ljava/lang/String;
    .end local v11           #mcc:Ljava/lang/String;
    .end local v12           #mmsport:Ljava/lang/String;
    .end local v13           #mmsproxy:Ljava/lang/String;
    .end local v14           #mnc:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #numeric:Ljava/lang/String;
    .end local v17           #port:Ljava/lang/String;
    .end local v19           #protocol:Ljava/lang/String;
    .end local v20           #proxy:Ljava/lang/String;
    .end local v21           #roamingProtocol:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :cond_b
    const-string v23, "nai"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 626
    const-string v23, "profile_type"

    const-string v24, "nai"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 628
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 646
    .restart local v3       #apn:Ljava/lang/String;
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v11       #mcc:Ljava/lang/String;
    .restart local v14       #mnc:Ljava/lang/String;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #numeric:Ljava/lang/String;
    :cond_d
    const-string v23, "extraid"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 712
    .restart local v4       #auth:Ljava/lang/String;
    .restart local v6       #carrierEnabled:Ljava/lang/String;
    .restart local v9       #inactivetimer:Ljava/lang/String;
    .restart local v12       #mmsport:Ljava/lang/String;
    .restart local v13       #mmsproxy:Ljava/lang/String;
    .restart local v17       #port:Ljava/lang/String;
    .restart local v19       #protocol:Ljava/lang/String;
    .restart local v20       #proxy:Ljava/lang/String;
    .restart local v21       #roamingProtocol:Ljava/lang/String;
    .restart local v22       #type:Ljava/lang/String;
    :cond_e
    const-string v23, "inactivetimer"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 717
    .end local v9           #inactivetimer:Ljava/lang/String;
    :cond_f
    const-string v23, "TelephonyProvider"

    const-string v24, "getRow() NON sprint do not use inactivetimer"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 732
    .restart local v5       #bearer:Ljava/lang/String;
    .restart local v7       #defaultflag:Ljava/lang/String;
    :cond_10
    const-string v23, "defaultsetting"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 138
    const/high16 v6, 0x7

    .line 139
    .local v6, version:I
    const/4 v2, 0x0

    .line 141
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/apns-conf.xml"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 144
    .local v4, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 145
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 146
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 147
    const-string v7, "apns"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 148
    const/4 v7, 0x0

    const-string v8, "version"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    .line 149
    .local v3, publicversion:I
    or-int/2addr v6, v3

    .line 155
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 157
    .end local v3           #publicversion:I
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :cond_1
    :goto_0
    return v6

    .line 155
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #publicversion:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v7

    move-object v4, v5

    .line 156
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_0

    .line 150
    .end local v3           #publicversion:I
    :catch_1
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v7, "TelephonyProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "TelephonyProvider"

    const-string v8, "Can\'t get version of APN database"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    throw v7

    :catch_5
    move-exception v8

    goto :goto_4

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_3

    .line 152
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_2

    .line 150
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 262
    iget-object v8, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 263
    .local v7, r:Landroid/content/res/Resources;
    const/high16 v8, 0x10f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 264
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    const/4 v6, -0x1

    .line 266
    .local v6, publicversion:I
    :try_start_0
    const-string v8, "apns"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 267
    const/4 v8, 0x0

    const-string v9, "version"

    invoke-interface {v5, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 268
    invoke-direct {p0, p1, v5}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 276
    :goto_0
    const/4 v1, 0x0

    .line 278
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/apns-conf.xml"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 281
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 282
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 283
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 284
    const-string v8, "apns"

    invoke-static {v1, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 303
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move-object v2, v3

    .line 305
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 269
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #confreader:Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 270
    .local v4, e:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "TelephonyProvider"

    const-string v9, "Got exception while loading APN database."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8

    .line 303
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_1
    move-exception v8

    move-object v2, v3

    .line 304
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_1

    .line 297
    :catch_2
    move-exception v8

    .line 303
    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_1

    .line 300
    :catch_4
    move-exception v4

    .line 301
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "TelephonyProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while parsing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_1

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_2
    :goto_5
    throw v8

    :catch_6
    move-exception v9

    goto :goto_5

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 300
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 297
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_8
    move-exception v8

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private initDcmDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 34
    .parameter "db"

    .prologue
    .line 310
    const/16 v16, 0x0

    .line 313
    .local v16, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v31

    const-string v32, "etc/dcm_settings.xml"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v3, confFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 316
    .local v4, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 317
    .end local v4           #confreader:Ljava/io/FileReader;
    .local v5, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 318
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 319
    const-string v31, "profiles"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 323
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 326
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 327
    .local v17, prof_type:Ljava/lang/String;
    const-string v31, "profile"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v31

    if-nez v31, :cond_2

    .line 482
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    move-object v4, v5

    .line 484
    .end local v5           #confreader:Ljava/io/FileReader;
    .end local v17           #prof_type:Ljava/lang/String;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 331
    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v17       #prof_type:Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v11, map:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 333
    .local v12, mcc:Ljava/lang/String;
    const/4 v13, 0x0

    .line 334
    .local v13, mnc:Ljava/lang/String;
    const/4 v15, 0x0

    .line 335
    .local v15, numeric:Ljava/lang/String;
    const/4 v8, 0x0

    .line 336
    .local v8, extraid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 337
    .local v9, fastdormancy_param:Ljava/lang/String;
    const/4 v10, 0x0

    .line 338
    .local v10, ipmtu:Ljava/lang/String;
    const/4 v14, 0x0

    .line 340
    .local v14, mpdp:Ljava/lang/String;
    const/16 v18, 0x0

    .line 341
    .local v18, sDefault:Ljava/lang/String;
    const/16 v29, 0x0

    .line 342
    .local v29, sLte:Ljava/lang/String;
    const/16 v30, 0x0

    .line 343
    .local v30, sUmts:Ljava/lang/String;
    const/16 v26, 0x0

    .line 344
    .local v26, sHspa:Ljava/lang/String;
    const/16 v28, 0x0

    .line 345
    .local v28, sHsupa:Ljava/lang/String;
    const/16 v25, 0x0

    .line 346
    .local v25, sHsdpa:Ljava/lang/String;
    const/16 v27, 0x0

    .line 347
    .local v27, sHspap:Ljava/lang/String;
    const/16 v19, 0x0

    .line 348
    .local v19, sEdge:Ljava/lang/String;
    const/16 v24, 0x0

    .line 349
    .local v24, sGprs:Ljava/lang/String;
    const/16 v22, 0x0

    .line 350
    .local v22, sEvdo_b:Ljava/lang/String;
    const/16 v20, 0x0

    .line 351
    .local v20, sEhrpd:Ljava/lang/String;
    const/16 v21, 0x0

    .line 352
    .local v21, sEvdo:Ljava/lang/String;
    const/16 v23, 0x0

    .line 354
    .local v23, sGpass:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 356
    .local v7, eventType:I
    :goto_2
    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_7

    .line 358
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v7, v0, :cond_6

    .line 360
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "siminfo"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 362
    const/16 v31, 0x0

    const-string v32, "mcc"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    const/16 v31, 0x0

    const-string v32, "mnc"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 364
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 365
    const/16 v31, 0x0

    const-string v32, "extraid"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 367
    :cond_3
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "settings"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 369
    const/16 v31, 0x0

    const-string v32, "fastdormancy_param"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 370
    const/16 v31, 0x0

    const-string v32, "ipmtu"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 371
    const/16 v31, 0x0

    const-string v32, "mpdp"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 374
    :cond_4
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "windowSize"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 376
    const-string v31, "TelephonyProvider"

    const-string v32, "[TelephonyProvider.java]"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v31, 0x0

    const-string v32, "windefault"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 378
    const/16 v31, 0x0

    const-string v32, "lte"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 379
    const/16 v31, 0x0

    const-string v32, "umts"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 380
    const/16 v31, 0x0

    const-string v32, "hspa"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 381
    const/16 v31, 0x0

    const-string v32, "hsupa"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 382
    const/16 v31, 0x0

    const-string v32, "hsdpa"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 383
    const/16 v31, 0x0

    const-string v32, "hspap"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 384
    const/16 v31, 0x0

    const-string v32, "edge"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 385
    const/16 v31, 0x0

    const-string v32, "gprs"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 386
    const/16 v31, 0x0

    const-string v32, "evdo_b"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 387
    const/16 v31, 0x0

    const-string v32, "ehrpd"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 388
    const/16 v31, 0x0

    const-string v32, "evdo"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 389
    const/16 v31, 0x0

    const-string v32, "gpass"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 398
    :cond_5
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto/16 :goto_2

    .line 393
    :cond_6
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v7, v0, :cond_5

    .line 395
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "profile"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 401
    :cond_7
    const-string v31, "numeric"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    if-eqz v8, :cond_16

    const-string v31, "extraid"

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_3
    if-eqz v9, :cond_8

    .line 407
    const-string v31, "fastdormancy"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_8
    if-eqz v10, :cond_17

    const-string v31, "0"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_17

    const-string v31, "ipmtu"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    :goto_4
    if-eqz v14, :cond_19

    const-string v31, "1"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_19

    const-string v31, "mpdp"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    :goto_5
    if-eqz v18, :cond_9

    .line 417
    const-string v31, "windefault"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_9
    if-eqz v29, :cond_a

    .line 420
    const-string v31, "lte"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_a
    if-eqz v30, :cond_b

    .line 423
    const-string v31, "umts"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_b
    if-eqz v26, :cond_c

    .line 426
    const-string v31, "hspa"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_c
    if-eqz v28, :cond_d

    .line 429
    const-string v31, "hsupa"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_d
    if-eqz v25, :cond_e

    .line 432
    const-string v31, "hsdpa"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_e
    if-eqz v27, :cond_f

    .line 435
    const-string v31, "hspap"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_f
    if-eqz v19, :cond_10

    .line 438
    const-string v31, "edge"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_10
    if-eqz v24, :cond_11

    .line 441
    const-string v31, "gprs"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_11
    if-eqz v22, :cond_12

    .line 444
    const-string v31, "evdo_b"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_12
    if-eqz v20, :cond_13

    .line 447
    const-string v31, "ehrpd"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_13
    if-eqz v21, :cond_14

    .line 450
    const-string v31, "evdo"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_14
    if-eqz v23, :cond_15

    .line 453
    const-string v31, "gpass"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_15
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " extraid("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") : FD Setting("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "), ipmtu("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "), mpdp("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : windefault : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : lte : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : umts : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hspa : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hsupa : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hsdpa : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hspap : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : edge : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : gprs : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : evdo_b : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : ehrpd : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : evdo : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : gpass : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v31, "dcm_settings"

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 477
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v17           #prof_type:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 478
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_4
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "File not found: \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 482
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v31

    goto/16 :goto_1

    .line 404
    .end local v4           #confreader:Ljava/io/FileReader;
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v7       #eventType:I
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v9       #fastdormancy_param:Ljava/lang/String;
    .restart local v10       #ipmtu:Ljava/lang/String;
    .restart local v11       #map:Landroid/content/ContentValues;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v13       #mnc:Ljava/lang/String;
    .restart local v14       #mpdp:Ljava/lang/String;
    .restart local v15       #numeric:Ljava/lang/String;
    .restart local v17       #prof_type:Ljava/lang/String;
    .restart local v18       #sDefault:Ljava/lang/String;
    .restart local v19       #sEdge:Ljava/lang/String;
    .restart local v20       #sEhrpd:Ljava/lang/String;
    .restart local v21       #sEvdo:Ljava/lang/String;
    .restart local v22       #sEvdo_b:Ljava/lang/String;
    .restart local v23       #sGpass:Ljava/lang/String;
    .restart local v24       #sGprs:Ljava/lang/String;
    .restart local v25       #sHsdpa:Ljava/lang/String;
    .restart local v26       #sHspa:Ljava/lang/String;
    .restart local v27       #sHspap:Ljava/lang/String;
    .restart local v28       #sHsupa:Ljava/lang/String;
    .restart local v29       #sLte:Ljava/lang/String;
    .restart local v30       #sUmts:Ljava/lang/String;
    :cond_16
    :try_start_6
    const-string v31, "extraid"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 479
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v17           #prof_type:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v4, v5

    .line 480
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    .local v6, e:Ljava/lang/Exception;
    :goto_7
    :try_start_7
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while parsing \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 482
    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v31

    goto/16 :goto_1

    .line 411
    .end local v4           #confreader:Ljava/io/FileReader;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v7       #eventType:I
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v9       #fastdormancy_param:Ljava/lang/String;
    .restart local v10       #ipmtu:Ljava/lang/String;
    .restart local v11       #map:Landroid/content/ContentValues;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v13       #mnc:Ljava/lang/String;
    .restart local v14       #mpdp:Ljava/lang/String;
    .restart local v15       #numeric:Ljava/lang/String;
    .restart local v17       #prof_type:Ljava/lang/String;
    .restart local v18       #sDefault:Ljava/lang/String;
    .restart local v19       #sEdge:Ljava/lang/String;
    .restart local v20       #sEhrpd:Ljava/lang/String;
    .restart local v21       #sEvdo:Ljava/lang/String;
    .restart local v22       #sEvdo_b:Ljava/lang/String;
    .restart local v23       #sGpass:Ljava/lang/String;
    .restart local v24       #sGprs:Ljava/lang/String;
    .restart local v25       #sHsdpa:Ljava/lang/String;
    .restart local v26       #sHspa:Ljava/lang/String;
    .restart local v27       #sHspap:Ljava/lang/String;
    .restart local v28       #sHsupa:Ljava/lang/String;
    .restart local v29       #sLte:Ljava/lang/String;
    .restart local v30       #sUmts:Ljava/lang/String;
    :cond_17
    :try_start_9
    const-string v31, "ipmtu"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 482
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v17           #prof_type:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catchall_0
    move-exception v31

    move-object v4, v5

    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :goto_8
    if-eqz v4, :cond_18

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_18
    :goto_9
    throw v31

    .line 414
    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v7       #eventType:I
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v9       #fastdormancy_param:Ljava/lang/String;
    .restart local v10       #ipmtu:Ljava/lang/String;
    .restart local v11       #map:Landroid/content/ContentValues;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v13       #mnc:Ljava/lang/String;
    .restart local v14       #mpdp:Ljava/lang/String;
    .restart local v15       #numeric:Ljava/lang/String;
    .restart local v17       #prof_type:Ljava/lang/String;
    .restart local v18       #sDefault:Ljava/lang/String;
    .restart local v19       #sEdge:Ljava/lang/String;
    .restart local v20       #sEhrpd:Ljava/lang/String;
    .restart local v21       #sEvdo:Ljava/lang/String;
    .restart local v22       #sEvdo_b:Ljava/lang/String;
    .restart local v23       #sGpass:Ljava/lang/String;
    .restart local v24       #sGprs:Ljava/lang/String;
    .restart local v25       #sHsdpa:Ljava/lang/String;
    .restart local v26       #sHspa:Ljava/lang/String;
    .restart local v27       #sHspap:Ljava/lang/String;
    .restart local v28       #sHsupa:Ljava/lang/String;
    .restart local v29       #sLte:Ljava/lang/String;
    .restart local v30       #sUmts:Ljava/lang/String;
    :cond_19
    :try_start_b
    const-string v31, "mpdp"

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_5

    .line 482
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catch_4
    move-exception v31

    move-object v4, v5

    .line 483
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 482
    .end local v17           #prof_type:Ljava/lang/String;
    :catch_5
    move-exception v32

    goto :goto_9

    :catchall_1
    move-exception v31

    goto :goto_8

    .line 479
    :catch_6
    move-exception v6

    goto :goto_7

    .line 477
    :catch_7
    move-exception v6

    goto/16 :goto_6
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    const/4 v2, 0x0

    .line 791
    const-string v0, "authtype"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const-string v0, "authtype"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    :cond_0
    const-string v0, "protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    const-string v0, "protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_1
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 798
    const-string v0, "roaming_protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_2
    const-string v0, "carrier_enabled"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 801
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 803
    :cond_3
    const-string v0, "bearer"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 804
    const-string v0, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    :cond_4
    const-string v0, "usercreatesetting"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 809
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraid"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Telephony$Carriers;->isLoadableAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 813
    :cond_5
    return-void
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "db"
    .parameter "parser"

    .prologue
    .line 750
    if-eqz p2, :cond_0

    .line 754
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 756
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 757
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 758
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 759
    const-string v2, "carriers"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 767
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 787
    :cond_0
    :goto_1
    return-void

    .line 764
    .restart local v1       #row:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 767
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 781
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 782
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 767
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 783
    :catch_2
    move-exception v0

    .line 784
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 185
    const-string v1, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,profile_type TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,extraid TEXT,defaultsetting INTEGER,usercreatesetting INTEGER,sim_slot INTEGER,bearer INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->mfeatureset:Ljava/lang/String;

    const-string v2, "SPCSBASE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    const-string v1, "TelephonyProvider"

    const-string v2, "DatabaseHelper.onUpgrade(): Trying to add inactivetimer field, onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "ALTER TABLE carriers ADD COLUMN inactivetimer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    const-string v1, "CREATE TABLE dcm_settings(_id INTEGER PRIMARY KEY,numeric TEXT,extraid TEXT,fastdormancy TEXT,ipmtu INTEGER,mpdp INTEGER,windefault TEXT,lte TEXT,umts TEXT,hspa TEXT,hsupa TEXT,hsdpa TEXT,hspap TEXT,edge TEXT,gprs TEXT,evdo_b TEXT,ehrpd TEXT,evdo TEXT,gpass TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDcmDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 258
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TelephonyProvider"

    const-string v2, "DatabaseHelper.onUpgrade(): inactivetimer field exists already"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const v7, 0xff00

    const v6, -0xff01

    .line 490
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseHelper.onUpgrade(): old version("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), new version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    and-int v3, p2, v7

    shr-int/lit8 v1, v3, 0x8

    .line 493
    .local v1, dcmOldVersion:I
    and-int v3, p3, v7

    shr-int/lit8 v0, v3, 0x8

    .line 495
    .local v0, dcmNewVersion:I
    and-int/2addr p2, v6

    .line 496
    and-int/2addr p3, v6

    .line 498
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseHelper.onUpgrade(): Version(APN DB Schema) Checking, old version("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, p2, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), new version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, p3, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseHelper.onUpgrade(): Version(APN XML) Checking, old version("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, p2, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), new version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, p3, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseHelper.onUpgrade(): Version(DCM) Checking, old version("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), new version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const v3, 0x50006

    if-ge p2, v3, :cond_0

    .line 515
    const-string v3, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    const p2, 0x50006

    .line 520
    :cond_0
    const v3, 0x60006

    if-ge p2, v3, :cond_1

    .line 522
    const-string v3, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 524
    const-string v3, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    const p2, 0x60006

    .line 528
    :cond_1
    const v3, 0x70006

    if-ge p2, v3, :cond_2

    .line 530
    const-string v3, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const-string v3, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    const p2, 0x70006

    .line 542
    :cond_2
    sget-object v3, Lcom/android/providers/telephony/TelephonyProvider;->mfeatureset:Ljava/lang/String;

    const-string v4, "SPCSBASE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 546
    :try_start_0
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): Trying to add inactivetimer field, there is no default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v3, "ALTER TABLE carriers ADD COLUMN inactivetimer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_3
    :goto_0
    if-le v0, v1, :cond_4

    .line 559
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): START Update DCM Settings Table"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :try_start_1
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): Trying to drop dcm_settings TABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "DROP TABLE dcm_settings;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    :goto_1
    :try_start_2
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): Trying to create and initialize dcm_settings TABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v3, "CREATE TABLE dcm_settings(_id INTEGER PRIMARY KEY,numeric TEXT,extraid TEXT,fastdormancy TEXT,ipmtu INTEGER,mpdp INTEGER,windefault TEXT,lte TEXT,umts TEXT,hspa TEXT,hsupa TEXT,hsdpa TEXT,hspap TEXT,edge TEXT,gprs TEXT,evdo_b TEXT,ehrpd TEXT,evdo TEXT,gpass TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDcmDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 601
    :goto_2
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): END Update DCM Settings Table"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_3
    return-void

    .line 550
    :catch_0
    move-exception v2

    .line 551
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): inactivetimer field exists already"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 567
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseHelper.onUpgrade(): Failed to drop dcm_settings TABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 597
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 598
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DatabaseHelper.onUpgrade(): Failed to create and initialize dcm_settings TABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 605
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v3, "TelephonyProvider"

    const-string v4, "DatabaseHelper.onUpgrade(): DCM Settings is not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
