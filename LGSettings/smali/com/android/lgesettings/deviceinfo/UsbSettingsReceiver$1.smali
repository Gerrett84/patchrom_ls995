.class Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver$1;
.super Landroid/os/UEventObserver;
.source "UsbSettingsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 473
    const-string v2, "UsbSettingsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v2, "AUTORUN"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, autorun:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const-string v2, "ACK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.autorun_ack"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 481
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "change_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.autorun_change_mode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
