.class public Lcom/lge/camera/receiver/BLEReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "BLEReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 16
    return-void
.end method

.method private checkCleanViewForShutterBLEKey()Z
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setSubMenuMode(I)V

    .line 61
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommandUi(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getDialogID()I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getDialogID()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->onDismissRotateDialog()V

    .line 118
    :cond_1
    :goto_0
    :sswitch_0
    return v0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSubMenuMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 69
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setSubMenuMode(I)V

    .line 70
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v2, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v1, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_4

    .line 73
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setSubMenuMode(I)V

    .line 74
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v2, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setSubMenuMode(I)V

    .line 78
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->clearSubMenu()V

    .line 79
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "manual"

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 81
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->showFocus()Z

    .line 85
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getDialogID()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 87
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->onDismissRotateDialog()V

    goto :goto_0

    .line 90
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getDialogID()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 111
    :sswitch_1
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->onDismissRotateDialog()V

    goto/16 :goto_0

    .line 118
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6a -> :sswitch_1
        0x6b -> :sswitch_1
        0x6d -> :sswitch_1
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x75 -> :sswitch_1
        0x76 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.action.BLE_ONEKEY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "lge_onekey_service"

    const-string v3, "_service"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, key:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "true"

    const-string v3, "_onekeyCamera"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 30
    if-eqz v1, :cond_0

    const-string v2, "ShortKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/lge/camera/receiver/BLEReceiver;->checkCleanViewForShutterBLEKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSnapshotRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v1       #key:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 38
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "VIDEO_STATE_RECORDING"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isRecordedLengthTooShort()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    const-string v2, "CameraApp"

    const-string v3, "Ignore stop recording request. It\'s too short."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->clearSettingMenuAndSubMenu()V

    .line 43
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v3, "com.lge.camera.command.StopRecording"

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getSnapshotRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 51
    :cond_5
    const-string v2, "false"

    const-string v3, "_onekeyCamera"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "CameraApp"

    const-string v3, "LG Smart Onekey Camera key Skipped !"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
