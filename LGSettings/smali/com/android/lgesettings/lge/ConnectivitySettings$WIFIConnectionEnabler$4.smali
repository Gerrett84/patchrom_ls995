.class Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field final synthetic val$bEnable:Z

.field final synthetic val$nSoftwareType:I


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iput-boolean p2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;->val$bEnable:Z

    iput p3, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;->val$nSoftwareType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iget-boolean v1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;->val$bEnable:Z

    iget v2, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$4;->val$nSoftwareType:I

    #calls: Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->SendWIFIConnectionStatus(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->access$1000(Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V

    .line 728
    return-void
.end method
