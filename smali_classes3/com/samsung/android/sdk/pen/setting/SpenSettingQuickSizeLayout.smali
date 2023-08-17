.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnDataChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingQuickSizeLayout"


# instance fields
.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mDisallowPreview:Z

.field private mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

.field private mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

.field private mPreviewOffset:I

.field private mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

.field private mSlider:Landroid/view/View;

.field private mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

.field private mSliderPadding:I

.field private mSliderStartPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mDisallowPreview:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->initPreviewOffset()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->setPreviewPosition(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mDisallowPreview:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_quick_size_layout_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_quick_size_layout_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_popup_bg_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    sget p1, Lcom/samsung/android/spen/R$drawable;->dialog_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->setShadowAlpha(Landroid/view/View;F)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->setSliderListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;)V

    return-void
.end method

.method private initPreviewOffset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderStartPos:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreviewOffset:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setPreviewPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    rsub-int/lit8 p1, p1, 0x64

    :cond_0
    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderStartPos:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreviewOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setX(F)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSlider:Landroid/view/View;

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnDataChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;)V

    :cond_0
    return-void
.end method

.method public setDisallowPreview(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mDisallowPreview:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    if-nez v0, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_quick_size_preview_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPreview:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->setSizeLevel(I)V

    return-void
.end method

.method public setSizeLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->setSizeLevel(I)V

    :cond_0
    return-void
.end method

.method public setSliderLabelListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    return-void
.end method
