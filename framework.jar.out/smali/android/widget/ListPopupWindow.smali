.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private isRegistered:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mSplitModeReceiver:Landroid/content/BroadcastReceiver;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 178
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 70
    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 75
    iput-boolean v2, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 76
    iput-boolean v2, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 77
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 80
    iput v2, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 91
    new-instance v1, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 92
    new-instance v1, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 93
    new-instance v1, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    .line 94
    new-instance v1, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 988
    iput-boolean v2, p0, Landroid/widget/ListPopupWindow;->isRegistered:Z

    .line 989
    new-instance v1, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mSplitModeReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 204
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 205
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 207
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 208
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mLayoutDirection:I

    .line 209
    return-void
.end method

.method static synthetic access$600(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 1008
    const/16 v17, 0x0

    .line 1010
    .local v17, otherHeights:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-nez v1, :cond_7

    .line 1011
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1019
    .local v8, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1029
    new-instance v3, Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v8, v1}, Landroid/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1033
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    new-instance v3, Landroid/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1059
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1061
    .local v9, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1062
    .local v13, hintView:Landroid/view/View;
    if-eqz v13, :cond_2

    .line 1065
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1066
    .local v11, hintContainer:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1068
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1072
    .local v12, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1084
    const-string v1, "ListPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, -0x8000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1091
    .local v20, widthSpec:I
    const/4 v10, 0x0

    .line 1092
    .local v10, heightSpec:I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1094
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1095
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    .line 1098
    move-object v9, v11

    .line 1101
    .end local v10           #heightSpec:I
    .end local v11           #hintContainer:Landroid/widget/LinearLayout;
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1115
    .end local v8           #context:Landroid/content/Context;
    .end local v13           #hintView:Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 1116
    .local v18, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1117
    .local v7, background:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 1118
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1119
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v3

    .line 1123
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1131
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/4 v14, 0x1

    .line 1133
    .local v14, ignoreBottomDecorations:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v1, v3, v4, v14}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v16

    .line 1136
    .local v16, maxHeight:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 1137
    :cond_5
    add-int v1, v16, v18

    .line 1164
    :goto_5
    return v1

    .line 1029
    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    .end local v9           #dropDownView:Landroid/view/ViewGroup;
    .end local v14           #ignoreBottomDecorations:Z
    .end local v16           #maxHeight:I
    .end local v18           #padding:I
    .restart local v8       #context:Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1074
    .restart local v9       #dropDownView:Landroid/view/ViewGroup;
    .restart local v11       #hintContainer:Landroid/widget/LinearLayout;
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #hintView:Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1079
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1103
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #dropDownView:Landroid/view/ViewGroup;
    .end local v11           #hintContainer:Landroid/widget/LinearLayout;
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #hintView:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1104
    .restart local v9       #dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 1105
    .local v19, view:Landroid/view/View;
    if-eqz v19, :cond_3

    .line 1106
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1108
    .restart local v12       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    goto/16 :goto_2

    .line 1127
    .end local v12           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #view:Landroid/view/View;
    .restart local v7       #background:Landroid/graphics/drawable/Drawable;
    .restart local v18       #padding:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 1131
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 1141
    .restart local v14       #ignoreBottomDecorations:Z
    .restart local v16       #maxHeight:I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v1, :pswitch_data_1

    .line 1155
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1158
    .local v2, childWidthSpec:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v15

    .line 1162
    .local v15, listContent:I
    if-lez v15, :cond_b

    add-int v17, v17, v18

    .line 1164
    :cond_b
    add-int v1, v15, v17

    goto :goto_5

    .line 1143
    .end local v2           #childWidthSpec:I
    .end local v15           #listContent:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x8000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1147
    .restart local v2       #childWidthSpec:I
    goto :goto_6

    .line 1149
    .end local v2           #childWidthSpec:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1153
    .restart local v2       #childWidthSpec:I
    goto :goto_6

    .line 1072
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1141
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 658
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 660
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 661
    check-cast v0, Landroid/view/ViewGroup;

    .line 662
    .local v0, group:Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 665
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 715
    .local v0, list:Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 717
    const/4 v1, 0x1

    #setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 718
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->hideSelector()V

    .line 719
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 721
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->isRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mSplitModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mSplitModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->isRegistered:Z

    .line 641
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 642
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 643
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 644
    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 645
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 765
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    const-wide/high16 v0, -0x8000

    .line 791
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    const/4 v0, -0x1

    .line 778
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    const/4 v0, 0x0

    .line 804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 837
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 843
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    .line 847
    :cond_0
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 850
    .local v4, curIndex:I
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 852
    .local v2, below:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 855
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 856
    .local v5, firstItem:I
    const/high16 v6, -0x8000

    .line 858
    .local v6, lastItem:I
    if-eqz v0, :cond_1

    .line 859
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 860
    .local v1, allEnabled:Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 862
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 866
    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 870
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 871
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 872
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 918
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4       #curIndex:I
    :cond_4
    move v2, v8

    .line 850
    goto :goto_0

    .line 860
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_5
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 862
    :cond_6
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 877
    .end local v1           #allEnabled:Z
    :cond_7
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    #setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 880
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 883
    .local v3, consumed:Z
    if-eqz v3, :cond_9

    .line 886
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 891
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 892
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 894
    sparse-switch p1, :sswitch_data_0

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    :cond_8
    move v7, v8

    .line 918
    goto :goto_3

    .line 904
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 907
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 910
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 894
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 962
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 965
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 966
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 967
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 968
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 983
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 972
    .restart local v0       #anchorView:Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 973
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 974
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 975
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 977
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 978
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 983
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 933
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 934
    .local v0, consumed:Z
    if-eqz v0, :cond_0

    .line 935
    sparse-switch p1, :sswitch_data_0

    .line 947
    .end local v0           #consumed:Z
    :cond_0
    :goto_0
    return v0

    .line 941
    .restart local v0       #consumed:Z
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 947
    .end local v0           #consumed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 935
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .parameter "position"

    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 749
    .local v1, list:Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 750
    .local v2, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 751
    .local v6, adapter:Landroid/widget/ListAdapter;
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 753
    .end local v1           #list:Landroid/widget/ListPopupWindow$DropDownListView;
    .end local v2           #child:Landroid/view/View;
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 755
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 219
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 223
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 224
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 228
    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    :cond_2
    return-void

    .line 220
    :cond_3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 398
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 399
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 369
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 370
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 360
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 461
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 462
    .local v0, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 464
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 302
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 303
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 287
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 288
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 483
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    .line 484
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 414
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 415
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 680
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 681
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 822
    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 823
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selector"

    .prologue
    .line 344
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 345
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .parameter "modal"

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    .line 267
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 268
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 654
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 655
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 494
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 495
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "selectedListener"

    .prologue
    .line 505
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 506
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 243
    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    .line 244
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .parameter "prompt"

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 516
    .local v0, showing:Z
    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    .line 519
    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 520
    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 523
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 699
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 700
    .local v0, list:Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 701
    const/4 v1, 0x0

    #setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 702
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 703
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 707
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 326
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 433
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 435
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 451
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    .line 452
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 537
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v7

    .line 539
    .local v7, height:I
    const/4 v4, 0x0

    .line 540
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 543
    .local v5, heightSpec:I
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->isRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mSplitModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 544
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 545
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "com.lge.splitwindow.LAUNCH"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mSplitModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 547
    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->isRegistered:Z

    .line 551
    .end local v6           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v8

    .line 552
    .local v8, noInputMethod:Z
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 554
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 555
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_3

    .line 558
    const/4 v4, -0x1

    .line 565
    :goto_1
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_9

    .line 568
    if-eqz v8, :cond_5

    move v5, v7

    .line 569
    :goto_2
    if-eqz v8, :cond_7

    .line 570
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_6

    move v0, v3

    :goto_3
    invoke-virtual {v9, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 585
    :goto_4
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 587
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 628
    :cond_1
    :goto_6
    return-void

    :cond_2
    move v0, v2

    .line 552
    goto :goto_0

    .line 559
    :cond_3
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v10, :cond_4

    .line 560
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    .line 562
    :cond_4
    iget v4, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_5
    move v5, v3

    .line 568
    goto :goto_2

    :cond_6
    move v0, v2

    .line 570
    goto :goto_3

    .line 574
    :cond_7
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_8

    move v0, v3

    :goto_7
    invoke-virtual {v9, v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_7

    .line 579
    :cond_9
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v10, :cond_a

    .line 580
    move v5, v7

    goto :goto_4

    .line 582
    :cond_a
    iget v5, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_b
    move v1, v2

    .line 585
    goto :goto_5

    .line 590
    :cond_c
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_f

    .line 591
    const/4 v4, -0x1

    .line 600
    :goto_8
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_11

    .line 601
    const/4 v5, -0x1

    .line 610
    :goto_9
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 611
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 615
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v9, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v9, :cond_13

    iget-boolean v9, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v9, :cond_13

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 616
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 617
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 619
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 621
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 622
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 624
    :cond_e
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 593
    :cond_f
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v10, :cond_10

    .line 594
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 596
    :cond_10
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 603
    :cond_11
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v10, :cond_12

    .line 604
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    .line 606
    :cond_12
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_13
    move v1, v2

    .line 615
    goto :goto_a
.end method