.class Lcom/lge/camera/command/setting/SetDualCameraShot$1;
.super Ljava/lang/Object;
.source "SetDualCameraShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetDualCameraShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetDualCameraShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetDualCameraShot;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetDualCameraShot$1;->this$0:Lcom/lge/camera/command/setting/SetDualCameraShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot$1;->this$0:Lcom/lge/camera/command/setting/SetDualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot$1;->this$0:Lcom/lge/camera/command/setting/SetDualCameraShot;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 53
    :cond_0
    return-void
.end method
