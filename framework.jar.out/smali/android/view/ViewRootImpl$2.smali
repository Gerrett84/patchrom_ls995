.class Landroid/view/ViewRootImpl$2;
.super Ljava/util/TimerTask;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->performTraversals()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->timerMethod()V

    .line 1203
    return-void
.end method
