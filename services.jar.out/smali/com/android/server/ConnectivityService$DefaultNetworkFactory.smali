.class Lcom/android/server/ConnectivityService$DefaultNetworkFactory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/ConnectivityService$NetworkFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mLGfeature:Lcom/android/internal/telephony/LGfeature;

.field private final mTrackerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "trackerHandler"

    .prologue
    .line 815
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    .line 817
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    .line 818
    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;
    .locals 3
    .parameter "targetNetworkType"
    .parameter "config"

    .prologue
    .line 822
    iget v0, p2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v0, :pswitch_data_0

    .line 846
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a NetworkStateTracker for an unknown radio type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :pswitch_1
    new-instance v0, Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    .line 844
    :goto_0
    return-object v0

    .line 835
    :pswitch_2
    new-instance v0, Landroid/net/MobileDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    invoke-direct {v0, p1, v1, v2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;Lcom/android/internal/telephony/LGfeature;)V

    goto :goto_0

    .line 838
    :pswitch_3
    new-instance v0, Landroid/net/DummyDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 840
    :pswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v0

    goto :goto_0

    .line 842
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    #calls: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$000(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_0

    .line 844
    :pswitch_6
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/net/UsbShareNetStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/UsbShareNetStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
