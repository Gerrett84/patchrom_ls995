.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1876
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1950
    :goto_0
    :pswitch_0
    return-void

    .line 1878
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1881
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1885
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 1886
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleResetWithKeepingAwake(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1888
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1893
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1896
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1899
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    goto :goto_0

    .line 1902
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1905
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_1
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1908
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1911
    :pswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    .line 1914
    :pswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    :goto_2
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1917
    :pswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 1918
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1919
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1922
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShowAssistant()V

    goto/16 :goto_0

    .line 1926
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSKTLockShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1931
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleExpirePasswordReset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1936
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleClearLockPattern()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1941
    :pswitch_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setLockTimerState(I)V

    goto/16 :goto_0

    .line 1946
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleOMADM()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$5100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1876
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
