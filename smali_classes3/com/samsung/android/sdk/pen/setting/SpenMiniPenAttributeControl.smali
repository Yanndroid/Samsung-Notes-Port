.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;
.super Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenMiniPenAttributeControl"


# instance fields
.field private final mAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

.field private mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

.field private mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

.field private mContext:Landroid/content/Context;

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

.field private mInitComplete:Z

.field private mIsVisibleAlpha:Z

.field private mIsVisibleWidth:Z

.field private mItemGroup:Landroid/widget/FrameLayout;

.field private mItemString:Ljava/lang/String;

.field private mOpacityColor:I

.field private mPopupMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

.field private mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

.field private mViewMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mViewMode:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mOpacityColor:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mIsVisibleAlpha:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mIsVisibleWidth:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mOpacityColor:I

    return p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mOpacityColor:I

    return p1
.end method

.method private setItemAttribute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lcom/samsung/android/spen/R$drawable;->setting_mini_attr_bg:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setColorBackground(I)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/spen/R$drawable;->blank_stroke_dot_detail:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->setting_mini_attr_bg:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setDynamicColorBackground(II)V

    :goto_0
    return-void
.end method

.method private setPopupAttributeVisibility(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setAttributeVisibility(IIZ)V

    :cond_0
    return-void
.end method

.method private updateItemOpacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setColor(I)V

    :cond_0
    return-void
.end method

.method private updateItemSizeLevel(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setSizeLevel(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setColor(I)V

    :cond_0
    return-void
.end method

.method private updatePopupOpacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setOpacity(I)V

    :cond_0
    return-void
.end method

.method private updatePopupSizeLevel(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSizeLevel(II)V

    :cond_0
    return-void
.end method

.method private updatePopupWidth(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setPenWidth(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->clearView()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    return-void
.end method

.method public getNormalView(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_mini_home_attr:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemGroup:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setNormalViewTooltip(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemGroup:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public getPopupView()Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSliderListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mViewMode:I

    return v0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_pen_thickness:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemString:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    return-void
.end method

.method public restoreViewState()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->hasRestoreState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mPopupMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mIsVisibleAlpha:Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mIsVisibleWidth:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setAttributeVisibility(ZZZ)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->setRestoreState(Z)V

    return-void
.end method

.method public saveViewState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->setRestoreState(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->getMode()Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mPopupMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAttributeVisibility(ZZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->getViewMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setItemAttribute(Z)V

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setPopupAttributeVisibility(IIZ)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setPopupAttributeVisibility(IIZ)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setItemAttribute(Z)V

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mIsVisibleAlpha:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mIsVisibleWidth:Z

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    return-void
.end method

.method public setNormalViewTooltip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mItemString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setOpacity(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mOpacityColor:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updateItemOpacity(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updatePopupOpacity(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updatePopupOpacity(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updateItemOpacity(I)V

    :goto_0
    return-void
.end method

.method public setPenWidth(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updatePopupWidth(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSizeLevel(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updateItemSizeLevel(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updatePopupSizeLevel(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updatePopupSizeLevel(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->updateItemSizeLevel(II)V

    :goto_0
    return-void
.end method

.method public setSliderListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSliderListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;)V

    return-void
.end method

.method public setViewMode(IZ)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setViewMode() viewMode["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mViewMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] InitComplete="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenMiniPenAttributeControl"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mInitComplete:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mViewMode:I

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mAttrPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->mViewMode:I

    :cond_3
    :goto_1
    return-void
.end method
