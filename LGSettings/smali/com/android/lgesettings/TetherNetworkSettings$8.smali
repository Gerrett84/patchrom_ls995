.class Lcom/android/lgesettings/TetherNetworkSettings$8;
.super Ljava/lang/Object;
.source "TetherNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$8;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$8;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->access$000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    .line 670
    return-void
.end method
