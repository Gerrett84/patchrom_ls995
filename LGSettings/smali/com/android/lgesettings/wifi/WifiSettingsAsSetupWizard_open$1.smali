.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsAsSetupWizard_open.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->handleWifiStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->isWifiExtendFuncAvailable()Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->handleStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$200(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    :cond_1
    return-void
.end method
