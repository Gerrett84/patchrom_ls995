.class Lcom/lge/camera/controller/QuickFunctionController$1;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->initLiveEffectMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 4

    .prologue
    const v1, 0x7f0900e9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 140
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 141
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 142
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->startLiveEffectDrawerSubMenuRotation(I)V

    .line 143
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
