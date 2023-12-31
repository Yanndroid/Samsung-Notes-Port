.class Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation


# static fields
.field private static final RADIUS:I = 0x10

.field public static final TAG:Ljava/lang/String; = "SeslPaneRoundedCorner"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

.field private mEndTopDrawable:Landroid/graphics/drawable/Drawable;

.field private mMarginBottom:I

.field private mMarginTop:I

.field private mRes:Landroid/content/res/Resources;

.field private mRoundRadius:I

.field private mRoundedCornerBounds:Landroid/graphics/Rect;

.field private mRoundedCornerMode:I

.field private mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

.field private mStartBottomDrawableColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mStartTopDrawable:Landroid/graphics/drawable/Drawable;

.field private mStartTopDrawableColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginTop:I

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginBottom:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->initRoundedCorner()V

    return-void
.end method

.method private drawRoundedCornerInternal(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    if-nez v4, :cond_0

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    sub-int v5, v1, v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    sub-int v4, v1, v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    sub-int v5, v2, v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v5, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    sub-int v4, v2, v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v4, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private initRoundedCorner()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v3, Landroidx/appcompat/R$drawable;->sesl_top_right_round:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v3, Landroidx/appcompat/R$drawable;->sesl_bottom_right_round:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v3, Landroidx/appcompat/R$drawable;->sesl_top_left_round:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v3, Landroidx/appcompat/R$drawable;->sesl_bottom_left_round:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v2, Landroidx/appcompat/R$color;->sesl_round_and_bgcolor_dark:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v2, Landroidx/appcompat/R$color;->sesl_round_and_bgcolor_light:I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawableColor:I

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawableColor:I

    return-void
.end method

.method private isLayoutRtlSupport(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeRoundedCorner(I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method public drawRoundedCorner(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->isLayoutRtlSupport(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginTop:I

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginBottom:I

    sub-int/2addr v1, v4

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    add-int/2addr p1, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v4, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getRoundedCornerRadius()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundRadius:I

    return v0
.end method

.method public getRoundedCorners()I
    .locals 1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    return v0
.end method

.method public setMarginBottom(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginBottom:I

    return-void
.end method

.method public setMarginTop(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mMarginTop:I

    return-void
.end method

.method public setRoundedCornerColor(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->initRoundedCorner()V

    :cond_1
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawableColor:I

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iput p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawableColor:I

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRoundedCorners(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mRoundedCornerMode:I

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mStartBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndTopDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->mEndBottomDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->initRoundedCorner()V

    :cond_1
    return-void
.end method
