.class Lcom/lge/smartshare/iface/aidl/DataVolumeInfo$1;
.super Ljava/lang/Object;
.source "DataVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    new-instance v0, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    invoke-direct {v0, p1}, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    new-array v0, p1, [Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo$1;->newArray(I)[Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    move-result-object v0

    return-object v0
.end method
