.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS6E.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucRadioMode:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "GS6E"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 63
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 64
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;->ucRadioMode:B

    .line 65
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 68
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS6E;->ucRadioMode:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
