.class Lcom/lge/camera/controller/QuickFunctionController$17;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;

.field final synthetic val$qflView:Landroid/view/View;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->val$show:Z

    iput-object p3, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->val$qflView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->val$show:Z

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->val$qflView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->val$qflView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1506
    return-void

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$17;->val$qflView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1498
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1497
    return-void
.end method
