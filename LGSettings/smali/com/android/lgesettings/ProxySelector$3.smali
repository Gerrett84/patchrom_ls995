.class Lcom/android/lgesettings/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ProxySelector;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/lgesettings/ProxySelector$3;->this$0:Lcom/android/lgesettings/ProxySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector$3;->this$0:Lcom/android/lgesettings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/lgesettings/ProxySelector;->populateFields()V

    .line 296
    return-void
.end method
