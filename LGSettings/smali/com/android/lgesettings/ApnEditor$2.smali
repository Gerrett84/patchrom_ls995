.class Lcom/android/lgesettings/ApnEditor$2;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/ApnEditor;->deleteApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/lgesettings/ApnEditor$2;->this$0:Lcom/android/lgesettings/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1385
    invoke-static {}, Lcom/android/lgesettings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DelteApn Cancel Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return-void
.end method
