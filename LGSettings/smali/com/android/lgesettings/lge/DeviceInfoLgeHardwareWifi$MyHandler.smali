.class Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;
.super Landroid/os/Handler;
.source "DeviceInfoLgeHardwareWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    .line 106
    .local v0, status:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->updateTimes()V

    .line 115
    const/16 v1, 0x1f4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
