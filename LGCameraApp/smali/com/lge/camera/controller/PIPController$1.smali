.class Lcom/lge/camera/controller/PIPController$1;
.super Ljava/lang/Object;
.source "PIPController.java"

# interfaces
.implements Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;


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
    .line 239
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 4

    .prologue
    const v1, 0x7f09011c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "onDrawerOpened"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getVideoState()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 251
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 254
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 256
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController$1;->this$0:Lcom/lge/camera/controller/PIPController;

    #getter for: Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController;->access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
