.class Lcom/lge/camera/controller/SoundController$5;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunned()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SoundController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$5;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$5;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$5;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$5;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method
