.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI34;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI34.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwSizeCache:I

.field public dwSizeCode:I

.field public dwSizeData:I

.field public wNumApp:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "UI34"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 63
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
    .line 66
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->dwSizeCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->dwSizeData:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->dwSizeCache:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI34;->wNumApp:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
