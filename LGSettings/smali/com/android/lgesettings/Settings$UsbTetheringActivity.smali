.class public Lcom/android/lgesettings/Settings$UsbTetheringActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbTetheringActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2889
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 2892
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2893
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2894
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$UsbTetheringActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 2895
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$UsbTetheringActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 2897
    :cond_0
    return-void
.end method
