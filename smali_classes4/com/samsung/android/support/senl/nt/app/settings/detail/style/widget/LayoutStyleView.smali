.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;
.super Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutStyleView"


# instance fields
.field private mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

.field private mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

.field private mLayoutStyleViewContainer:Landroid/widget/LinearLayout;

.field private final mRadioButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->insertSALog(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->updateRadioButton()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->layout_style_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->initRadioButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->updateRadioButton()V

    return-void
.end method

.method private initRadioButton()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->fixed_size_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->infinite_scrolling_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isFoldableModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_guide_indivisual_foldable:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_guide_infinite_foldable:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setImageResource(I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_guide_indivisual_tablet:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_guide_infinite_tablet:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_guide_indivisual:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_guide_infinite:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mRadioButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_style_page_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mLayoutStyleViewContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private insertSALog(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertSALog# saveType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutStyleView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "5812"

    const-string v2, "510"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected saveType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "a"

    goto :goto_0

    :cond_1
    const-string p1, "b"

    :goto_0
    invoke-static {v2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateRadioButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_preferred_note_style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mFixedSizeRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mInfiniteScrollingRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutStyleView;->mLayoutStyleViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;->updateButtonWidth(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method
