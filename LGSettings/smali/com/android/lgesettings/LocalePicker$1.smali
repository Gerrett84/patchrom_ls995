.class Lcom/android/lgesettings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/lgesettings/LocalePicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/lgesettings/LocalePicker$1;->this$0:Lcom/android/lgesettings/LocalePicker;

    iput p2, p0, Lcom/android/lgesettings/LocalePicker$1;->val$dialogId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker$1;->this$0:Lcom/android/lgesettings/LocalePicker;

    iget v1, p0, Lcom/android/lgesettings/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/LocalePicker;->removeDialog(I)V

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker$1;->this$0:Lcom/android/lgesettings/LocalePicker;

    invoke-virtual {v0}, Lcom/android/lgesettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/LocalePicker$1;->this$0:Lcom/android/lgesettings/LocalePicker;

    #getter for: Lcom/android/lgesettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/lgesettings/LocalePicker;->access$000(Lcom/android/lgesettings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 88
    return-void
.end method
