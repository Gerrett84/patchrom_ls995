.class public Lcom/android/lgesettings/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f040041

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 74
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeperConfirm$Blank;->finish()V

    .line 78
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 79
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDeviceEncryption()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/lgesettings/CryptKeeperConfirm$Blank;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 86
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 87
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x177

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 98
    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/lgesettings/CryptKeeperConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/lgesettings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method
