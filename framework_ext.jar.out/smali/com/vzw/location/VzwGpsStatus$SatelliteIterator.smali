.class final Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vzw/location/VzwGpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

.field final synthetic this$0:Lcom/vzw/location/VzwGpsStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsStatus;[Lcom/vzw/location/VzwGpsSatellite;)V
    .locals 1
    .parameter
    .parameter "satellites"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->this$0:Lcom/vzw/location/VzwGpsStatus;

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    .line 24
    iput-object p2, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 33
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x1

    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public next()Lcom/vzw/location/VzwGpsSatellite;
    .locals 4

    .prologue
    .line 37
    :cond_0
    iget v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 43
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    iget v2, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v1, v2

    .line 39
    .local v0, satellite:Lcom/vzw/location/VzwGpsSatellite;
    iget-boolean v1, v0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    .line 40
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;->next()Lcom/vzw/location/VzwGpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
