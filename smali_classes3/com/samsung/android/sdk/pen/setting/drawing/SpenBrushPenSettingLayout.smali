.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushPenSettingLayout"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

.field private mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

.field private mContext:Landroid/content/Context;

.field private mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

.field private mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private final mPenAlphaButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private final mPenAlphaChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private final mPenAlphaTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

.field private final mPenDensityButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private final mPenDensityChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private final mPenDensityTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

.field private final mPenSizeButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

.field private final mPenSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

.field private final mPenSizeTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

.field private mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/samsung/android/spen/R$style;->BasicUITheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$9;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/samsung/android/spen/R$style;->BasicUITheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$9;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->initView(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setListener()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->updateCurrentSizeLevel(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->notifySizeChanged()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->notifyOpacityChanged()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->notifyDensityChanged()V

    return-void
.end method

.method private initView(Z)V
    .locals 3

    const-string v0, "SpenBrushPenSettingLayout"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->initView(Landroid/widget/FrameLayout;)V

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;->SIZE:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory;->createSlider(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;Landroid/content/Context;Z)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;->OPACITY:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory;->createSlider(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;Landroid/content/Context;Z)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;->PARTICLE_DENSITY:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory;->createSlider(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushSliderFactory$SliderType;Landroid/content/Context;Z)Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setSliderView(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    return-void
.end method

.method private notifyDensityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDensityChanged() density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenSettingLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;->onDensityChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyOpacityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOpacityChanged() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenSettingLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;->onOpacityChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifySizeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySizeChanged() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " sizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenSettingLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;->onSizeChanged(FI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCurrentSizeLevel(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v1, 0x64

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCurrentSizeLevel() progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sizeLevel ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushPenSettingLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public initSlider(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setSliderView(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$ActionListener;

    return-void
.end method

.method public setBottomButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->makeBottomButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenSizeButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenAlphaButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityChangedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityTrackListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnTrackListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderTrackListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnMinusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mPenDensityButtonListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnPlusButtonActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;)V

    :cond_2
    return-void
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 5

    const-string v0, "SpenBrushPenSettingLayout"

    const-string/jumbo v1, "setPenInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenInfo name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenInfo color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " %08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenInfo size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenInfo sizeLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenInfo isEraserEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenInfo particleDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v2, 0x3

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-boolean v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->updateCurrentSizeLevel(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setPenInfo(Ljava/lang/String;III)V

    return-void
.end method

.method public setRoundedBackground(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRoundedBackground() radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "strokeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenSettingLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->mChildUpdater:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->setRoundedBackground(IIII)V

    return-void
.end method
