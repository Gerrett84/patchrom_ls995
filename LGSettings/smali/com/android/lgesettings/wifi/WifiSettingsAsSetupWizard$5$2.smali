.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;

    iput-boolean p2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;->val$enable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$1100(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 552
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 553
    return-void
.end method