.class Landroid/webkit/HTML5VideoView$2;
.super Landroid/content/BroadcastReceiver;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoView;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$2;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.browser.intent.action.HTML5VIDEO_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$2;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$2;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, v1, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 124
    :cond_0
    return-void
.end method