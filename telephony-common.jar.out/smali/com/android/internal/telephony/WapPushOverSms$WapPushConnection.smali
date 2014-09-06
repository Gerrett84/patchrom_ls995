.class Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WapPushConnection"
.end annotation


# instance fields
.field private mOwner:Landroid/content/Context;

.field private mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ownerContext"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;)Lcom/android/internal/telephony/IWapPushManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    return-object v0
.end method

.method private rebindWapPushManager()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v0, p0

    .line 109
    .local v0, wapPushConnection:Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;-><init>(Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;Landroid/content/ServiceConnection;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection$1;->start()V

    goto :goto_0
.end method


# virtual methods
.method public bindWapPushManager()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    move-object v0, p0

    .line 97
    .local v0, wapPushConnection:Landroid/content/ServiceConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 75
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    .line 78
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mWapPushMan:Lcom/android/internal/telephony/IWapPushManager;

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->mOwner:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->access$000(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->rebindWapPushManager()V

    .line 87
    return-void
.end method