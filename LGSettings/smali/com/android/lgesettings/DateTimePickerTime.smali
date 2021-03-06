.class public Lcom/android/lgesettings/DateTimePickerTime;
.super Landroid/app/Activity;
.source "DateTimePickerTime.java"


# instance fields
.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/lgesettings/DateTimePickerTime$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DateTimePickerTime$1;-><init>(Lcom/android/lgesettings/DateTimePickerTime;)V

    iput-object v0, p0, Lcom/android/lgesettings/DateTimePickerTime;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 68
    new-instance v0, Lcom/android/lgesettings/DateTimePickerTime$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DateTimePickerTime$2;-><init>(Lcom/android/lgesettings/DateTimePickerTime;)V

    iput-object v0, p0, Lcom/android/lgesettings/DateTimePickerTime;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimePickerTime;->requestWindowFeature(I)Z

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DateTimePickerTime;->showDialog(I)V

    .line 21
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    .line 42
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/lgesettings/DateTimePickerTime;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 47
    :cond_0
    return-object v0

    .line 28
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 29
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/lgesettings/DateTimePickerTime;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 35
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
