.class Lcom/android/lgesettings/TetherNetworkSettings$9;
.super Ljava/lang/Object;
.source "TetherNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$9;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 685
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings$9;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v1}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 687
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 688
    const/4 v0, 0x1

    .line 690
    :cond_0
    return v0
.end method
