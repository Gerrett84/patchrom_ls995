.class Lcom/android/lgesettings/TetherNetworkDialog$5;
.super Ljava/lang/Object;
.source "TetherNetworkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkDialog$5;->this$0:Lcom/android/lgesettings/TetherNetworkDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkDialog$5;->this$0:Lcom/android/lgesettings/TetherNetworkDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/TetherNetworkDialog;->finish()V

    .line 117
    return-void
.end method
