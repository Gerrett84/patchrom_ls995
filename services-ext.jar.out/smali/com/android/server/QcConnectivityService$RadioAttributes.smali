.class Lcom/android/server/QcConnectivityService$RadioAttributes;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioAttributes"
.end annotation


# instance fields
.field public mSimultaneity:I

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "init"

    .prologue
    .line 545
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, fragments:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mType:I

    .line 548
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mSimultaneity:I

    .line 549
    return-void
.end method
