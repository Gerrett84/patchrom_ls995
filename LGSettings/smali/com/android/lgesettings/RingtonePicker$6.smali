.class Lcom/android/lgesettings/RingtonePicker$6;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RingtonePicker;->do_InitCancelOkBtn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/lgesettings/RingtonePicker$6;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker$6;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1392
    return-void
.end method