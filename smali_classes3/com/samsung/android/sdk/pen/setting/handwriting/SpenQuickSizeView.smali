.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;,
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenQuickSizeView"


# instance fields
.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;

.field private mSeekBarView:Landroid/view/View;

.field private mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

.field private mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSeekBarView:Landroid/view/View;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_bottom_align_slider_layout:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;-><init>(Landroid/content/Context;ZI)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    sget v1, Lcom/samsung/android/spen/R$color;->setting_pen_size_preview_color:I

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->setOnLabelListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSeekBarView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSeekBarView:Landroid/view/View;

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;

    return-void
.end method

.method public setSizeLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    return-void
.end method

.method public setSliderListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    return-void
.end method
