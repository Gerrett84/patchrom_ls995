.class Lcom/android/lgesettings/ProxySelector$2;
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
    .line 284
    iput-object p1, p0, Lcom/android/lgesettings/ProxySelector$2;->this$0:Lcom/android/lgesettings/ProxySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector$2;->this$0:Lcom/android/lgesettings/ProxySelector;

    iget-object v0, v0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector$2;->this$0:Lcom/android/lgesettings/ProxySelector;

    iget-object v0, v0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector$2;->this$0:Lcom/android/lgesettings/ProxySelector;

    iget-object v0, v0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method
