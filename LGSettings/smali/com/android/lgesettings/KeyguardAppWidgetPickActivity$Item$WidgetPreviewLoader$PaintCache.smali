.class Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;
.super Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
.source "KeyguardAppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaintCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;->this$1:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;->initialValue()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
