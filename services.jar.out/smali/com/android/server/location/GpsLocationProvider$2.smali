.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "GpsLocationProvider"

    const-string v5, "ALARM_WAKEUP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating()V
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)V

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    const-string v4, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 439
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "GpsLocationProvider"

    const-string v5, "ALARM_TIMEOUT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_3
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 441
    :cond_4
    const-string v4, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 442
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 443
    :cond_5
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 444
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 447
    :cond_6
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    const-string v4, "noConnectivity"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 451
    const/4 v3, 0x1

    .line 457
    .local v3, networkState:I
    :goto_1
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 459
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 461
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_8

    .line 464
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 453
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #networkState:I
    :cond_7
    const/4 v3, 0x2

    .restart local v3       #networkState:I
    goto :goto_1

    .line 466
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_8
    const-string v4, "GpsLocationProvider"

    const-string v5, "ignore Mobile IMS intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method