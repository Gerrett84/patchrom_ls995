.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 10
    .parameter "dirty"

    .prologue
    .line 926
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v6, :cond_2

    .line 933
    if-nez p1, :cond_1

    .line 934
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v6, :cond_0

    .line 935
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 937
    :cond_0
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 938
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object p1, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 942
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 949
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 950
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 969
    .end local v0           #c:Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 943
    .restart local v0       #c:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 944
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 957
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 958
    .local v4, now:J
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-wide v6, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 959
    .local v2, nextTime:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 961
    sub-long v6, v2, v4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 964
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 966
    :cond_4
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-wide v4, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 967
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 969
    const/4 v0, 0x0

    goto :goto_1

    .line 962
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 862
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 865
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_0
    monitor-exit v1

    .line 869
    return-void

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 872
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 873
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 874
    monitor-exit v1

    .line 875
    return-void

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 878
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 879
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 880
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 881
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 883
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 896
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 897
    const/4 p1, 0x4

    .line 899
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 900
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    .line 903
    :cond_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    const/4 v1, 0x1

    .line 912
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 913
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 914
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    return-void

    .line 913
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSizeFromLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 886
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1

    .line 887
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 888
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 890
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 909
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 975
    if-eqz p1, :cond_0

    .line 976
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 980
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 981
    return-void
.end method
