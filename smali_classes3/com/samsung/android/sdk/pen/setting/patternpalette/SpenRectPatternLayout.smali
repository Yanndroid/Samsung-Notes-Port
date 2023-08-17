.class public Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRectPatternLayout"


# instance fields
.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

.field private mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_color_layout_v60:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->construct(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->construct(Landroid/content/Context;I)V

    return-void
.end method

.method private construct(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p2, Lcom/samsung/android/spen/R$id;->pen_palette_view:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    instance-of v0, p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    return-void
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "SpenRectPatternLayout"

    const-string v1, "Resource is not founded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    :cond_1
    return-void
.end method

.method public getPattern()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->getPattern()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setFlipperEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setFlipperEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$OnPatternChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPattern(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPattern(IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPattern(Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPattern() resName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectPatternLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->setPattern(IZ)Z

    move-result p1

    return p1
.end method

.method public setPatternList(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPatternList(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPatternSize(FZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mViewControl:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->setPatternSize(FZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSelectorDegree(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelectorDegree(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
