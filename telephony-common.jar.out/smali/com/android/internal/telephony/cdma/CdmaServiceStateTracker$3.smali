.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    .line 267
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, eriText:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 275
    .end local v0           #eriText:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 276
    const/4 v0, 0x0

    .restart local v0       #eriText:Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v0           #eriText:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #eriText:Ljava/lang/String;
    goto :goto_1

    .line 285
    .end local v0           #eriText:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 286
    const-string v2, "CDMA"

    const-string v3, "get ACTION SHUTDOWN!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isInShutDown:Z

    goto :goto_0

    .line 291
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const-string v2, "CDMA"

    const-string v3, "Enter ACTION_SIM_STATE_CHANGED!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, lock_reason:Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v2, "NETWORK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 302
    const-string v2, "CDMA"

    const-string v3, "updateSpnDisplay for ACTION_SIM_STATE_CHANGED / INTENT_VALUE_LOCKED_NETWORK status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNetworkLoked:I
    invoke-static {v2, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 306
    :cond_6
    if-eqz v1, :cond_7

    const-string v2, "SERVICE PROVIDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 308
    const-string v2, "CDMA"

    const-string v3, "updateSpnDisplay for ACTION_SIM_STATE_CHANGED / INTENT_VALUE_LOCKED_SERVICE_PROVIDER status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x2

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNetworkLoked:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 312
    :cond_7
    if-eqz v1, :cond_8

    const-string v2, "NETWORK SUBSET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 314
    const-string v2, "CDMA"

    const-string v3, "updateSpnDisplay for ACTION_SIM_STATE_CHANGED / INTENT_VALUE_LOCKED_NETWORK_SUBSET status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNetworkLoked:I
    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 318
    :cond_8
    if-eqz v1, :cond_9

    const-string v2, "CORPORATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 320
    const-string v2, "CDMA"

    const-string v3, "updateSpnDisplay for ACTION_SIM_STATE_CHANGED / INTENT_VALUE_LOCKED_CORPORATE status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x4

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNetworkLoked:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 324
    :cond_9
    if-eqz v1, :cond_0

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "CDMA"

    const-string v3, "updateSpnDisplay for ACTION_SIM_STATE_CHANGED / INTENT_VALUE_LOCKED_SIM status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x5

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isNetworkLoked:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0
.end method
