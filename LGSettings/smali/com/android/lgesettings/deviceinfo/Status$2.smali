.class Lcom/android/lgesettings/deviceinfo/Status$2;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/Status;->WifiSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$2;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$2;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->setWifiStatus()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/Status;->access$1200(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 506
    return-void
.end method