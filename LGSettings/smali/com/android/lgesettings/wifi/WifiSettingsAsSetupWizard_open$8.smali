.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$8;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->displayConnectFailDialog(Ljava/lang/String;)V
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
    .line 983
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$8;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 985
    const-string v0, "WifiSettingsAsSetupWizard_open"

    const-string v1, "[displayConnectFailDialog] OK button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method
