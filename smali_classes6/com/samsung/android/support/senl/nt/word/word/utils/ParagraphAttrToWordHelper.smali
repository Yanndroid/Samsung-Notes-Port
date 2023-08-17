.class public Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;
.super Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
        ">;"
    }
.end annotation


# static fields
.field private static final FONT_FAMILY:Ljava/lang/String; = "Arial"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastBulletType:I

.field private lastLine:I

.field private num:Lorg/apache/poi/xwpf/usermodel/XWPFNum;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ParagraphAttrToWordHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/word/data/WordParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;-><init>(Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;)V

    return-void
.end method

.method private getBulletXML(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/word/word/utils/Constants;->cTAbstractNumBulletXML:Ljava/lang/String;

    return-object p1

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/word/word/utils/Constants;->cTAbstractNumDecimalXML:Ljava/lang/String;

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/word/word/utils/Constants;->cTAbstractCheckXML:Ljava/lang/String;

    return-object p1

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/word/word/utils/Constants;->cTAbstractUnCheckXML:Ljava/lang/String;

    return-object p1
.end method

.method private restartNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config style numbering"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering$Factory;->parse(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getAbstractNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object p2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-direct {v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->addAbstractNum(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->addNum(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->num:Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->num:Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->addNewLvlOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->setIlvl(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->addNewStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config style numbering fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addAlignment(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->addAlignment(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V

    return-void
.end method

.method public addAlignment(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V
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
    sget-object p2, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->BOTH:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->CENTER:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->RIGHT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    goto :goto_0

    :cond_3
    sget-object p2, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic addProperty(Ljava/lang/Object;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->addProperty(Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V

    return-void
.end method

.method public addProperty(Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;)V
    .locals 6

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isBold()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setBold(Z)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setItalic(Z)V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->SINGLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setUnderline(Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;)V

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->isStrikethrough()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setStrikeThrough(Z)V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getFontSize()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getFontSize()D

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->setFontSize(Lorg/apache/poi/xwpf/usermodel/XWPFRun;D)V

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setColor(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd;->CLEAR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;)V

    const-string v0, "auto"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setColor(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/word/common/SpanAttributes;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setFill(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic addSpenTextParagraph(ILjava/lang/Object;Z)V
    .locals 0

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->addSpenTextParagraph(ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V

    return-void
.end method

.method public addSpenTextParagraph(ILorg/apache/poi/xwpf/usermodel/XWPFParagraph;Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->paragraphs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getIndentLevel()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getIndentLevel()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIndentation, level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentFromLeft()I

    move-result v2

    mul-int/lit16 v1, v1, 0x237

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationLeft(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getAlign()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getAlign()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAlignment, align: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->addAlignment(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getBulletType()I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    iget-boolean v2, v2, Lcom/samsung/android/support/senl/nt/word/word/WordView;->hasBullet:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    check-cast v1, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    iput-boolean v3, v1, Lcom/samsung/android/support/senl/nt/word/word/WordView;->hasBullet:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->getBulletType()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttributes;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBullet, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isChecked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v5, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setStrike(Z)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_9

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->getBulletXML(IZ)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->lastBulletType:I

    if-ne v1, v0, :cond_6

    if-eq v1, v2, :cond_6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->lastLine:I

    add-int/2addr v0, v3

    if-eq v0, p1, :cond_7

    :cond_6
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->restartNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Ljava/lang/String;)V

    :cond_7
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->num:Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setNumID(Ljava/math/BigInteger;)V

    :cond_8
    iput v1, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->lastBulletType:I

    :cond_9
    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->lastLine:I

    return-void
.end method

.method public bridge synthetic createRun(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->createRun(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;II)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p1

    return-object p1
.end method

.method public createRun(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;II)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p1

    const-string v0, "Arial"

    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setFontFamily(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/ParagraphAttrToOfficeHelper;->mContent:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;D)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/word/utils/ParagraphAttrToWordHelper;->setStyle(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;D)V

    return-void
.end method

.method public setStyle(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;D)V
    .locals 3

    const-wide/high16 v0, 0x3ff2000000000000L    # 1.125

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(D)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v0

    const-string v2, "Arial"

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p2

    new-instance p3, Ljava/math/BigDecimal;

    const-string v1, "2"

    invoke-direct {p3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    return-void
.end method
