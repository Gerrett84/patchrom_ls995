.class public Lcom/android/lgesettings/Settings$LockSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2789
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 2792
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2793
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$LockSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 2795
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$LockSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 2799
    :goto_0
    return-void

    .line 2797
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$LockSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020340

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method
