.class public Lcom/android/lgesettings/utils/ApiActivity;
.super Landroid/preference/PreferenceActivity;
.source "ApiActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/ApiActivity;->addPreferencesFromResource(I)V

    .line 18
    return-void
.end method
