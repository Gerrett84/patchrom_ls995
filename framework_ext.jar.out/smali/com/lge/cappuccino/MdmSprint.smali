.class public Lcom/lge/cappuccino/MdmSprint;
.super Ljava/lang/Object;
.source "MdmSprint.java"


# static fields
.field private static sMdm:Lcom/lge/cappuccino/IMdmSprint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 10
    sput-object v7, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;

    .line 13
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_0

    .line 14
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.mdm.jar"

    const-class v5, Lcom/lge/cappuccino/Mdm;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 17
    .local v1, cloader:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v4, "com.lge.mdm.MDMInterfaceImplSprint"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 18
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cappuccino/IMdmSprint;

    .line 19
    .local v3, mdm:Lcom/lge/cappuccino/IMdmSprint;
    sput-object v3, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0           #c:Ljava/lang/Class;
    .end local v3           #mdm:Lcom/lge/cappuccino/IMdmSprint;
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v2

    .line 21
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Mdm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library loading failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sput-object v7, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/cappuccino/IMdmSprint;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;

    return-object v0
.end method
