.class Lcom/lge/camera/controller/SettingRotatableController$3;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$3;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$3;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$3;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$3;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$3;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    .line 355
    :cond_0
    return-void
.end method
