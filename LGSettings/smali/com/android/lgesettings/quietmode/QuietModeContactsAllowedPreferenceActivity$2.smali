.class Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$2;
.super Ljava/lang/Object;
.source "QuietModeContactsAllowedPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->updateNoContactsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->showDialog(I)V

    .line 660
    return-void
.end method
