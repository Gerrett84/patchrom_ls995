.class Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference$4;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference$4;->this$0:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference$4;->this$0:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->access$300(Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 177
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference$4;->this$0:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->access$300(Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference$4;->this$0:Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v1}, Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;->access$400(Lcom/android/lgesettings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
