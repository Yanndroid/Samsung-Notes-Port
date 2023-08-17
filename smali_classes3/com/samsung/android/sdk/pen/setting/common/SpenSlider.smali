.class public Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;,
        Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;,
        Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x64

.field public static final DEFAULT_MIN_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenSlider"


# instance fields
.field private final VALUE_FACTOR_EXPAND_PROGRESS:I

.field private final VALUE_SUPPORT_EXPAND_PROGRESS:I

.field private mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private mColor:I

.field private mCurrentValue:I

.field private mEnableSliderAnimation:Z

.field private mFactor:I

.field private mHasOutline:Z

.field private mIsTracking:Z

.field private mLabelFormat:Ljava/lang/String;

.field private mLabelText:Landroid/widget/TextView;

.field private mMax:I

.field private mMin:I

.field private mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private mPostfixButtonClickString:Ljava/lang/String;

.field private mPostfixString:Ljava/lang/String;

.field private mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

.field private mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

.field private mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

.field private mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

.field private mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

.field private mTrackDefaultHeight:I

.field private mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

.field private mTrackMaxHeight:I

.field private mTrackMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    sget v3, Lcom/samsung/android/spen/R$layout;->setting_slider_layout:I

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    const/4 v4, 0x1

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 8

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    const/4 v4, 0x1

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 8

    sget v3, Lcom/samsung/android/spen/R$layout;->setting_slider_layout:I

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_decrease:I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_increase:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIIII)V
    .locals 8

    sget v3, Lcom/samsung/android/spen/R$layout;->setting_slider_layout:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIIIII)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->VALUE_SUPPORT_EXPAND_PROGRESS:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->VALUE_FACTOR_EXPAND_PROGRESS:I

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMin:I

    iput p5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMax:I

    const/4 p4, 0x1

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mFactor:I

    if-gt p5, v0, :cond_0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mFactor:I

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mHasOutline:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mColor:I

    invoke-direct {p0, p1, p3, p6, p7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->initView(Landroid/content/Context;III)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mEnableSliderAnimation:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mIsTracking:Z

    return p0
.end method

.method public static synthetic access$1002(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mIsTracking:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->notifyValueChangedListener(IZ)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->isRunningProgressAnimation()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateLabelText(I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateLabelPosition()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateContentDescription(IZ)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->notifyButtonClicked(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->notifyButtonLongClick(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;Z)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->requestInterceptTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mFactor:I

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->calculateValue(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mCurrentValue:I

    return p0
.end method

.method public static synthetic access$802(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mCurrentValue:I

    return p1
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->calculateProgress(I)I

    move-result p0

    return p0
.end method

.method private announceAccessibility(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixButtonClickString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixString:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private calculateProgress(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMin:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mFactor:I

    mul-int/2addr p1, v0

    return p1
.end method

.method private calculateValue(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mFactor:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMin:I

    add-int/2addr p1, v0

    return p1
.end method

.method private closeProgressAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    return-void
.end method

.method private closeSeekBarAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    return-void
.end method

.method private closeSliderAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    return-void
.end method

.method private closeTransitionAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    :cond_0
    return-void
.end method

.method private findHorizontalScrollParent(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findScrollParent(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initControlButton(II)V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/samsung/android/spen/R$id;->seek_bar_minus_button:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sget v3, Lcom/samsung/android/spen/R$id;->seek_bar_plus_button:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initControlButton(Landroid/widget/SeekBar;Landroid/widget/ImageButton;ILandroid/widget/ImageButton;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mFactor:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setFactorValue(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;)V

    return-void
.end method

.method private initSeekBar(Landroid/content/Context;F)V
    .locals 8

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMax:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->calculateProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mHasOutline:Z

    const/4 v6, 0x0

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;F)V

    return-void
.end method

.method private initSeekBarText()V
    .locals 6

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_value:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;III)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mEnableSliderAnimation:Z

    const-string v0, "%d"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelFormat:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_slider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    const-string p2, ", %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixString:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixButtonClickString:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_slider_track_default_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackDefaultHeight:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_slider_track_min_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackMinHeight:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_slider_track_max_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackMaxHeight:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->initSeekBarText()V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->initSeekBar(Landroid/content/Context;F)V

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->initControlButton(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->calculateValue(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mCurrentValue:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setSliderAnimation()V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mEnableSliderAnimation:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setSeekBarAnimation()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setProgressAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setTransitionAnimator()V

    return-void
.end method

.method private isRunningProgressAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyButtonClicked(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;->onButtonClick()V

    :cond_0
    return-void
.end method

.method private notifyButtonLongClick(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;->onStartButtonLongClick()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;->onStopButtonLongClick()V

    :goto_0
    return-void
.end method

.method private notifyValueChangedListener(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;->onChanged(IZ)V

    :cond_0
    return-void
.end method

.method private requestInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->findHorizontalScrollParent(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return-void
.end method

.method private setProgressAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;-><init>(Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    :cond_1
    return-void
.end method

.method private setSeekBarAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbDrawable()Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbStrokeDrawable()Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setTarget(Landroid/widget/SeekBar;Landroid/graphics/drawable/ScaleDrawable;Landroid/graphics/drawable/ScaleDrawable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setSliderAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackDefaultHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackMinHeight:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackMaxHeight:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getProgressDrawables()[Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setProgressInformation(III[Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbDrawables()[Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v2

    const/16 v3, 0x1e14

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setThumbInformation(II[Landroid/graphics/drawable/ScaleDrawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setThumbLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackMinHeight:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setProgress(I)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mEnableSliderAnimation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setAutoAnimation(Landroid/widget/SeekBar;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTransitionAnimator()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateColor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mColor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setColor(I)V

    :cond_0
    return-void
.end method

.method private updateContentDescription(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->announceAccessibility(IZ)V

    return-void
.end method

.method private updateLabelPosition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLabelText(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->closeSliderAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->closeSeekBarAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->closeProgressAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->closeTransitionAnimator()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelText:Landroid/widget/TextView;

    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mColor:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->calculateValue(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isRunningShowHideAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->isRunningAnimation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->findHorizontalScrollParent(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->addDisallowTouchInterceptGroup(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-direct {p0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->findScrollParent(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->addDisallowTouchInterceptGroup(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->clearDisallowTouchInterceptGroup()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setAccessibilityPostfix(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_slider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, ", %s, %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixString:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, ", %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPostfixButtonClickString:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateLabelText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateContentDescription(IZ)V

    :cond_0
    return-void
.end method

.method public setAnimationValue(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->setHeight(II)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mColor:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateColor()V

    return-void
.end method

.method public setHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->setHideAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mLabelFormat:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateLabelText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateContentDescription(IZ)V

    :cond_0
    return-void
.end method

.method public setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    return-void
.end method

.method public setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mMinusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-void
.end method

.method public setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mPlusButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    return-void
.end method

.method public setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    return-void
.end method

.method public varargs setProgressBackgroundColors([I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProgressBackgroundColors() length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setProgressColor([I)V

    :cond_0
    return-void
.end method

.method public setProgressBackgroundDrawable(Landroid/graphics/drawable/Drawable;F)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProgressBackgroundDrawable() radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSlider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->close()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mHasOutline:Z

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;F)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mEnableSliderAnimation:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setSliderAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setSeekBarAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTrackMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mTrackMinHeight:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setSliderAnimation()V

    return-void
.end method

.method public setValue(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->calculateProgress(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setValue: curr= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " needAnimation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenSlider"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mCurrentValue:I

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mProgressAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->startAnimation(II)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mCurrentValue:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->updateContentDescription(IZ)V

    return-void
.end method

.method public startHideAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->startHide()V

    :cond_0
    return-void
.end method

.method public startShowAnimation(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mSliderTransition:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->mColor:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->startShow(III)V

    :cond_0
    return-void
.end method
