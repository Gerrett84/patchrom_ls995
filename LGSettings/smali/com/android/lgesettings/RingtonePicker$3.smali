.class Lcom/android/lgesettings/RingtonePicker$3;
.super Ljava/lang/Object;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RingtonePicker;->confirmDialog()V
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
    .line 1063
    iput-object p1, p0, Lcom/android/lgesettings/RingtonePicker$3;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.lge.music"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1069
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker$3;->this$0:Lcom/android/lgesettings/RingtonePicker;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/RingtonePicker;->startActivity(Landroid/content/Intent;)V

    .line 1072
    return-void
.end method
