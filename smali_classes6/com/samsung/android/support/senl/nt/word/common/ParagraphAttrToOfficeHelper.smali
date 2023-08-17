.class public abstract Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OfficeParagraph:",
        "Ljava/lang/Object;",
        "OfficeRun:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mContent:Ljava/lang/String;

.field public mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

.field public paragraphs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public spans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public textParagraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;",
            ">;"
        }
    .end annotation
.end field

.field public textSpanBases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpenTextParagraph()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v1

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->setBulletType(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->setIsChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v1

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->getAlignment()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->setAlign(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v1

    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->setIndentLevel(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textSpanBases:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->haveSpan()Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textSpanBases:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, p3

    :goto_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_5

    :cond_b
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->spans:Ljava/util/HashMap;

    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge p3, v0, :cond_16

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v4, p3, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v5, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;

    invoke-direct {v5, p3, v0}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;-><init>(II)V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textSpanBases:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v8

    if-gt v8, p3, :cond_d

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v8

    if-gt v0, v8, :cond_d

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getType()I

    move-result v8

    if-eq v8, v3, :cond_14

    if-eq v8, v2, :cond_13

    const/16 v9, 0x11

    if-eq v8, v9, :cond_12

    const/16 v9, 0x14

    if-eq v8, v9, :cond_11

    if-eq v8, v1, :cond_10

    const/4 v9, 0x6

    if-eq v8, v9, :cond_f

    const/4 v9, 0x7

    if-eq v8, v9, :cond_e

    goto :goto_7

    :cond_e
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->isUnderlineStyleEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setUnderline(Z)V

    goto :goto_7

    :cond_f
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;->isItalicStyleEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setItalic(Z)V

    goto :goto_7

    :cond_10
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;->isBoldStyleEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setBold(Z)V

    goto :goto_7

    :cond_11
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenStrikethroughSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenStrikethroughSpan;->isStrikethroughStyleEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setStrikethrough(Z)V

    goto :goto_7

    :cond_12
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->getColor()I

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->toHexaStringColor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setBackgroundColor(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getFontSize(I)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setFontSize(D)V

    goto :goto_7

    :cond_14
    check-cast v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->toHexaStringColor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setForegroundColor(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->spans:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move p3, v4

    goto/16 :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public abstract addAlignment(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeParagraph;I)V"
        }
    .end annotation
.end method

.method public abstract addProperty(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeRun;",
            "Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;",
            ")V"
        }
    .end annotation
.end method

.method public addRunToParagraph(Ljava/lang/Object;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeParagraph;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRunToParagraph, startParagraph: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", endParagraph: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->spans:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v7, p1

    move v5, v3

    move v6, v4

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getStart()I

    move-result v8

    if-ge v8, v1, :cond_d

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getStart()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getEnd()I

    move-result v8

    if-le v8, v1, :cond_1

    new-instance v9, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;

    invoke-direct {v9, v1, v8, v2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;-><init>(IILcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->spans:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->setEnd(I)V

    move v8, v1

    :cond_1
    iget-object v9, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-virtual {v9, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\ufffc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "\ufffc\ufffd"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v3

    move v12, v11

    :goto_1
    if-ge v11, v10, :cond_b

    aget-object v13, v9, v11

    const/4 v14, -0x1

    const-string v15, "\ufffd"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v4

    :goto_2
    add-int/2addr v15, v5

    goto :goto_3

    :cond_2
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v15, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v5

    sub-int/2addr v14, v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_2

    :goto_3
    if-ltz v14, :cond_5

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    check-cast v6, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v7

    :cond_4
    invoke-virtual {v0, v7, v5, v14}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->createRun(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addProperty(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V

    move v6, v4

    :cond_5
    iget-object v14, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    instance-of v14, v14, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    if-eqz v14, :cond_8

    array-length v14, v9

    sub-int/2addr v14, v4

    if-lt v12, v14, :cond_6

    array-length v14, v9

    if-ne v14, v4, :cond_8

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    check-cast v6, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v7

    :goto_4
    invoke-virtual {v0, v7, v5, v5}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->createRun(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addProperty(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V

    move-object v5, v7

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->addInlineImage(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    add-int/lit8 v12, v12, 0x1

    move v6, v3

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move v5, v15

    goto :goto_1

    :cond_9
    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    check-cast v6, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/word/WordView;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v7

    :cond_a
    invoke-virtual {v0, v7, v5, v8}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->createRun(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->addProperty(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V

    move v6, v4

    :cond_b
    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->spans:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v8, v5, :cond_c

    return-void

    :cond_c
    move v5, v4

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getStart()I

    move-result v3

    if-lt v3, v1, :cond_e

    if-nez v5, :cond_e

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getFontSize()D

    move-result-wide v1

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->setStyle(Ljava/lang/Object;D)V

    :cond_e
    return-void
.end method

.method public abstract addSpenTextParagraph(ILjava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITOfficeParagraph;Z)V"
        }
    .end annotation
.end method

.method public abstract createRun(Ljava/lang/Object;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeParagraph;II)TOfficeRun;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public haveSpan()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textSpanBases:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public haveSpenTextParagraph()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->textParagraphs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFontSize(Lorg/apache/poi/xwpf/usermodel/XWPFRun;D)V
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSz()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    :goto_1
    new-instance p2, Ljava/math/BigDecimal;

    const-string p3, "2"

    invoke-direct {p2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public abstract setStyle(Ljava/lang/Object;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOfficeParagraph;D)V"
        }
    .end annotation
.end method
