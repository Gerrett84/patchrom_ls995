.class public final Lcom/android/lgesettings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 34
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 40
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerActivity;->finish()V

    .line 41
    return-void
.end method
