.class Lcom/android/server/connectivity/TetherNetwork$1;
.super Ljava/lang/Object;
.source "TetherNetwork.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetwork;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/TetherNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork$1;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$1;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/server/connectivity/TetherNetwork;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/server/connectivity/TetherNetwork;->access$002(Lcom/android/server/connectivity/TetherNetwork;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 133
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$1;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/connectivity/TetherNetwork;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$002(Lcom/android/server/connectivity/TetherNetwork;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 136
    return-void
.end method
