.class Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SettingBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SettingBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingBootReceiver;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 506
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;->this$0:Lcom/android/lgesettings/SettingBootReceiver;

    #getter for: Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/SettingBootReceiver;->access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method