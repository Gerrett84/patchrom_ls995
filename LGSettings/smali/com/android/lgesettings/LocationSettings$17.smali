.class Lcom/android/lgesettings/LocationSettings$17;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$17;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1150
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 1151
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->receiveLocationPolicyChangeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/android/lgesettings/LocationSettings$17;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1153
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1158
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method
