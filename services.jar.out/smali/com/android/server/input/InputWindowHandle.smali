.class public final Lcom/android/server/input/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public final displayId:I

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public final inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field public inputChannel:Landroid/view/InputChannel;

.field public inputFeatures:I

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public final mvpWin:Z

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field private ptr:I

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z

.field public final windowState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V
    .locals 1
    .parameter "inputApplicationHandle"
    .parameter "windowState"
    .parameter "displayId"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;IZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;IZ)V
    .locals 1
    .parameter "inputApplicationHandle"
    .parameter "windowState"
    .parameter "displayId"
    .parameter "mvpWin"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 108
    iput-boolean p4, p0, Lcom/android/server/input/InputWindowHandle;->mvpWin:Z

    .line 110
    iput-object p1, p0, Lcom/android/server/input/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 111
    iput-object p2, p0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    .line 112
    iput p3, p0, Lcom/android/server/input/InputWindowHandle;->displayId:I

    .line 113
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
