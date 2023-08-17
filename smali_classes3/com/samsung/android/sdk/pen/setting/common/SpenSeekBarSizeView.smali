.class public Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;,
        Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSeekBarSizeView"


# instance fields
.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

.field private mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

.field private mSeekBarBody:Landroid/view/View;

.field private mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

.field private mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

.field private mSeekBarPostfixStr:Ljava/lang/String;

.field private mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;

.field private mSizeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->construct(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->updateValue(IZ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->updateValuePosition()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->notifySizeChangedListener(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_slider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ", %s, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarPostfixStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initSeekBar()V
    .locals 5

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$color;->setting_handwriting_slider_progress_bg_color:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedCornerDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->initSeekBar(Landroid/widget/SeekBar;Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbDrawable()Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->getThumbStrokeDrawable()Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setTarget(Landroid/widget/SeekBar;Landroid/graphics/drawable/ScaleDrawable;Landroid/graphics/drawable/ScaleDrawable;)Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    sget v2, Lcom/samsung/android/spen/R$id;->seek_bar_minus_button:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    sget v3, Lcom/samsung/android/spen/R$id;->seek_bar_plus_button:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->initControlButton(Landroid/widget/SeekBar;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$OnActionListener;)V

    return-void
.end method

.method private initSeekBarText()V
    .locals 6

    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v2, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    aput-object v2, v1, v5

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_size_seekbar_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->size_seekbar_body:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarBody:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->initSeekBarText()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->initSeekBar()V

    return-void
.end method

.method private notifySizeChangedListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;->onSizeChanged(IZ)V

    :cond_0
    return-void
.end method

.method private updateColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setColor(I)V

    :cond_0
    return-void
.end method

.method private updateValue(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateValue() sizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " needUpdateSeekBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSeekBarSizeView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarBody:Landroid/view/View;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarPostfixStr:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateValuePosition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenSeekBarSizeView"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarButtonControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarBody:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarPostfixStr:Ljava/lang/String;

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

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

    const-string v1, "SpenSeekBarSizeView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->updateColor(I)V

    return-void
.end method

.method public setOnActionListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBarActionListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnSizeChangeListener;

    return-void
.end method

.method public setSizeLevel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSizeLevel() sizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSeekBarSizeView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
