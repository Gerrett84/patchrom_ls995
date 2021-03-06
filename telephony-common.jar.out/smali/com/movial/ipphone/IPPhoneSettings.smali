.class public Lcom/movial/ipphone/IPPhoneSettings;
.super Ljava/lang/Object;
.source "IPPhoneSettings.java"


# static fields
.field public static final CELL_ONLY:Ljava/lang/String; = "CELL_ONLY"

.field public static final CLIP:Ljava/lang/String; = "CLIP"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ECM:Ljava/lang/String; = "ECM"

.field public static final FIRST_WIFI_CALL:Ljava/lang/String; = "FIRST_WIFI_CALL"

.field public static final GBA_INIT:Ljava/lang/String; = "GBA_INIT"

.field public static final PREFERRED_OPTION:Ljava/lang/String; = "PREFERRED_OPTION"

.field public static final ROVE_IN:Ljava/lang/String; = "ROVE_IN"

.field public static final ROVE_OUT:Ljava/lang/String; = "ROVE_OUT"

.field public static final ROVE_THRESHOLD:Ljava/lang/String; = "ROVE_THRESHOLD"

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_FIRST_CONNECTED:Ljava/lang/String; = "WIFI_FIRST_CONNECTED"

.field public static final WIFI_FIRST_TURNON:Ljava/lang/String; = "WIFI_FIRST_TURNON"

.field public static final WIFI_SETTINGS_FIRST_LAUNCHED:Ljava/lang/String; = "WIFI_SETTINGS_FIRST_LAUNCHED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "IPPhoneSettings"

    sput-object v0, Lcom/movial/ipphone/IPPhoneSettings;->TAG:Ljava/lang/String;

    .line 53
    const-string v0, "content://ipprovider/ipphonesettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 113
    invoke-static {p0, p1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, i:I
    if-ne v0, v2, :cond_0

    .line 115
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 101
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/movial/ipphone/IPPhoneSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 83
    const/4 v6, 0x0

    .line 85
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 91
    :cond_0
    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_1
    return-object p2

    .line 88
    :catch_0
    move-exception v7

    .line 89
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/movial/ipphone/IPPhoneSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 109
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v2, 0x1

    .line 78
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/movial/ipphone/IPPhoneSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    goto :goto_0
.end method
