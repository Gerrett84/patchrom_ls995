.class Lcom/android/lgesettings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/lgesettings/IccLockSettings$2;->this$0:Lcom/android/lgesettings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings$2;->this$0:Lcom/android/lgesettings/IccLockSettings;

    #getter for: Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/IccLockSettings;->access$400(Lcom/android/lgesettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/IccLockSettings$2;->this$0:Lcom/android/lgesettings/IccLockSettings;

    #getter for: Lcom/android/lgesettings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/lgesettings/IccLockSettings;->access$400(Lcom/android/lgesettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    :cond_0
    return-void
.end method
