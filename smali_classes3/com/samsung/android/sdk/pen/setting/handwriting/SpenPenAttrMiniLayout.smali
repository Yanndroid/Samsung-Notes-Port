.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;,
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenPenAttrMiniLayout"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAlphaProgress:I

.field private mCurrentMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

.field private mInitComplete:Z

.field private mLayoutOrientation:I

.field private final mOnSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

.field private mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

.field private mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

.field private mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

.field private mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

.field private mSizeProgress:I

.field private mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

.field private mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

.field private mSupportSelected:Z

.field private mWidthItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOnSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layoutOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenAttrMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mLayoutOrientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->initView(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSupportSelected:Z

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mCurrentMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeProgress:I

    return p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mAlphaProgress:I

    return p1
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->isRunningSliderAnimation()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setItemLabelVisibility(ZZ)V

    return-void
.end method

.method private changeSliderAnimation(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->hideOpacityAnimation()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mAlphaProgress:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeProgress:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->showSizeAnimation(II)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->OPACITY:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeProgress:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mAlphaProgress:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->showOpacityAnimation(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private decideRadiusDir()Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_START:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_TOP:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    return-object v0
.end method

.method private getLayoutId()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_attr_land_layout:I

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_attr_layout:I

    return v0
.end method

.method private getSliderResourceId()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_slider_land_layout:I

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_slider_layout:I

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->decideRadiusDir()Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->initView(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;)V

    sget v0, Lcom/samsung/android/spen/R$id;->slider_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->getSliderResourceId()I

    move-result v3

    invoke-direct {v1, p1, v3, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    sget v3, Lcom/samsung/android/spen/R$id;->seek_bar:I

    invoke-direct {p0, p1, v1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSeekBarTransition(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->getSliderResourceId()I

    move-result v4

    invoke-direct {v1, p1, v4, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSeekBarTransition(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    sget p1, Lcom/samsung/android/spen/R$id;->attr_root:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$id;->attr_size_item:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_thickness:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/spen/R$id;->attr_opacity_item:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_opacity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/samsung/android/spen/R$id;->attr_fixed_width_item:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mWidthItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    return-void
.end method

.method private isHorizontalLayout()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mLayoutOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRunningSliderAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->isRunningShowHideAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->isRunningShowHideAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setItemLabelVisibility(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setLabelVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setLabelVisibility(I)V

    :cond_3
    return-void
.end method

.method private setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SIZE"

    goto :goto_0

    :cond_0
    const-string v1, "OPACITY"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenAttrMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mCurrentMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSupportSelected:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mCurrentMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    sget-object v3, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->OPACITY:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {p1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSupportSelected:Z

    move v5, v1

    move v3, v2

    move v2, v5

    goto :goto_2

    :cond_3
    move v3, v1

    move v5, v4

    move v4, v3

    :goto_2
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->changeSliderAnimation(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mWidthItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method private setSeekBarTransition(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->isHorizontalLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTranslationX()F

    move-result p2

    const/high16 p3, -0x40800000    # -1.0f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTranslationX(F)V

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setRotation(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSliderListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->setOnLabelListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    return-void
.end method

.method public getMode()Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mCurrentMode:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    return-object v0
.end method

.method public setAttributeVisibility(IIZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAttributeVisibility() opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fixedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenAttrMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mWidthItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSupportSelected:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    if-eqz v0, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->getMode()Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    move-result-object p1

    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    return-void
.end method

.method public setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setMode(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacityItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityMiniView;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->getAlphaToPercent(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mAlphaProgress:I

    return-void
.end method

.method public setPenWidth(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mWidthItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setPenInfo(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mWidthItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->setPenWidth(ZZ)V

    return-void
.end method

.method public setSizeLevel(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setSizeLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setValue(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setPenInfo(Ljava/lang/String;II)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeProgress:I

    return-void
.end method

.method public setSliderListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->getSliderView()Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOnSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSliderListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOpacitySlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->getSliderView()Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->mOnSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->setSliderListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;)V

    :cond_2
    return-void
.end method
