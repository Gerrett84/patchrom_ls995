.class final Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ExceptScanListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/wifi/ExceptScanListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 463
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 465
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 458
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 470
    invoke-static {}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onQueryComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;

    .line 473
    .local v0, activity:Lcom/android/lgesettings/wifi/ExceptScanListActivity;
    if-eqz p3, :cond_0

    .line 474
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    move-result-object v1

    .line 476
    .local v1, rejectAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->setLoading(Z)V

    .line 477
    invoke-virtual {v1, p3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 482
    .end local v1           #rejectAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;
    :goto_0
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->invalidateOptionsMenu()V

    .line 486
    :cond_0
    return-void

    .line 479
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
