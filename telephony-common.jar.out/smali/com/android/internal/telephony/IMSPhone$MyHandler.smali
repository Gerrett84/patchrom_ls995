.class Lcom/android/internal/telephony/IMSPhone$MyHandler;
.super Landroid/os/Handler;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMSPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IMSPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IMSPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 224
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 227
    const-string v8, "LGIMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage :: event ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    if-nez v0, :cond_2

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    const-string v8, "LGIMS"

    const-string v9, "ar is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;

    move-result-object v6

    .line 239
    .local v6, sysMonitor:Lcom/android/internal/telephony/ISysMonitor;
    if-nez v6, :cond_3

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 241
    const-string v8, "LGIMS"

    const-string v9, "SysMonitor is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_3
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    .line 247
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 248
    const-string v8, "LGIMS"

    const-string v9, "ar.exception is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x65

    if-eq v8, v9, :cond_5

    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x66

    if-ne v8, v9, :cond_1

    .line 253
    :cond_5
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 256
    .local v4, fileId:Ljava/lang/Integer;
    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 259
    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto :goto_0

    .line 267
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #fileId:Ljava/lang/Integer;
    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 397
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 398
    const-string v8, "LGIMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown event ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 301
    const-string v8, "LGIMS"

    const-string v9, "RIL_RESPONSE received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :pswitch_1
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_a

    .line 310
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 311
    const-string v8, "LGIMS"

    const-string v9, "ar.result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_8
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 317
    .restart local v4       #fileId:Ljava/lang/Integer;
    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 318
    :catch_1
    move-exception v2

    .line 319
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 320
    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 327
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #fileId:Ljava/lang/Integer;
    :cond_a
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 329
    .restart local v4       #fileId:Ljava/lang/Integer;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    move-object v3, v8

    check-cast v3, Ljava/util/ArrayList;

    .line 330
    .local v3, efRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-string v1, ""

    .line 332
    .local v1, data:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_c

    .line 333
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, tmp:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 343
    .end local v7           #tmp:Ljava/lang/String;
    :cond_c
    const/4 v8, 0x3

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10, v1}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 344
    :catch_2
    move-exception v2

    .line 345
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 346
    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 355
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #efRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v4           #fileId:Ljava/lang/Integer;
    .end local v5           #i:I
    :pswitch_2
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_10

    .line 356
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 357
    const-string v8, "LGIMS"

    const-string v9, "ar.result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_e
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 363
    .restart local v4       #fileId:Ljava/lang/Integer;
    const/4 v8, 0x3

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 364
    :catch_3
    move-exception v2

    .line 365
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 366
    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 373
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #fileId:Ljava/lang/Integer;
    :cond_10
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 374
    .restart local v4       #fileId:Ljava/lang/Integer;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 377
    .restart local v1       #data:Ljava/lang/String;
    const/4 v8, 0x3

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10, v1}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 378
    :catch_4
    move-exception v2

    .line 379
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 380
    const-string v8, "LGIMS"

    const-string v9, "Unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 390
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #fileId:Ljava/lang/Integer;
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 391
    const-string v8, "LGIMS"

    const-string v9, "RIL_IMS_STAUS_SET_DONE_FOR_DAN received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
