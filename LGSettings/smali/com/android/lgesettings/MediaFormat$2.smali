.class Lcom/android/lgesettings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/MediaFormat$2;->this$0:Lcom/android/lgesettings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat$2;->this$0:Lcom/android/lgesettings/MediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/lgesettings/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/MediaFormat;->access$000(Lcom/android/lgesettings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/MediaFormat$2;->this$0:Lcom/android/lgesettings/MediaFormat;

    #calls: Lcom/android/lgesettings/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/lgesettings/MediaFormat;->access$100(Lcom/android/lgesettings/MediaFormat;)V

    .line 117
    :cond_0
    return-void
.end method