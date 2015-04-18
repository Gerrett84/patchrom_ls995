.class public Lcom/android/providers/telephony/LowMemoryCheckerActivity;
.super Landroid/app/Activity;
.source "LowMemoryCheckerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 21
    invoke-static {}, Lcom/android/providers/telephony/LowMemoryChecker;->getWarningPopup()Landroid/app/AlertDialog;

    move-result-object v0

    .line 22
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 25
    invoke-static {}, Lcom/android/providers/telephony/LowMemoryChecker;->initWarningPopup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/providers/telephony/LowMemoryChecker;->showWarningIfNecessary(Landroid/app/Activity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method
