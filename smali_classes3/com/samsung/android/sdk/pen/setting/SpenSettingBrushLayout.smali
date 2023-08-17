.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingBrushLayout"


# instance fields
.field private final mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

.field private final mAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

.field private mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

.field private mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;

.field private mChildLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

.field private mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

.field private mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

.field private mContext:Landroid/content/Context;

.field private final mLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

.field private mLayoutDirection:I

.field private final mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

.field private mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

.field private needCheckOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getPenNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->construct(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->construct(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->updatePenRotate(IIIZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->updateColorRotate(III)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->notifyChildPosChanged()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->initView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    iget v0, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penViewType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    iget-boolean v3, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->isOpened:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {v0, p1, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    check-cast v0, Landroid/view/View;

    sget v3, Lcom/samsung/android/spen/R$drawable;->spen_brush_setting_bg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_penlist_padding_bottom_tablet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    iget v3, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penWidthRatio:F

    iget v4, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penHeightRatio:F

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setPenLayoutRatio(FF)V

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penViewInfoList:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    invoke-interface {v0, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setPenList(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    invoke-interface {v3, p3, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setPenList(Ljava/util/List;Ljava/util/List;)V

    :goto_2
    iget-boolean p3, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->moveable:Z

    xor-int/2addr p3, v2

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->needCheckOrientation:Z

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v2, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    sget v3, Lcom/samsung/android/spen/R$drawable;->spen_brush_setting_bg:I

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-virtual {p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setPaletteList(Ljava/util/List;)Z

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-virtual {p3, p5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setRecentColor(Ljava/util/List;)Z

    iget-boolean p3, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->moveable:Z

    if-eqz p3, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->needCheckOrientation:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    goto :goto_3

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->needCheckOrientation:Z

    new-instance p3, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;

    invoke-direct {p3}, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    :goto_3
    new-instance p3, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget v3, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->style:I

    iget v4, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->spaceRatio:F

    iget-boolean v5, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->moveable:Z

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;-><init>(Landroid/content/Context;IFZLcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penWidthRatio:F

    iget v4, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penHeightRatio:F

    iget v5, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorWidthRatio:F

    iget v6, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorHeightRatio:F

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setViewInfo(IFFFF)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    check-cast p3, Landroid/view/View;

    iget p4, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penAlign:I

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    iget p2, p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorAlign:I

    invoke-virtual {p1, p3, p4, p5, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildView(Landroid/view/View;ILandroid/view/View;I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildSizeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildOrientationChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mAlignChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildAlignChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildAlignChangedListener;)V

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setMoveAniStrategy(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildActionListener;)V

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->needCheckOrientation:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    if-eq p1, p2, :cond_5

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    :cond_5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyChildPosChanged()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenRect(Landroid/graphics/Rect;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChildPosChanged() [PEN]rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenSettingBrushLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;->onPenRectChanged(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorRect(Landroid/graphics/Rect;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChildPosChanged() [COLOR]rect="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;->onColorRectSizeChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setPenDegree(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setPenDegree(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenDegree(IZ)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private setSelectorDegree(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectorDegree() flipDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setSelectorDegree(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateChildRotate()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenAlign()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    const-string v4, "SpenSettingBrushLayout"

    const-string/jumbo v5, "updateChildRotate() by devive rotation."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->updatePenRotate(IIIZ)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorAlign()I

    move-result v0

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->updateColorRotate(III)V

    :cond_4
    return-void
.end method

.method private updateColorRotate(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->setColorInfo(III)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getColorFlipDir()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    invoke-interface {p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getColorFlipDegree()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setFlip(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getSelectorFlipDir()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getSelectorFlipDegree()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setSelectorDegree(II)Z

    return-void
.end method

.method private updatePenRotate(IIIZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getPenDegree(III)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePenRotate() PenDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " align="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " direction="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenSettingBrushLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p4}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setPenDegree(IZ)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenSettingBrushLayout"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->needCheckOrientation:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    :cond_0
    return-void
.end method

.method public getChildRotation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->getRotateDegree()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorAlign()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorAlign()I

    move-result v0

    return v0
.end method

.method public getColorRect(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorRect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getColorView()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    return-object v0
.end method

.method public getPenAlign()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenAlign()I

    move-result v0

    return v0
.end method

.method public getPenRect(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenRect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    return-object v0
.end method

.method public getSelectedPenOffset()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->getSelectedPenPosition()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->needCheckOrientation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnConfigurationChanged() current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenAlign()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorAlign()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenAlign(II)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorAlign(II)Z

    :cond_0
    return-void
.end method

.method public setChildActionListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;)V
    .locals 2

    const-string v0, "SpenSettingBrushLayout"

    const-string/jumbo v1, "setChildActionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildActionListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;

    return-void
.end method

.method public setChildAlign(II)Z
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setChildAlign() pen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenSettingBrushLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenAlign(II)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorAlign(II)Z

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setChildLayoutChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;)V
    .locals 2

    const-string v0, "SpenSettingBrushLayout"

    const-string/jumbo v1, "setChildLayoutChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildLayoutChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    return-void
.end method

.method public setChildRotation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++ setDeviceRotation() angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mChildMoveStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;->setRotateDegree(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->updateChildRotate()V

    return-void
.end method

.method public setChildRoundedBackground(IIII)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChildRoundedBackground() mPenView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    const-string v2, "NOT NULL"

    const-string v3, "NULL"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mColorView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setRoundedBackground(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v0, :cond_3

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedCornerDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setChildRadius(I)V

    :cond_4
    return-void
.end method

.method public setColorAlign(I)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColorAlign() align="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorAlign()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenSettingBrushLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getColorAlign()I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setColorAlign(II)Z

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPenAlign(I)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPenAlign() align="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenAlign()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenSettingBrushLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->getPenAlign()I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->mLayoutDirection:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->setPenAlign(II)Z

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
