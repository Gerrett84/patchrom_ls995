.class Lcom/lge/camera/controller/DialogController$2;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/DialogController;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/DialogController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/DialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController$2;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$2;->this$0:Lcom/lge/camera/controller/DialogController;

    #getter for: Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/DialogController;->access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 251
    return-void
.end method
