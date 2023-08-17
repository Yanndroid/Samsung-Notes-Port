.class public Landroidx/appcompat/util/SeslSubheaderRoundedCorner;
.super Landroidx/appcompat/util/SeslRoundedCorner;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslSubheaderRoundedCorner"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private drawRoundedCornerInternal(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundRadius:I

    add-int v6, v1, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v1, v0, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int v6, v2, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v6, v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int v5, v3, v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v1, v5, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int v4, v2, v1

    sub-int v1, v3, v1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public drawRoundedCorner(IIIILandroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p5}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mY:I

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mX:I

    iget v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p2}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    return-void
.end method
