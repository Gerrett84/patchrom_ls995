.class Lcom/lge/camera/controller/PreviewPanelController$4;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090147

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 1505
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1506
    const-string v1, "CameraApp"

    const-string v2, "mDoSnapRunnable"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$4;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 1510
    .end local v0           #button:Lcom/lge/camera/components/ShutterButton;
    :cond_0
    return-void
.end method
