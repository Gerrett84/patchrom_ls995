.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$600(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Lcom/android/lgesettings/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080a78

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090090

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->getNetworkMode()I

    move-result v2

    new-instance v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 362
    const/4 v0, 0x1

    return v0
.end method
