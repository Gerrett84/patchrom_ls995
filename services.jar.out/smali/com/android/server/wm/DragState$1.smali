.class Lcom/android/server/wm/DragState$1;
.super Ljava/lang/Thread;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DragState;->dropFailAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/view/Surface;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DragState;

.field final synthetic val$endP:Landroid/graphics/PointF;

.field final synthetic val$offsetX:F

.field final synthetic val$offsetY:F

.field final synthetic val$service:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$startP:Landroid/graphics/PointF;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/Surface;FFLcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iput-object p2, p0, Lcom/android/server/wm/DragState$1;->val$endP:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/server/wm/DragState$1;->val$startP:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/android/server/wm/DragState$1;->val$surface:Landroid/view/Surface;

    iput p5, p0, Lcom/android/server/wm/DragState$1;->val$offsetX:F

    iput p6, p0, Lcom/android/server/wm/DragState$1;->val$offsetY:F

    iput-object p7, p0, Lcom/android/server/wm/DragState$1;->val$service:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x461c4000

    .line 331
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$endP:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/android/server/wm/DragState$1;->val$startP:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v2, v6, v7

    .line 332
    .local v2, varX:F
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$endP:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/android/server/wm/DragState$1;->val$startP:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v3, v6, v7

    .line 333
    .local v3, varY:F
    div-float/2addr v2, v8

    .line 334
    div-float/2addr v3, v8

    .line 336
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    const/16 v6, 0x64

    if-ge v1, v6, :cond_0

    .line 337
    mul-int v6, v1, v1

    int-to-float v0, v6

    .line 338
    .local v0, dxy:F
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$endP:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v7, v2, v0

    sub-float v4, v6, v7

    .line 339
    .local v4, x:F
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$endP:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float v7, v3, v0

    sub-float v5, v6, v7

    .line 341
    .local v5, y:F
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 343
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$surface:Landroid/view/Surface;

    iget v7, p0, Lcom/android/server/wm/DragState$1;->val$offsetX:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/android/server/wm/DragState$1;->val$offsetY:F

    sub-float v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/Surface;->setPosition(FF)V

    .line 344
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$surface:Landroid/view/Surface;

    const v7, 0x3e960419

    invoke-virtual {v6, v7}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    const-wide/16 v6, 0x2

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    :goto_1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v6

    .line 353
    .end local v0           #dxy:F
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$service:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v6}, Lcom/android/server/wm/DragState;->reset()V

    .line 354
    iget-object v6, p0, Lcom/android/server/wm/DragState$1;->val$service:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 355
    return-void

    .line 347
    .restart local v0       #dxy:F
    .restart local v4       #x:F
    .restart local v5       #y:F
    :catch_0
    move-exception v6

    goto :goto_1
.end method
