.class Lcom/android/internal/telephony/gfit/GfitUtils$4;
.super Ljava/lang/Object;
.source "GfitUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopupGlobal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

.field final synthetic val$linear:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$4;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iput-object p2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$4;->val$linear:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$4;->val$linear:Landroid/widget/LinearLayout;

    const v2, 0x20e003f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1122
    .local v0, ignoreGlobalPopup:Landroid/widget/CheckBox;
    packed-switch p2, :pswitch_data_0

    .line 1137
    :goto_0
    return-void

    .line 1125
    :pswitch_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    .line 1126
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$4;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNoGlobalPopupNeeded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$4;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    const-string v2, "Set global mode"

    #calls: Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$300(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$4;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    .line 1134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1125
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1122
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method