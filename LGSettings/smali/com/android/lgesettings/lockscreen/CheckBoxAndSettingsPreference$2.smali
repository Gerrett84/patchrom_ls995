.class Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$2;
.super Ljava/lang/Object;
.source "CheckBoxAndSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$2;->this$0:Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "clickedView"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$2;->this$0:Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->onSettingsButtonClicked()V

    .line 68
    return-void
.end method
