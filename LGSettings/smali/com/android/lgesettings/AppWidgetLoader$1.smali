.class Lcom/android/lgesettings/AppWidgetLoader$1;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/lgesettings/AppWidgetLoader;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AppWidgetLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader$1;,"Lcom/android/lgesettings/AppWidgetLoader.1;"
    iput-object p1, p0, Lcom/android/lgesettings/AppWidgetLoader$1;->this$0:Lcom/android/lgesettings/AppWidgetLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/AppWidgetLoader$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;TItem;)I"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader$1;,"Lcom/android/lgesettings/AppWidgetLoader.1;"
    .local p1, lhs:Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;,"TItem;"
    .local p2, rhs:Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;,"TItem;"
    iget-object v0, p0, Lcom/android/lgesettings/AppWidgetLoader$1;->mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader$1;,"Lcom/android/lgesettings/AppWidgetLoader.1;"
    check-cast p1, Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;

    .end local p1
    check-cast p2, Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/AppWidgetLoader$1;->compare(Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;)I

    move-result v0

    return v0
.end method