.class public Lcom/android/lgesettings/DebugIntentSender;
.super Landroid/app/Activity;
.source "DebugIntentSender.java"


# instance fields
.field private mAccountField:Landroid/widget/EditText;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mDataField:Landroid/widget/EditText;

.field private mIntentField:Landroid/widget/EditText;

.field private mResourceField:Landroid/widget/EditText;

.field private mSendBroadcastButton:Landroid/widget/Button;

.field private mStartActivityButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/lgesettings/DebugIntentSender$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DebugIntentSender$1;-><init>(Lcom/android/lgesettings/DebugIntentSender;)V

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DebugIntentSender;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mAccountField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mResourceField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->setContentView(I)V

    .line 72
    const v0, 0x7f0a016f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    const-string v1, "android.intent.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 76
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    const v1, 0x1080018

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 79
    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mAccountField:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mResourceField:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
