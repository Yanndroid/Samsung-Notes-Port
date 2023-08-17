.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;
.super Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDENT_LEVEL_MAX:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mParams:Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ParagraphAttrToPPTHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->mParams:Lcom/samsung/android/support/senl/nt/word/powerpoint/data/PowerPointParams;

    return-void
.end method

.method private addBullet(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;IZZ)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    const/16 p3, 0x8

    if-eq p2, p3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_5

    sget-object p2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {p1, p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletAutoNumber(Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;I)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {p3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setStrikethrough(Z)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    const-string p2, "\u25a0"

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBullet(Z)V

    const-string p2, "\u25a1"

    :goto_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setBulletCharacter(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addAlignment(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addAlignment(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    return-void
.end method

.method public addAlignment(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    goto :goto_0

    :cond_3
    sget-object p2, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic addProperty(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addProperty(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V

    return-void
.end method

.method public addProperty(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isBold()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setBold(Z)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setItalic(Z)V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setUnderlined(Z)V

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isStrikethrough()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setStrikethrough(Z)V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getFontSize()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getFontSize()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/java/awt/Color;->decode(Ljava/lang/String;)Lorg/apache/poi/java/awt/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic addSpenTextParagraph(ILjava/lang/Object;Z)V
    .locals 0

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addSpenTextParagraph(ILorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Z)V

    return-void
.end method

.method public addSpenTextParagraph(ILorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getIndentLevel()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getIndentLevel()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIndentation, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->setIndentLevel(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getAlign()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getAlign()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAlignment, align: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addAlignment(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;I)V

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getBulletType()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getBulletType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBullet, type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->addBullet(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;IZZ)V

    :cond_4
    return-void
.end method

.method public bridge synthetic createRun(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->createRun(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;II)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object p1

    return-object p1
.end method

.method public createRun(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;II)Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->addNewTextRun()Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    move-result-object p1

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setFontSize(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->setText(Ljava/lang/String;)V

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;D)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/ParagraphAttrToPPTHelper;->setStyle(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;D)V

    return-void
.end method

.method public setStyle(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;D)V
    .locals 0

    return-void
.end method
