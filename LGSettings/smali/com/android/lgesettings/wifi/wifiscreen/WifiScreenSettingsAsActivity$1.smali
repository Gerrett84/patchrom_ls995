.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;
.super Ljava/lang/Object;
.source "WifiScreenSettingsAsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->onInitView(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 151
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mConnectDialog:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenDialog;->getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 153
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mWifiScreenManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettingsAsActivity$1;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 165
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    return-void
.end method
