.class Lcom/android/lgesettings/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RadioInfo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/lgesettings/RadioInfo$3;->this$0:Lcom/android/lgesettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$3;->this$0:Lcom/android/lgesettings/RadioInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/RadioInfo;->finish()V

    .line 406
    return-void
.end method
