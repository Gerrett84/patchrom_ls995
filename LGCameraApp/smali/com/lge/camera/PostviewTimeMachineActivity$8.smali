.class Lcom/lge/camera/PostviewTimeMachineActivity$8;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1204
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v6, p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 1206
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->isPausing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$700(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/Timer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1400(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    const/high16 v7, 0x40a0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1209
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1408(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    .line 1268
    :cond_1
    :goto_0
    return-void

    .line 1214
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    if-gez v6, :cond_3

    .line 1215
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v7, 0x1

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V
    invoke-static {v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1600(Lcom/lge/camera/PostviewTimeMachineActivity;Z)V

    .line 1216
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1264
    :catch_0
    move-exception v3

    .line 1265
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Exception!"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1266
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V
    invoke-static {v6, v10}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1600(Lcom/lge/camera/PostviewTimeMachineActivity;Z)V

    goto :goto_0

    .line 1220
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 1222
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1408(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    goto :goto_0

    .line 1225
    :cond_4
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTimeMachineAnimationRunnable-mTimerCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v7, 0x0

    #setter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I
    invoke-static {v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1402(Lcom/lge/camera/PostviewTimeMachineActivity;I)I

    .line 1228
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1229
    const/16 v2, 0xa8c

    .line 1230
    .local v2, clockInterval:I
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineClockMinuteAnimation(I)V
    invoke-static {v6, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1700(Lcom/lge/camera/PostviewTimeMachineActivity;I)V

    .line 1231
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineClockSecAnimation(I)V
    invoke-static {v6, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1800(Lcom/lge/camera/PostviewTimeMachineActivity;I)V

    .line 1234
    .end local v2           #clockInterval:I
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const v7, 0x7f090134

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1235
    .local v5, frameView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const v7, 0x7f090124

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1236
    .local v4, frameBackView:Landroid/widget/ImageView;
    if-eqz v5, :cond_6

    if-nez v4, :cond_7

    .line 1237
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v7, 0x0

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V
    invoke-static {v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1600(Lcom/lge/camera/PostviewTimeMachineActivity;Z)V

    goto/16 :goto_0

    .line 1241
    :cond_7
    const/4 v0, 0x0

    .line 1242
    .local v0, bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 1244
    .local v1, bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1245
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v8

    const/4 v9, 0x0

    #calls: Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V
    invoke-static {v6, v7, v8, v9}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1900(Lcom/lge/camera/PostviewTimeMachineActivity;ZII)V

    .line 1247
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1248
    .restart local v0       #bmpD1:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    if-lt v6, v11, :cond_8

    .line 1249
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1252
    .restart local v1       #bmpD2:Landroid/graphics/drawable/BitmapDrawable;
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1253
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1256
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1258
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v6

    if-lt v6, v11, :cond_9

    .line 1259
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$2000(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1260
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTimeMachineAnimationRunnable-startAnimation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    #getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I
    invoke-static {v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_9
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity$8;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-static {v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1510(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
