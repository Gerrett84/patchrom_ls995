.class Lcom/lge/camera/postview/PostviewDialog$8;
.super Ljava/lang/Object;
.source "PostviewDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostviewDialog;->createTimeMachineWarningPopup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewDialog$8;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 290
    :cond_0
    return v2
.end method
