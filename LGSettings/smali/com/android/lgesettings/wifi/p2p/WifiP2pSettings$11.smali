.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$11;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$11;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 872
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$11;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08030c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 876
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 869
    const-string v0, "WifiP2pSettings"

    const-string v1, " connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void
.end method
