.class public Lcom/lge/camera/command/setting/SetVideoVoice;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoVoice.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 12
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoVoice;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 20
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_audio_recording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, value:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetVideoVoice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoVoice;->updateIndicator()V

    .line 23
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoVoice;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_audio_recording"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateIndicator()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetVideoVoice$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetVideoVoice$1;-><init>(Lcom/lge/camera/command/setting/SetVideoVoice;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method
