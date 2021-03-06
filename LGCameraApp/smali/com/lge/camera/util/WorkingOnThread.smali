.class public Lcom/lge/camera/util/WorkingOnThread;
.super Ljava/lang/Thread;
.source "WorkingOnThread.java"


# static fields
.field private static mWorkingOnThread:Lcom/lge/camera/util/WorkingOnThread;


# instance fields
.field private mWorkingArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/util/ThreadWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingOnThread:Lcom/lge/camera/util/WorkingOnThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/lge/camera/util/WorkingOnThread;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingOnThread:Lcom/lge/camera/util/WorkingOnThread;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/lge/camera/util/WorkingOnThread;

    invoke-direct {v0}, Lcom/lge/camera/util/WorkingOnThread;-><init>()V

    sput-object v0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingOnThread:Lcom/lge/camera/util/WorkingOnThread;

    .line 18
    :cond_0
    sget-object v0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingOnThread:Lcom/lge/camera/util/WorkingOnThread;

    return-object v0
.end method


# virtual methods
.method public removeWorker(Lcom/lge/camera/util/ThreadWorker;)V
    .locals 1
    .parameter "worker"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public startWorker(Lcom/lge/camera/util/ThreadWorker;)V
    .locals 1
    .parameter "worker"

    .prologue
    .line 22
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    new-instance v0, Lcom/lge/camera/util/WorkingOnThread$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/util/WorkingOnThread$1;-><init>(Lcom/lge/camera/util/WorkingOnThread;)V

    invoke-virtual {p1, v0}, Lcom/lge/camera/util/ThreadWorker;->setWorkingListListener(Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;)V

    .line 31
    invoke-virtual {p1}, Lcom/lge/camera/util/ThreadWorker;->start()V

    .line 33
    :cond_1
    return-void
.end method

.method public waitAllWorkers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 44
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/util/ThreadWorker;

    .line 46
    .local v1, worker:Lcom/lge/camera/util/ThreadWorker;
    if-eqz v1, :cond_0

    .line 48
    :try_start_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "join worker : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lge/camera/util/ThreadWorker;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcom/lge/camera/util/ThreadWorker;->isWaitUntilJoin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/lge/camera/util/ThreadWorker;->join()V

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/util/WorkingOnThread;->mWorkingArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #worker:Lcom/lge/camera/util/ThreadWorker;
    :cond_2
    return-void
.end method
