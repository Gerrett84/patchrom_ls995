.class Lcom/lge/camera/controller/SettingRotatableExpandableController$11$1;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$11;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1144
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11$1;->this$1:Lcom/lge/camera/controller/SettingRotatableExpandableController$11;

    iget-object v1, v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$900(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;Z)V

    .line 1145
    return-void
.end method
