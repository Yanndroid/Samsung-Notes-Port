.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;
.super Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorLayout"


# instance fields
.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
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
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->construct(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method private construct(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    sget p3, Lcom/samsung/android/spen/R$layout;->setting_brush_color_layout:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/samsung/android/spen/R$layout;->setting_pen_color_layout_v53:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p3, Lcom/samsung/android/spen/R$id;->pen_palette_view:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    invoke-virtual {p3, p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->initView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setRecentColor(Ljava/util/List;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addRecentColor([F)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->addRecentColor([F)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setSettingViewLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->close()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->isLongPressedOnLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getColor([F)V
    .locals 0
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->getColor([F)V

    return-void
.end method

.method public getFlip(I)F
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFlip() dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRotationX()F

    move-result p1

    return p1

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRotationY()F

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPalette()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->getPalette()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRecentColor()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->getRecentColor()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUiInfo(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->getUiInfo(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getUiInfo(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->getUiInfo(II)I

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic resetColor()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->resetColor()V

    return-void
.end method

.method public bridge synthetic setColor(I[F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setColor(I[F)V

    return-void
.end method

.method public bridge synthetic setColor(I[FIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setColor(I[FIZ)V

    return-void
.end method

.method public bridge synthetic setColor(I[FZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setColor(I[FZ)V

    return-void
.end method

.method public bridge synthetic setEyedropperColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setEyedropperColor(I)V

    return-void
.end method

.method public setFlip(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFlip() dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setRotationX(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setRotationY(F)V

    return-void
.end method

.method public setForceFocus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->setForceFocus()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    return-void
.end method

.method public bridge synthetic setOnColorButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setOnColorButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;)V

    return-void
.end method

.method public bridge synthetic setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V

    return-void
.end method

.method public bridge synthetic setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangedListener;)V

    return-void
.end method

.method public bridge synthetic setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V

    return-void
.end method

.method public bridge synthetic setPalette(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setPalette(I)V

    return-void
.end method

.method public bridge synthetic setPaletteList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setPaletteList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setPickerColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setPickerColor([F)V

    return-void
.end method

.method public bridge synthetic setRecentColor(Ljava/util/List;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorBaseLayout;->setRecentColor(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setSelectorDegree(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectorDegree() dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteView;->setSelectorDegree(II)Z

    return-void
.end method

.method public setSettingViewLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->setOnLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method
