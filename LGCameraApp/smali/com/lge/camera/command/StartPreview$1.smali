.class Lcom/lge/camera/command/StartPreview$1;
.super Ljava/lang/Object;
.source "StartPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/StartPreview;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/StartPreview;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/StartPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/camera/command/StartPreview$1;->this$0:Lcom/lge/camera/command/StartPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview$1;->this$0:Lcom/lge/camera/command/StartPreview;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview$1;->this$0:Lcom/lge/camera/command/StartPreview;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview$1;->this$0:Lcom/lge/camera/command/StartPreview;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 29
    :cond_0
    return-void
.end method
