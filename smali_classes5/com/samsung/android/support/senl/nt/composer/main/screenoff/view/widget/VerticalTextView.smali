.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_180:I = 0xb4

.field private static final ROTATION_270:I = 0x10e

.field private static final ROTATION_90:I = 0x5a

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllTextBounds:Landroid/graphics/Rect;

.field private mDegree:I

.field private final mLineTextBounds:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private final mSplitText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerticalTextView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x5a

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x5a

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    const/4 v0, 0x0

    if-gez p2, :cond_1

    :cond_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_2

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    goto :goto_1

    :cond_2
    const/16 p1, 0xb4

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x10e

    if-ne p2, p1, :cond_0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x5a

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private drawMultiLineText(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v5, v1, :cond_4

    iget-object v10, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    iget-object v11, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v4, v12, v13}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v10, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v6

    mul-int v7, v3, v5

    shr-int/lit8 v8, v3, 0x1

    add-int/2addr v7, v8

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    :goto_1
    move v9, v7

    goto :goto_3

    :cond_0
    const/16 v11, 0x5a

    if-ne v10, v11, :cond_1

    mul-int v6, v2, v5

    shr-int/lit8 v7, v2, 0x1

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    :goto_2
    move v8, v6

    goto :goto_3

    :cond_1
    const/16 v11, 0xb4

    if-ne v10, v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    mul-int v8, v3, v5

    sub-int/2addr v7, v8

    shr-int/lit8 v8, v3, 0x1

    sub-int/2addr v7, v8

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v8

    goto :goto_1

    :cond_2
    const/16 v11, 0x10e

    if-ne v10, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    mul-int v7, v2, v5

    sub-int/2addr v6, v7

    shr-int/lit8 v7, v2, 0x1

    sub-int/2addr v6, v7

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mLineTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v10, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    int-to-float v11, v6

    int-to-float v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSingleLineText(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    const-string v3, "IN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SG"

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_custom_toast_vertical_text_padding_bottom:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_region_custom_toast_vertical_text_padding_bottom:I

    :goto_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v4, v6

    shr-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_custom_toast_vertical_text_padding_bottom:I

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_region_custom_toast_vertical_text_padding_bottom:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, v6, v0

    move v3, v0

    move v0, v1

    move v1, v4

    goto/16 :goto_6

    :cond_4
    const/16 v0, 0x5a

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    :goto_4
    sub-int/2addr v3, v4

    :goto_5
    shr-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    const/16 v0, 0xb4

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_4

    :cond_6
    const/16 v0, 0x10e

    if-ne v1, v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5

    :cond_7
    move v0, v2

    move v1, v0

    move v3, v1

    :goto_6
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v4, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private makeWordList([Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v5, v3, v8, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v7, p2, :cond_0

    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    move v7, v2

    move v8, v3

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v5, v8, v7, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lt v9, p2, :cond_1

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeWordList. size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private measureHeight(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    mul-int/2addr v1, v0

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    mul-int/2addr v1, v0

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    return p1
.end method

.method private setSplitText(Ljava/lang/String;II)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mAllTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p2, v0, :cond_8

    if-ge p3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    const/16 p3, 0xb4

    if-ne v0, p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move p2, p3

    :cond_4
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->makeWordList([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    move v0, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7

    if-lez v0, :cond_5

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, p2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->splitSubText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    add-int/2addr v0, v2

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setSplitText. line: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSplit text fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private splitSubText(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mSplitText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->drawMultiLineText(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->drawSingleLineText(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->setSplitText(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->mDegree:I

    if-eqz v0, :cond_3

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->measureHeight(I)I

    move-result p2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->measureHeight(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/widget/VerticalTextView;->measureWidth(I)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_4
    return-void
.end method
