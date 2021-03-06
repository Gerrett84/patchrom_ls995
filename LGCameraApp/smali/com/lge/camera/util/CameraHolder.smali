.class public Lcom/lge/camera/util/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static sHolder:Lcom/lge/camera/util/CameraHolder;


# instance fields
.field private checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    .line 54
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 62
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 65
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    .line 103
    new-instance v1, Landroid/os/HandlerThread;

    const-string v6, "CameraHolder"

    invoke-direct {v1, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, ht:Landroid/os/HandlerThread;
    const/4 v3, 0x0

    .line 105
    .local v3, lp:Landroid/os/Looper;
    const/4 v4, 0x0

    .line 106
    .local v4, myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 109
    :try_start_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 110
    if-nez v3, :cond_0

    .line 111
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "pref is null at method CameraHolder::CameraHolder(): lp = ht.getLooper();"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "looper is null"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    iput-object v4, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    .line 122
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraHolder() mNumberOfCameras = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    new-array v6, v6, [Landroid/hardware/Camera$CameraInfo;

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 125
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    if-ge v2, v6, :cond_1

    .line 126
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v7, v6, v2

    .line 127
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v2

    invoke-static {v2, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v2           #i:I
    :cond_0
    :try_start_1
    new-instance v5, Lcom/lge/camera/util/CameraHolder$MyHandler;

    invoke-direct {v5, p0, v3}, Lcom/lge/camera/util/CameraHolder$MyHandler;-><init>(Lcom/lge/camera/util/CameraHolder;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    .local v5, myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    move-object v4, v5

    .line 118
    .end local v5           #myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    .restart local v4       #myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    goto :goto_0

    .line 129
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 259
    if-nez p0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 262
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/util/CameraHolder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/lge/camera/util/CameraHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized instance()Lcom/lge/camera/util/CameraHolder;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lcom/lge/camera/util/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/camera/util/CameraHolder;->sHolder:Lcom/lge/camera/util/CameraHolder;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/lge/camera/util/CameraHolder;

    invoke-direct {v0}, Lcom/lge/camera/util/CameraHolder;-><init>()V

    sput-object v0, Lcom/lge/camera/util/CameraHolder;->sHolder:Lcom/lge/camera/util/CameraHolder;

    .line 74
    :cond_0
    sget-object v0, Lcom/lge/camera/util/CameraHolder;->sHolder:Lcom/lge/camera/util/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 314
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, now:J
    iget-wide v3, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 316
    iget-object v2, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    const/4 v2, 0x0

    .line 332
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 321
    :cond_2
    const-wide/16 v3, 0x0

    :try_start_1
    iput-wide v3, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    .line 323
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    .line 324
    const-string v3, "CameraApp"

    const-string v4, "#### mCameraDevice.release()-check"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 326
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 328
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 330
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDeviceKeepForChangeMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 359
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "keep-cancel"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    .line 361
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public getRealCameraId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    return v0
.end method

.method public getUsers()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDeviceKeepForChangeMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "CameraApp"

    const-string v1, "face unlock does not use to keep."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 350
    :cond_1
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "keep-check"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 10
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KDH before open mUsers = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], mCameraDevice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCameraId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cameraId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v5, 0x0

    .line 157
    .local v5, retryCount:I
    const/4 v1, 0x0

    .line 159
    .local v1, deviceOpenFail:Z
    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    if-eq v6, p1, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/util/CameraHolder;->release()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 162
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 165
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_8

    .line 167
    :try_start_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### android.hardware.Camera.open():cameraId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Time Info][2] Camloading Activity End : Camera UI Initialization "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Time Info][3] Camera Device Open Start : Camera Driver Initialization "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 179
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Time Info][3] Camera Device Open End : Camera Driver Initialization "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Time Info][4] App Camera Param setting Start : Camera Parameter setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput p1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 182
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v6, :cond_3

    .line 225
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 242
    :cond_3
    :goto_0
    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 243
    invoke-virtual {p0}, Lcom/lge/camera/util/CameraHolder;->cancel()V

    .line 245
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KDH after open mUsers = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v6

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    .line 185
    :try_start_3
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_4

    .line 186
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 187
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    .line 189
    :cond_4
    if-eqz v1, :cond_2

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to retry connect Camera. retryCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    const-wide/16 v6, 0xc8

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 198
    :goto_1
    :try_start_5
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### android.hardware.Camera.open()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 200
    iput p1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 201
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-nez v6, :cond_5

    .line 202
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 204
    :cond_5
    const/4 v1, 0x0

    .line 209
    :goto_2
    const/16 v0, 0x1e

    .line 211
    .local v0, checkCount:I
    if-eqz v1, :cond_4

    if-lt v5, v0, :cond_4

    .line 212
    const/4 v1, 0x1

    .line 213
    :try_start_6
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v6, :cond_7

    .line 214
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v6

    if-nez v6, :cond_6

    .line 215
    const-string v6, "CameraApp"

    const-string v7, "#### mCameraDevice.stopPreview()"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V

    .line 218
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z

    .line 220
    :cond_7
    new-instance v6, Lcom/lge/camera/util/CameraHardwareException;

    invoke-direct {v6, v2}, Lcom/lge/camera/util/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    .end local v0           #checkCount:I
    .end local v1           #deviceOpenFail:Z
    .end local v2           #e:Ljava/lang/RuntimeException;
    .end local v5           #retryCount:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 194
    .restart local v1       #deviceOpenFail:Z
    .restart local v2       #e:Ljava/lang/RuntimeException;
    .restart local v5       #retryCount:I
    :catch_1
    move-exception v4

    .line 195
    .local v4, ie:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v4           #ie:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    .line 206
    .local v3, e2:Ljava/lang/RuntimeException;
    const-string v6, "CameraApp"

    const-string v7, "RuntimeException : "

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 207
    const/4 v1, 0x1

    goto :goto_2

    .line 229
    .end local v2           #e:Ljava/lang/RuntimeException;
    .end local v3           #e2:Ljava/lang/RuntimeException;
    :cond_8
    :try_start_8
    const-string v6, "CameraApp"

    const-string v7, "#### mCameraDevice.reconnect()"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->reconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 237
    :try_start_9
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/lge/camera/util/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 238
    :catch_3
    move-exception v2

    .line 239
    .restart local v2       #e:Ljava/lang/RuntimeException;
    :try_start_a
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setParameters failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/IOException;
    const-string v6, "CameraApp"

    const-string v7, "reconnect failed."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v6, Lcom/lge/camera/util/CameraHardwareException;

    invoke-direct {v6, v2}, Lcom/lge/camera/util/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized release()Z
    .locals 4

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDH before release mUsers = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, ret_val:Z
    iget v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-gez v1, :cond_0

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 304
    const-string v1, "CameraApp"

    const-string v2, "### mCameraDevice.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 306
    invoke-direct {p0}, Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z

    move-result v0

    .line 308
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDH after release mUsers = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret_val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return v0

    .line 295
    .end local v0           #ret_val:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setOneShotSetPreviewNullLatchCountDown()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    .line 144
    :cond_0
    return-void
.end method

.method public declared-synchronized tryOpen()Landroid/hardware/Camera;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 270
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :cond_0
    monitor-exit p0

    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Lcom/lge/camera/util/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v0           #e:Lcom/lge/camera/util/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tryOpen(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :cond_0
    monitor-exit p0

    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Lcom/lge/camera/util/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local v0           #e:Lcom/lge/camera/util/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
