.class final Lcom/android/lgesettings/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/A2dpProfile$1;,
        Lcom/android/lgesettings/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    sput-boolean v3, Lcom/android/lgesettings/bluetooth/A2dpProfile;->V:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .parameter "context"
    .parameter "localAdapter"
    .parameter "deviceManager"
    .parameter "profileManager"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 103
    iput-object p3, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    .line 105
    iput-object p4, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 107
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/android/lgesettings/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/lgesettings/bluetooth/A2dpProfile;Lcom/android/lgesettings/bluetooth/A2dpProfile$1;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 109
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/A2dpProfile;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/A2dpProfile;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/A2dpProfile;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/bluetooth/A2dpProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 130
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    .line 139
    :goto_0
    return v3

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 136
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 139
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/16 v1, 0x64

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 230
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "A2dpProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 235
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 226
    const v0, 0x7f020171

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I
    .locals 1
    .parameter "btClass"
    .parameter "isConnected"

    .prologue
    .line 246
    if-eqz p2, :cond_0

    const v0, 0x7f020172

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020171

    goto :goto_0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 208
    const v0, 0x7f0801b5

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 213
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 215
    :pswitch_1
    const v1, 0x7f0801cd

    goto :goto_0

    .line 218
    :pswitch_2
    const v1, 0x7f0801c6

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method isA2dpPlaying()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    move v1, v2

    .line 196
    :goto_0
    return v1

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 196
    goto :goto_0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    if-eqz p2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "A2DP"

    return-object v0
.end method
