.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteInterface;


# static fields
.field public static final CORNER_LEFT_BOTTOM:I = 0x8

.field public static final CORNER_LEFT_TOP:I = 0x1

.field public static final CORNER_RIGHT_BOTTOM:I = 0x4

.field public static final CORNER_RIGHT_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenRectPalette"


# instance fields
.field private mChild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableColorHover:Z

.field private mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;-><init>(Landroid/content/Context;IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;-><init>(Landroid/view/ViewGroup;F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mEnableColorHover:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->setInfo(IIIIII)V

    return-void
.end method

.method private getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setInfo(IIIIII)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInfo() col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selectedChildRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectPalette"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/spen/R$id;->col1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/spen/R$id;->col2:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$id;->col3:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$id;->col4:I

    const/4 v3, 0x3

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/spen/R$id;->col5:I

    const/4 v4, 0x4

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/spen/R$id;->col6:I

    const/4 v4, 0x5

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/spen/R$id;->col7:I

    const/4 v4, 0x6

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/spen/R$id;->col8:I

    const/4 v4, 0x7

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/spen/R$id;->col9:I

    const/16 v4, 0x8

    aput v1, v0, v4

    :goto_0
    if-ge v2, p1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, p6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;-><init>(Landroid/content/Context;I)V

    aget v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-lez v2, :cond_1

    if-nez p5, :cond_0

    const/16 v5, 0x11

    add-int/lit8 v6, v2, -0x1

    aget v6, v0, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v2, -0x1

    aget v5, v0, v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput p4, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    return-void
.end method

.method public resetChildPriority()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;)V

    :cond_0
    return-void
.end method

.method public setChildCornerRadius(III)V
    .locals 5

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;

    if-eqz p1, :cond_4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    move v3, p3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const/16 v4, 0x8

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_3

    goto :goto_3

    :cond_3
    move p3, v2

    :goto_3
    int-to-float p2, v0

    int-to-float v0, v1

    int-to-float v1, v3

    int-to-float p3, p3

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setRadius(FFFF)V

    :cond_4
    return-void
.end method

.method public setColor(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .locals 3
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColor()[F

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getOpacity()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColor([FILjava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mEnableColorHover:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColorName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setColorHoverEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mEnableColorHover:Z

    return-void
.end method

.method public setFixedSelectorColor(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setFixedSelectorColor(I)V

    :cond_0
    return-void
.end method

.method public setInit(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") childCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectPalette"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setInit()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setRes(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .locals 1
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColorRes(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getHoverStringId()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mPaletteTouchControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteControl;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setSelected(IZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelected() childAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " needAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectPalette"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setSelected(ZZ)Z

    :cond_0
    return-void
.end method

.method public setSelectedChildLayout(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setSelectedMargin(IIII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSelectorDegree(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectorDegree("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectPalette"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->resetDegree()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setResourceDegree(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setSelectorIcon(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectorIcon("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectPalette"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setSelectorIcon(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectorSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setSelectorSize(II)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setUnSelectedChildLayout(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->mChild:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPalette;->getChild(I)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setUnselectedMargin(IIII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
