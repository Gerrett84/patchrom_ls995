.class Lcom/lge/camera/controller/PIPController$2;
.super Ljava/lang/Object;
.source "PIPController.java"

# interfaces
.implements Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PIPController;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PIPController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PIPController;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    const v1, 0x7f09011c

    .line 262
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getVideoState()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 271
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 274
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->setButtonRemainRefresh()V

    .line 275
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$2;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020355

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
