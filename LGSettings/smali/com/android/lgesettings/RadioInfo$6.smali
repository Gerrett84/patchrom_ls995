.class Lcom/android/lgesettings/RadioInfo$6;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RadioInfo;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/lgesettings/RadioInfo$6;->this$0:Lcom/android/lgesettings/RadioInfo;

    iput-object p2, p0, Lcom/android/lgesettings/RadioInfo$6;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/lgesettings/RadioInfo$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$6;->this$0:Lcom/android/lgesettings/RadioInfo;

    #calls: Lcom/android/lgesettings/RadioInfo;->pingHostname()V
    invoke-static {v0}, Lcom/android/lgesettings/RadioInfo;->access$3000(Lcom/android/lgesettings/RadioInfo;)V

    .line 821
    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$6;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/RadioInfo$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 822
    return-void
.end method
