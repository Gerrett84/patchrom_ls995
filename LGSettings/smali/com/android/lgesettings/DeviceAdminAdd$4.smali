.class Lcom/android/lgesettings/DeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/lgesettings/DeviceAdminAdd$4;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminAdd$4;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/lgesettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/lgesettings/DeviceAdminAdd$4;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/lgesettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminAdd$4;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/lgesettings/DeviceAdminAdd;->finish()V

    .line 337
    return-void
.end method
