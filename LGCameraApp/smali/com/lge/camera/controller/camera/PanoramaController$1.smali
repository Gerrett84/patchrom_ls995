.class Lcom/lge/camera/controller/camera/PanoramaController$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PanoramaController;->showGuideCenterText(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;

.field final synthetic val$isShowing:Z

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->val$isShowing:Z

    iput p3, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->val$resId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 331
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v7

    invoke-interface {v7, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 333
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v7

    const v10, 0x7f090108

    invoke-interface {v7, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 335
    .local v1, guide:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_4

    .line 336
    iget-boolean v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->val$isShowing:Z

    if-eqz v7, :cond_3

    .line 337
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v7

    const v10, 0x7f09010a

    invoke-interface {v7, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 338
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 339
    iget v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->val$resId:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 341
    const/4 v7, 0x2

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 342
    .local v3, previewSizeOnScreen:[I
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, sizeOnScreenString:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 344
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 347
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v0

    .line 348
    .local v0, degree:I
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-nez v7, :cond_1

    .line 349
    add-int/lit16 v7, v0, 0x10e

    rem-int/lit16 v0, v7, 0x168

    .line 352
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v7

    const v10, 0x7f090109

    invoke-interface {v7, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 353
    .local v5, textLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    .local v2, lpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 355
    if-eqz v0, :cond_2

    const/16 v7, 0xb4

    if-ne v0, v7, :cond_5

    :cond_2
    move v7, v9

    :goto_0
    aget v7, v3, v7

    iget-object v10, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v10}, Lcom/lge/camera/controller/camera/PanoramaController;->access$800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v10

    const v11, 0x7f090106

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v11}, Lcom/lge/camera/controller/camera/PanoramaController;->access$900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a008d

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    const/4 v7, -0x2

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 360
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 361
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 362
    const-string v7, "NO_R2L"

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 368
    .end local v0           #degree:I
    .end local v2           #lpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #previewSizeOnScreen:[I
    .end local v4           #sizeOnScreenString:Ljava/lang/String;
    .end local v5           #textLayout:Landroid/widget/RelativeLayout;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_3
    iget-boolean v7, p0, Lcom/lge/camera/controller/camera/PanoramaController$1;->val$isShowing:Z

    if-eqz v7, :cond_6

    :goto_1
    invoke-virtual {v1, v8}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 370
    :cond_4
    return-void

    .restart local v0       #degree:I
    .restart local v2       #lpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #previewSizeOnScreen:[I
    .restart local v4       #sizeOnScreenString:Ljava/lang/String;
    .restart local v5       #textLayout:Landroid/widget/RelativeLayout;
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_5
    move v7, v8

    .line 355
    goto :goto_0

    .line 368
    .end local v0           #degree:I
    .end local v2           #lpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #previewSizeOnScreen:[I
    .end local v4           #sizeOnScreenString:Ljava/lang/String;
    .end local v5           #textLayout:Landroid/widget/RelativeLayout;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_6
    const/4 v8, 0x4

    goto :goto_1

    .line 341
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
