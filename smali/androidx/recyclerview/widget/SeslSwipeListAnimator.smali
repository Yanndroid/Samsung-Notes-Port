.class public Landroidx/recyclerview/widget/SeslSwipeListAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslSwipeListAnimator"


# instance fields
.field private final DEFAULT_ANIMATION_CANCEL_DURATION:I

.field private final DEFAULT_ANIMATION_DURATION:I

.field private final DEFAULT_DRAWABLE_PADDING:I

.field private final DEFAULT_LEFT_COLOR:I

.field private final DEFAULT_RIGHT_COLOR:I

.field private final DEFAULT_TEXT_COLOR:I

.field private final DEFAULT_TEXT_SIZE:I

.field private final DIRECTION_LTR:I

.field private final DIRECTION_RTL:I

.field private mBgLeftToRight:Landroid/graphics/Paint;

.field private mBgRightToLeft:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mLastRectAlpha:F

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSwipeBitmap:Landroid/graphics/Bitmap;

.field private mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

.field private mSwipeRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#6ebd52"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_LEFT_COLOR:I

    const-string v0, "#56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_RIGHT_COLOR:I

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_TEXT_COLOR:I

    const/16 v0, 0xf

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_TEXT_SIZE:I

    const/16 v0, 0xa

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_DRAWABLE_PADDING:I

    const/16 v0, 0x64

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_ANIMATION_DURATION:I

    const/16 v0, 0xfa

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_ANIMATION_CANCEL_DURATION:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeRect:Landroid/graphics/Rect;

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DIRECTION_LTR:I

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DIRECTION_RTL:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mLastRectAlpha:F

    iput-object p2, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private calculateTopOfList(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->calculateTopOfList(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method private convertDipToPixels(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p8, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p8, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p7

    move v4, p9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->drawSwipeText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;ILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    new-array v3, v1, [I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v11, 0x0

    aget v5, v3, v11

    aget v2, v2, v11

    sub-int/2addr v5, v2

    aput v5, v3, v11

    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->calculateTopOfList(Landroid/view/View;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    aget v5, v3, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    aget v3, v3, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v3, v6

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v2, v13

    invoke-direct {v6, v5, v2, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeRect:Landroid/graphics/Rect;

    iget-object v2, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    :cond_0
    new-instance v14, Landroid/graphics/Canvas;

    iget-object v2, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v14, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v14, v11, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v15, v5, v2

    iget v5, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mLastRectAlpha:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_1

    cmpl-float v6, v15, v2

    if-nez v6, :cond_1

    const/16 v2, 0x6c

    :goto_0
    invoke-static {v2}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_1
    cmpl-float v5, v5, v2

    if-nez v5, :cond_2

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_2

    const/16 v2, 0x6d

    goto :goto_0

    :cond_2
    :goto_1
    iput v15, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mLastRectAlpha:F

    cmpl-float v0, p3, v4

    const-string v2, ", d.getBounds()="

    const-string v5, "SeslSwipeListAnimator"

    if-lez v0, :cond_4

    iget-object v0, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v9, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1 draw LtoR, d = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget v4, v4, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    add-int/2addr v3, v4

    invoke-direct {v2, v4, v11, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, v13, v0

    div-int/2addr v0, v1

    invoke-virtual {v2, v11, v0}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v16, v2

    goto :goto_2

    :cond_3
    const-string v0, "#2 draw LtoR, d = null"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v16, v0

    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    move/from16 v0, p2

    float-to-int v8, v0

    invoke-direct {v2, v11, v11, v8, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    const/16 v6, 0xff

    iget-object v0, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    iget v0, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v4, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v3, v16

    move/from16 v18, v4

    move-object v4, v9

    move/from16 v19, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    new-instance v2, Landroid/graphics/Rect;

    move/from16 v0, v19

    invoke-direct {v2, v0, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    float-to-int v6, v15

    iget-object v0, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    iget v0, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v18

    :goto_3
    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    goto/16 :goto_5

    :cond_4
    cmpg-float v0, p3, v4

    if-gez v0, :cond_6

    iget-object v0, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v9, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v6, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget v6, v6, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    sub-int v6, v12, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#3 draw RtoL, d = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    sub-int v4, v6, v4

    invoke-direct {v2, v4, v11, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, v13, v0

    div-int/2addr v0, v1

    invoke-virtual {v2, v11, v0}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v16, v2

    goto :goto_4

    :cond_5
    const-string v0, "#4 draw RtoL, d = null"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v11, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v16, v0

    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v0, v3

    sub-int v8, v12, v0

    invoke-direct {v2, v8, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    const/16 v6, 0xff

    iget-object v0, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    iget v0, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v12, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v3, v16

    move-object v4, v9

    move/from16 v20, v8

    move v8, v12

    move-object v12, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    new-instance v2, Landroid/graphics/Rect;

    move/from16 v0, v20

    invoke-direct {v2, v11, v11, v0, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    float-to-int v6, v15

    iget-object v0, v10, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    iget v0, v0, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v8, v0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object v4, v12

    goto/16 :goto_3

    :cond_6
    :goto_5
    return-object v14
.end method

.method private drawSwipeText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v1

    if-nez p4, :cond_0

    iget p4, p5, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget p5, p5, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    add-int/2addr p4, p5

    goto :goto_0

    :cond_0
    iget p4, p5, Landroid/graphics/Rect;->left:I

    iget-object p5, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget p5, p5, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    sub-int/2addr p4, p5

    iget p5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p5

    :goto_0
    int-to-float p4, p4

    invoke-virtual {p1, p3, p4, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextToCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, p3, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBitmapDrawableToSwipeBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public clearSwipeAnimation(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mLastRectAlpha:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearSwipeAnimation: view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDrawSwipeBitmapDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslSwipeListAnimator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSwipeAnimation: view.getTranslationX() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    const-string v1, "clearSwipeAnimation: **** set view.setTranslationX(0f) ****"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method public doMoveAction(Landroid/graphics/Canvas;Landroid/view/View;FZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doMoveAction: viewForeground = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " deltaX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentlyActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslSwipeListAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "doMoveAction: #2 reutrn"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->clearSwipeAnimation(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    const-string p4, "doMoveAction: #1 drawRectToBitmapCanvas"

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float p4, p3, p4

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    div-float/2addr p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float p3, p4, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->getBitmapDrawableToSwipeBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_2

    iget-object p3, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    const-string p2, "doMoveAction: draw"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const-wide/16 p1, 0xfa

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x64

    return-wide p1
.end method

.method public onSwiped(Landroid/view/View;)V
    .locals 2

    const-string v0, "SeslSwipeListAnimator"

    const-string v1, "onSwiped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->clearSwipeAnimation(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setSwipeConfiguration(Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;)V
    .locals 2

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    const-string v1, " "

    if-nez v0, :cond_0

    iput-object v1, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v1, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    iget v1, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_LEFT_COLOR:I

    iput v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_RIGHT_COLOR:I

    iput v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->DEFAULT_TEXT_COLOR:I

    iput v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    :cond_4
    iget v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    if-ne v0, v1, :cond_5

    const/16 v0, 0xf

    iput v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    :cond_5
    iget v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    if-ne v0, v1, :cond_6

    const/16 v0, 0xa

    iput v0, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    :cond_6
    iget p1, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->mSwipeConfiguration:Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;

    iget v1, v1, Landroidx/recyclerview/widget/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/SeslSwipeListAnimator;->convertDipToPixels(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
