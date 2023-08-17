.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorBaseLayout"


# instance fields
.field private mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

.field private mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

.field private mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

.field private mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;

.field private mIsSupportEyedropper:Z

.field private final mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

.field private final mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

.field private mPaletteSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

.field private mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mIsSupportEyedropper:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    return-object p0
.end method


# virtual methods
.method public addRecentColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->addRecentColor([F)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;

    return-void
.end method

.method public getColor([F)V
    .locals 1
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColor([F)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPalette()I
    .locals 2

    const-string v0, "SpenColorBaseLayout"

    const-string v1, "getPalette()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPalette()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRecentColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getRecentColor()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUiInfo(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getUiInfo(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public initView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;I)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mIsSupportEyedropper:Z

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;-><init>(Landroid/content/Context;ZZI)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setPaletteView(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mOnColorPaletteChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;)V

    return-void
.end method

.method public resetColor()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->resetColor()V

    return-void
.end method

.method public setColor(I[F)V
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setColor(I[FIZ)V

    return-void
.end method

.method public setColor(I[FIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(I[FIZ)V

    return-void
.end method

.method public setColor(I[FZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor() uiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] needAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorBaseLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setColor(I[FIZ)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public setEyedropperColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setEyedropperColor(I)V

    return-void
.end method

.method public setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    return-void
.end method

.method public setOnColorButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    return-void
.end method

.method public setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    return-void
.end method

.method public setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;

    return-void
.end method

.method public setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    return-void
.end method

.method public setPalette(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPalette() paletteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorBaseLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setPalette(I)Z

    :cond_0
    return-void
.end method

.method public setPaletteList(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPaletteList() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorBaseLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setPaletteInfo(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPickerColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setPickerColor([F)V

    :cond_0
    return-void
.end method

.method public setRecentColor(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setRecentColor(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setRecentIndicatorSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->mPaletteViewControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setRecentIndicatorSize(I)V

    :cond_0
    return-void
.end method
