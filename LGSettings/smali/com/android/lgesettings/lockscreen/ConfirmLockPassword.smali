.class public Lcom/android/lgesettings/lockscreen/ConfirmLockPassword;
.super Landroid/preference/PreferenceActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f080b9d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    .line 88
    if-ne p1, v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ConfirmLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Confirm_password"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 96
    if-ne p1, v3, :cond_1

    .line 97
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "LGMDM"

    const-string v1, "back key  is disabled by server policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method