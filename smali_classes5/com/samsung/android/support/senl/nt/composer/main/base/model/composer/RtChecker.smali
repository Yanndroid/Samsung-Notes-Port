.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSizeSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$UnderlineSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$StrikethroughSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ItalicSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BoldSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ColorSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$UnderlineSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$StrikethroughSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ItalicSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BoldSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;
    }
.end annotation


# static fields
.field public static final ALIGN_NONE:I = -0x1

.field public static final INDENT_DISABLE:I = -0x1

.field public static final TASK_NONE:I


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method private checkParagraphRange(IILcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)Z
    .locals 1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result p1

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNotAllowedIndent(II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eq p2, v0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private updateSpanState(IILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->checkSpans(II)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->releaseList()V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkParagraph(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;III)[I
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextParagraph(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array p1, v3, [I

    aput p4, p1, v5

    aput v5, p1, v0

    aput v5, p1, v1

    return-object p1

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;

    invoke-direct {v7, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$AlignParagraphChecker;-><init>(III)V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;

    invoke-direct {v9, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BulletParagraphChecker;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;

    invoke-direct {v8, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$IndentParagraphChecker;-><init>(II)V

    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_1

    invoke-direct {p0, p2, p3, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->checkParagraphRange(IILcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->checkParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)I

    move-result v8

    if-ne v8, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;

    iget-boolean v9, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    if-eqz v9, :cond_4

    move v8, v5

    goto :goto_1

    :cond_5
    move v8, v0

    :goto_1
    if-eqz v8, :cond_1

    :cond_6
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;

    new-array v2, v3, [I

    const/4 v3, -0x1

    if-nez p1, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->getResult()I

    move-result p1

    :goto_2
    aput p1, v2, v5

    if-nez p2, :cond_8

    move p1, v5

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->getResult()I

    move-result p1

    :goto_3
    aput p1, v2, v0

    if-nez p3, :cond_9

    move p1, v5

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->getResult()I

    move-result p1

    :goto_4
    aput p1, v2, v1

    aget p1, v2, v5

    invoke-direct {p0, p4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->isNotAllowedIndent(II)Z

    move-result p1

    if-eqz p1, :cond_a

    aput v3, v2, v1

    :cond_a
    return-object v2
.end method

.method public checkSingleParagraphTask(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)I
    .locals 4

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextParagraph(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->checkParagraphRange(IILcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public updateRtSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BoldSpanChecker;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BoldSpanChecker;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ItalicSpanChecker;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ItalicSpanChecker;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$StrikethroughSpanChecker;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$StrikethroughSpanChecker;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$UnderlineSpanChecker;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$UnderlineSpanChecker;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSpanChecker;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSpanChecker;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSpanChecker;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;->getValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSpanChecker;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSpanChecker;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getAdjustedValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSpanChecker;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextSpan(II)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->updateSpanState(IILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;Ljava/util/Collection;)V

    return-object p4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v2

    if-ne v2, p3, :cond_3

    if-lez p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->addSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    goto :goto_0
.end method

.method public updateRtSpans(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findTextSpan(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BoldSingleCursorSpanChecker;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BoldSingleCursorSpanChecker;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ItalicSingleCursorSpanChecker;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ItalicSingleCursorSpanChecker;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$StrikethroughSingleCursorSpanChecker;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$StrikethroughSingleCursorSpanChecker;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$UnderlineSingleCursorSpanChecker;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$UnderlineSingleCursorSpanChecker;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSingleCursorSpanChecker;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getDefaultValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSingleCursorSpanChecker;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSingleCursorSpanChecker;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSingleCursorSpanChecker;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSizeSingleCursorSpanChecker;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getDefaultValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSizeSingleCursorSpanChecker;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->checkSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V

    goto :goto_2

    :cond_4
    return-object p3

    :cond_5
    :goto_3
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->resetToDefault()V

    return-object p3
.end method
