.class Lcom/lge/camera/command/SwapCamera$4;
.super Ljava/lang/Object;
.source "SwapCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SwapCamera;->updateFocusIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SwapCamera;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SwapCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/lge/camera/command/SwapCamera$4;->this$0:Lcom/lge/camera/command/SwapCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$4;->this$0:Lcom/lge/camera/command/SwapCamera;

    invoke-virtual {v0}, Lcom/lge/camera/command/SwapCamera;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$4;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$4;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$4;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateFocusIndicator()V

    .line 300
    :cond_0
    return-void
.end method
