.class Lcom/android/lgesettings/DisplaySettings$16;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$16;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySettings$16;->this$0:Lcom/android/lgesettings/DisplaySettings;

    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    #setter for: Lcom/android/lgesettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v1, v0}, Lcom/android/lgesettings/DisplaySettings;->access$1302(Lcom/android/lgesettings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 1358
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$16;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #calls: Lcom/android/lgesettings/DisplaySettings;->updateWifiDisplaySummary()V
    invoke-static {v0}, Lcom/android/lgesettings/DisplaySettings;->access$1400(Lcom/android/lgesettings/DisplaySettings;)V

    .line 1360
    :cond_0
    return-void
.end method
