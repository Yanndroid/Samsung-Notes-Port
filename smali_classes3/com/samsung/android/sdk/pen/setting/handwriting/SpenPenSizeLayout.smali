.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenSizeLayout"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

.field private mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private mStartThumbColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->construct(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->initView(Landroid/content/Context;IZ)V

    return-void
.end method

.method private initView(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-direct {p3, p1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZI)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;-><init>(Landroid/content/Context;Z)V

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    goto :goto_2

    :cond_2
    new-instance p3, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    invoke-direct {p3, p1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;-><init>(Landroid/content/Context;ZI)V

    :goto_1
    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    :goto_2
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setAccessibilityPostfix(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_slider_opacity_progress_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_slider_track_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setAnimationValue(II)V

    sget p2, Lcom/samsung/android/spen/R$color;->setting_handwriting_slider_thumb_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mStartThumbColor:I

    return-void
.end method

.method private updateBackground(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$color;->setting_preview_adaptive_bg_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenPenSizeLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSliderView()Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRunningShowHideAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->isRunningShowHideAnimation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setColor(I)V

    return-void
.end method

.method public setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setPenInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenInfo() penName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sizeLevel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " color="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    and-int/lit8 v2, p3, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenSizeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->updateBackground(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setColor(I)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    return-void
.end method

.method public showSizeAnimation(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSizeAnimation() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenSizeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mSizeView:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->mStartThumbColor:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->getColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->startShowAnimation(II)V

    return-void
.end method
