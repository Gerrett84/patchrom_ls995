.class final Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;
.super Ljava/lang/Object;
.source "MM02.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/metrics/mm/MM02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/carrieriq/iqagent/client/metrics/mm/MM02;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/carrieriq/iqagent/client/metrics/mm/MM02;
    .locals 2
    .parameter "in"

    .prologue
    .line 174
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02;-><init>(Landroid/os/Parcel;Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;->createFromParcel(Landroid/os/Parcel;)Lcom/carrieriq/iqagent/client/metrics/mm/MM02;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/carrieriq/iqagent/client/metrics/mm/MM02;
    .locals 1
    .parameter "size"

    .prologue
    .line 179
    new-array v0, p1, [Lcom/carrieriq/iqagent/client/metrics/mm/MM02;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/carrieriq/iqagent/client/metrics/mm/MM02$1;->newArray(I)[Lcom/carrieriq/iqagent/client/metrics/mm/MM02;

    move-result-object v0

    return-object v0
.end method
