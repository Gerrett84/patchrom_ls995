.class Lcom/android/lgesettings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/lgesettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$1400(Lcom/android/lgesettings/applications/InstalledAppDetails;Z)V

    .line 1461
    return-void

    .line 1460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
