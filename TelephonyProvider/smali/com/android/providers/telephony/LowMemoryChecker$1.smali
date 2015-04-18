.class final Lcom/android/providers/telephony/LowMemoryChecker$1;
.super Ljava/lang/Object;
.source "LowMemoryChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/LowMemoryChecker;->showWarningIfNecessary(Landroid/app/Activity;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finishActivity:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/providers/telephony/LowMemoryChecker$1;->val$finishActivity:Z

    iput-object p2, p0, Lcom/android/providers/telephony/LowMemoryChecker$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/providers/telephony/LowMemoryChecker$1;->val$finishActivity:Z

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lcom/android/providers/telephony/LowMemoryChecker;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/android/providers/telephony/LowMemoryChecker;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 41
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/telephony/LowMemoryChecker;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 42
    iget-object v0, p0, Lcom/android/providers/telephony/LowMemoryChecker$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    :cond_1
    return-void
.end method
