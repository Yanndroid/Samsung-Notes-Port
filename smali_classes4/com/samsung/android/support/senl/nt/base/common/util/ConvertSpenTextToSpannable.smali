.class public Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;,
        Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;
    }
.end annotation


# static fields
.field public static final COMPOSER_DEFAULT_TEXT_COLOR:I = -0xdadadb

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConvertSpenTextToSpannable"


# instance fields
.field private mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;-><init>(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    return-void
.end method

.method private adjustPositionInEmptyTaskSpanCase(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;II)I
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSplitStringIndex()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->adjustObjectSpanPosition(II)V

    add-int/2addr p3, p2

    return p3
.end method

.method private convertBulletParagraphToTaskSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;)Landroidx/core/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    const/16 v0, 0x14

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createTaskSpan(I)Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createTaskSpan(I)Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;->setNumber(I)V

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createTaskSpan(I)Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createStrikethroughSpan()Landroid/text/style/StrikethroughSpan;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static convertExpansion(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x22

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    goto :goto_0

    :cond_1
    const/16 p0, 0x11

    :goto_0
    return p0
.end method

.method private convertObjectSpan(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getObjectSpanList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;->convert(Ljava/util/List;Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method private convertSpenSpanToSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/16 v2, 0x11

    if-eq v0, v2, :cond_4

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->isUnderlineStyleEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createUnderlineSpan()Landroid/text/style/UnderlineSpan;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;->isItalicStyleEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createStyleSpan(I)Landroid/text/style/StyleSpan;

    move-result-object p1

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;->isBoldStyleEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createStyleSpan(I)Landroid/text/style/StyleSpan;

    move-result-object p1

    goto :goto_1

    :cond_3
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenStrikethroughSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenStrikethroughSpan;->isStrikethroughStyleEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createStrikethroughSpan()Landroid/text/style/StrikethroughSpan;

    move-result-object p1

    goto :goto_1

    :cond_4
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->getColor()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createBackgroundColorSpan(I)Landroid/text/style/BackgroundColorSpan;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createAbsoluteSizeSpan(I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object p1

    goto :goto_1

    :cond_7
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result v0

    const v1, -0xdadadb

    if-ne v0, v1, :cond_9

    :cond_8
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createForegroundColorSpan(I)Landroid/text/style/ForegroundColorSpan;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private convertSpenSpansToSpans(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpenTextSpanList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->isInvalidSpanRange(Ljava/lang/CharSequence;III)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenSpanToSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertExpansion(I)I

    move-result v4

    invoke-virtual {v1, v8, v6, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static convertSpenTextToSpannableSBuilder(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenTextToSpannableSBuilder(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static convertSpenTextToSpannableSBuilder(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenTextToSpannableSBuilderIn(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static convertSpenTextToSpannableSBuilder(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;Z)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;

    invoke-direct {v0, p4}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;-><init>(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenTextToSpannableSBuilderIn(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private isInvalidParagraphRange(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;II)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p4, p3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getCarriageReturnCount()I

    move-result v1

    if-gt p3, v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getCarriageReturnCount()I

    move-result v1

    if-gt p4, v1, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p3, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private isInvalidRange(Landroid/text/SpannableStringBuilder;II)Z
    .locals 1

    if-lt p3, p2, :cond_1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isInvalidSpanRange(Ljava/lang/CharSequence;III)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p4, p3, :cond_2

    if-gt p3, p2, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lt p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private makeTaskSpan(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;)V
    .locals 11

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getTextParagraph()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSplitStringIndex()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->isInvalidParagraphRange(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;II)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    check-cast v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertBulletParagraphToTaskSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;)Landroidx/core/util/Pair;

    move-result-object v5

    iget-object v8, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-ge v10, v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v7, :cond_2

    const-string v10, "\u200b"

    invoke-virtual {v1, v9, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->adjustPositionInEmptyTaskSpanCase(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;II)I

    move-result v7

    :cond_2
    invoke-direct {p0, v1, v8, v9, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->setTaskSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_4

    const/16 v6, 0x21

    invoke-virtual {v1, v5, v9, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private setTaskSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)Z
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->isInvalidRange(Landroid/text/SpannableStringBuilder;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x21

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 p1, 0x1

    return p1
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public convertSpenTextToSpannableSBuilderIn(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;Z)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-direct {v0, p1, p3, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ILcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpenTextSpanList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    if-nez p5, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->mSpanObjectFactory:Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpanObjectFactory;->createSpannableStringBuilder(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertSpenSpansToSpans(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->makeTaskSpan(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0, v0, p4}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable;->convertObjectSpan(Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$IObjectSpanConverter;)V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ConvertSpenTextToSpannable$SpannableTextData;->getSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method
