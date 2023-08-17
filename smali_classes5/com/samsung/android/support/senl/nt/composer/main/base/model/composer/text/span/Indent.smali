.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;
.source "SourceFile"


# static fields
.field private static final DEFAULT:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Indent"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public appendIndentParagraph([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;ZI[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-ltz v1, :cond_c

    aget v1, p1, v2

    if-ltz v1, :cond_c

    array-length v1, p5

    aget v3, p1, v0

    if-lt v1, v3, :cond_c

    array-length v1, p5

    aget v3, p1, v2

    if-ge v1, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    aget v1, p1, v0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    aget v5, p1, v2

    if-ge v1, v5, :cond_b

    aget-object v5, p5, v1

    if-nez v5, :cond_1

    aget v6, p1, v0

    if-ge v1, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 v6, 0x10

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v7

    aget v8, p1, v0

    if-ge v7, v8, :cond_2

    move-object v4, v5

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v7

    aget v8, p1, v2

    if-le v7, v8, :cond_4

    if-eqz p3, :cond_3

    new-instance v7, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    aget v8, p1, v2

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v7, v1, v8, v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;-><init>(III)V

    move-object v5, v7

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    aget v7, p1, v2

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v6, v1, v7, v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;-><init>(III)V

    move-object v5, v6

    :goto_1
    invoke-virtual {v5, p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->setDirection(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v1

    if-eqz p3, :cond_5

    add-int/2addr v1, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    invoke-virtual {v5, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->setIndentLevel(I)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v1

    sub-int/2addr v1, v2

    :cond_6
    :goto_3
    invoke-virtual {p2, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    goto :goto_6

    :cond_7
    if-nez v4, :cond_8

    if-eqz p3, :cond_a

    new-instance v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v1, v6, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;-><init>(III)V

    invoke-virtual {v5, p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->setDirection(I)V

    goto :goto_5

    :cond_8
    new-instance v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    if-eqz p3, :cond_9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v7

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v5, v1, v7, v6}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;-><init>(III)V

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v5, v1, v6, v7}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;-><init>(III)V

    :goto_4
    invoke-virtual {v5, p4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->setDirection(I)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v1

    sub-int/2addr v1, v2

    move-object v4, v3

    :cond_a
    :goto_5
    if-nez v5, :cond_6

    :goto_6
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    :goto_7
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "out of array index "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p1, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " and "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p5

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSpenIndentLevelParagraphs([ILcom/samsung/android/sdk/pen/document/SpenObjectShape;)[Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x1

    aget v1, p1, v0

    new-array v1, v1, [Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v3

    const/4 v4, 0x0

    aget v4, p1, v4

    if-le v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v3

    aget v4, p1, v0

    if-ge v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v3

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    aput-object v2, v1, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->getValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnable()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->isEnable()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/Indent;->setValue(I)V

    return-void
.end method

.method public bridge synthetic setEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsSpan;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setValue(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/AbsIntegerSpan;->setValue(I)V

    return-void
.end method
