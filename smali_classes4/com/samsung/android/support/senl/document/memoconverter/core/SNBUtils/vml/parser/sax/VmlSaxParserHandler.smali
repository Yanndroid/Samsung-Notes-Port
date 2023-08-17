.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

.field private mElementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

.field private mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

.field private mFormulasF:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;

.field private mFormulasFList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

.field private mHandles:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

.field private mHandlesH:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles$H;

.field private mHandlesHList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles$H;",
            ">;"
        }
    .end annotation
.end field

.field private mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

.field private mMetaDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

.field private mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

.field private mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

.field private mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

.field private mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

.field private mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

.field private mTextBox:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

.field private mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private elementListAdd(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementInfo;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mElementList:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->makeAndGetElements()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mElementList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->makeAndGetElements()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->makeAndGetElements()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mElementList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetElements()V

    return-void
.end method

.method private formulasElementListAdd(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasFList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->makeAndGetList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasFList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasFList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetFormulasElements()V

    return-void
.end method

.method private getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handlesElementListAdd(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles$H;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandlesHList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandles:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;->makeAndGetList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandlesHList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandlesHList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetFormulasElements()V

    return-void
.end method

.method private metaDataListAdd(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mGroup:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mMetaDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetShapes()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->getMetaDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetGroup()V

    :goto_0
    return-void
.end method

.method private setArcAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v1, "startangle"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;->setStartAngle(Ljava/lang/String;)V

    const-string v1, "endangle"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;->setEndAngle(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "arc"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setId(Ljava/lang/String;)V

    const-string v0, "class"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setClsName(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setClsName(Ljava/lang/String;)V

    const-string v0, "href"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setClsName(Ljava/lang/String;)V

    const-string v0, "alt"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setClsName(Ljava/lang/String;)V

    const-string v0, "wrapcoords"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setClsName(Ljava/lang/String;)V

    const-string v0, "style"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setStyle(Ljava/lang/String;)V

    const-string v0, "coordsize"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setCoordSize(Ljava/lang/String;)V

    const-string v0, "coordorigin"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->setCoordOrigin(Ljava/lang/String;)V

    return-void
.end method

.method private setCurveAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v1, "from"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->setFrom(Ljava/lang/String;)V

    const-string v1, "control1"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->setControl1(Ljava/lang/String;)V

    const-string v1, "control2"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->setControl2(Ljava/lang/String;)V

    const-string v1, "to"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;->setTo(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "curve"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setGroupAttrs(Lorg/xml/sax/Attributes;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mGroup:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->setDefaultMember()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mGroup:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method private setImageAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedImage;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedImage;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedImage;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "image"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setLineAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v1, "from"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->setFrom(Ljava/lang/String;)V

    const-string v1, "to"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->setTo(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "line"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setOvalAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedOval;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedOval;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedOval;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "oval"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setPolyLineAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedPolyLine;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedPolyLine;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedPolyLine;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v1, "points"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedPolyLine;->setPoints(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "polyline"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setRectAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRect;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRect;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRect;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "rect"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setRoundRectAttrs(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;->setDefaultMember()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v1, "arcsize"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;->setArcSize(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string v1, "roundrect"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->setAll(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;)V

    return-void
.end method

.method private setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setDefaultMember()V

    const-string v0, "opacity"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setOpacity(Ljava/lang/String;)V

    const-string v0, "chromakey"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setChromaKey(Ljava/lang/String;)V

    const-string v0, "stroke"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setStroke(Ljava/lang/String;)V

    const-string v0, "stroked"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setStroke(Ljava/lang/String;)V

    :cond_0
    const-string v0, "strokecolor"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setStrokeColor(Ljava/lang/String;)V

    const-string v0, "strokeweight"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setStrokeWeight(Ljava/lang/String;)V

    const-string v0, "fill"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setFill(Ljava/lang/String;)V

    const-string v0, "filled"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setFill(Ljava/lang/String;)V

    :cond_1
    const-string v0, "fillcolor"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setFillColor(Ljava/lang/String;)V

    const-string v0, "print"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;->setPrint(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeAttrsAll(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->setDefaultMember()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v0, "type"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->setType(Ljava/lang/String;)V

    const-string v0, "adj"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->setAdj(Ljava/lang/String;)V

    const-string v0, "path"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->setPathInfos(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementBackground(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "fill"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;->setFill(Ljava/lang/String;)V

    const-string v0, "filled"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;->setFill(Ljava/lang/String;)V

    :cond_0
    const-string v0, "fillcolor"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;->setFillcolor(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementFill(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setType(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setOn(Ljava/lang/String;)V

    const-string v0, "color"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setColor(Ljava/lang/String;)V

    const-string v0, "opacity"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setOpacity(Ljava/lang/String;)V

    const-string v0, "color2"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setColor2(Ljava/lang/String;)V

    const-string v0, "opacity2"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setOpacity2(Ljava/lang/String;)V

    const-string v0, "src"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setSrc(Ljava/lang/String;)V

    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setSize(Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setOrigin(Ljava/lang/String;)V

    const-string v0, "position"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setPosition(Ljava/lang/String;)V

    const-string v0, "aspect"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setAspect(Ljava/lang/String;)V

    const-string v0, "alignshape"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setAlignShape(Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setColors(Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setAngle(Ljava/lang/String;)V

    const-string v0, "focus"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setFocus(Ljava/lang/String;)V

    const-string v0, "focussize"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setFocusSize(Ljava/lang/String;)V

    const-string v0, "focusposition"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setFocusPosition(Ljava/lang/String;)V

    const-string v0, "method"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementFormulas(Lorg/xml/sax/Attributes;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementFormulasF(Lorg/xml/sax/Attributes;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;->createF()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasF:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;

    const-string v0, "eqn"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasF:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;->setEqn(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementHandles(Lorg/xml/sax/Attributes;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandles:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandles:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementHandlesH(Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method private setShapeElementImageData(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "src"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setSrc(Ljava/lang/String;)V

    const-string v0, "href"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setHref(Ljava/lang/String;)V

    const-string v0, "linktype"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setLinkType(Ljava/lang/String;)V

    const-string v0, "cropleft"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setCropLeft(Ljava/lang/String;)V

    const-string v0, "croptop"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setCropTop(Ljava/lang/String;)V

    const-string v0, "cropbottom"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setCropBottom(Ljava/lang/String;)V

    const-string v0, "embosscolor"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setEmbossColor(Ljava/lang/String;)V

    const-string v0, "gain"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setGain(Ljava/lang/String;)V

    const-string v0, "blacklevel"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setBlackLevel(Ljava/lang/String;)V

    const-string v0, "gamma"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setGamma(Ljava/lang/String;)V

    const-string v0, "grayscale"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setGrayScale(Ljava/lang/String;)V

    const-string v0, "bilevel"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;->setBiLevel(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementPath(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "v"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setPathInfos(Ljava/lang/String;)V

    const-string v0, "limo"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setLimo(Ljava/lang/String;)V

    const-string v0, "fillok"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setFillOk(Ljava/lang/String;)V

    const-string v0, "strokeok"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setStrokeOk(Ljava/lang/String;)V

    const-string v0, "arrowok"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setArrowOk(Ljava/lang/String;)V

    const-string v0, "gradientshapeok"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setGradientShapeOk(Ljava/lang/String;)V

    const-string v0, "textpathok"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setTextPathOk(Ljava/lang/String;)V

    const-string v0, "textboxrect"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;->setTextBoxRect(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementShadow(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setOn(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setType(Ljava/lang/String;)V

    const-string v0, "obscured"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setObscured(Ljava/lang/String;)V

    const-string v0, "color"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setColor(Ljava/lang/String;)V

    const-string v0, "opacity"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setOpacity(Ljava/lang/String;)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setOffset(Ljava/lang/String;)V

    const-string v0, "color2"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setColor2(Ljava/lang/String;)V

    const-string v0, "opacity2"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setOpacity2(Ljava/lang/String;)V

    const-string v0, "offset2"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setOffset2(Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;->setOrigin(Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementStroke(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setOn(Ljava/lang/String;)V

    const-string v0, "weight"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setWeight(Ljava/lang/String;)V

    const-string v0, "color"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setColor(Ljava/lang/String;)V

    const-string v0, "opacity"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setOpacity(Ljava/lang/String;)V

    const-string v0, "linestyle"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setLineStyle(Ljava/lang/String;)V

    const-string v0, "miterlimit"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setMiterLimit(Ljava/lang/String;)V

    const-string v0, "joinstyle"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setJoinStyle(Ljava/lang/String;)V

    const-string v0, "endcap"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setEndCap(Ljava/lang/String;)V

    const-string v0, "dashstyle"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setDashStyle(Ljava/lang/String;)V

    const-string v0, "filltype"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setFillType(Ljava/lang/String;)V

    const-string v0, "color2"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setColor2(Ljava/lang/String;)V

    const-string v0, "src"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setSrc(Ljava/lang/String;)V

    const-string v0, "imagesize"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setImageSize(Ljava/lang/String;)V

    const-string v0, "imagealignshape"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setImageAlignShape(Ljava/lang/String;)V

    const-string v0, "startarrow"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setStartArrow(Ljava/lang/String;)V

    const-string v0, "startarrowwidth"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setStartArrowWidth(Ljava/lang/String;)V

    const-string v0, "startarrowlength"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setStartArrowLength(Ljava/lang/String;)V

    const-string v0, "endarrow"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setEndArrow(Ljava/lang/String;)V

    const-string v0, "endarrowwidth"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setEndArrowWidth(Ljava/lang/String;)V

    const-string v0, "endarrowlength"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;->setEndArrowLength(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementTextBox(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextBox:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextBox:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "style"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextBox:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;->setStyle(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeElementTextPath(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setDefaultMember()V

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;->setId(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setOn(Ljava/lang/String;)V

    const-string v0, "style"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setStyle(Ljava/lang/String;)V

    const-string v0, "fitshape"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setFitShape(Ljava/lang/String;)V

    const-string v0, "fitpath"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setFitPath(Ljava/lang/String;)V

    const-string v0, "trim"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setTrim(Ljava/lang/String;)V

    const-string v0, "xscale"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setXScale(Ljava/lang/String;)V

    const-string v0, "text"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setShapeTypeAttrsAll(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->setDefaultMember()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lorg/xml/sax/Attributes;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getShapeAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;Lorg/xml/sax/Attributes;)V

    const-string v0, "adj"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->setAdj(Ljava/lang/String;)V

    const-string v0, "path"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->getStringAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->setPathInfos(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " start:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " length:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "characters"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/debug/VmlDebug;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 2

    const-string v0, "EndDocument"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/debug/VmlDebug;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "qName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "endElement"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/debug/VmlDebug;->message(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "v:group"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mGroup:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

    const-string p2, "group"

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->metaDataListAdd(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;)V

    goto/16 :goto_3

    :cond_0
    const-string p1, "v:arc"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:curve"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:image"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:line"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:polyline"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:rect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:roundrect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "v:oval"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p1, "v:shape"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    const-string p2, "shape"

    goto :goto_0

    :cond_2
    const-string p1, "v:shapetype"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    const-string p2, "shapetype"

    goto :goto_0

    :cond_3
    const-string p1, "v:background"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    const-string p2, "background"

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->elementListAdd(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBase;)V

    goto/16 :goto_3

    :cond_4
    const-string p1, "v:fill"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    const-string p2, "fill"

    goto :goto_1

    :cond_5
    const-string p1, "v:formulas"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    const-string p2, "formulas"

    goto :goto_1

    :cond_6
    const-string p1, "v:f"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasF:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->formulasElementListAdd(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;)V

    goto/16 :goto_3

    :cond_7
    const-string p1, "v:handles"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandles:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    const-string p2, "handles"

    goto :goto_1

    :cond_8
    const-string p1, "v:h"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandlesH:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles$H;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->handlesElementListAdd(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles$H;)V

    goto :goto_3

    :cond_9
    const-string p1, "v:imagedata"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    const-string p2, "imagedata"

    goto :goto_1

    :cond_a
    const-string p1, "v:shadow"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    const-string p2, "shadow"

    goto :goto_1

    :cond_b
    const-string p1, "v:stroke"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    const-string p2, "stroke"

    goto :goto_1

    :cond_c
    const-string p1, "v:textbox"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextBox:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    const-string p2, "textbox"

    goto :goto_1

    :cond_d
    const-string p1, "v:textpath"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    const-string p2, "textpath"

    goto/16 :goto_1

    :cond_e
    const-string p1, "v:path"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    const-string p2, "path"

    goto/16 :goto_1

    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    const-string p2, "predefinedshape"

    goto/16 :goto_0

    :cond_10
    :goto_3
    return-void
.end method

.method public resetElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mBackground:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementBackground;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFill:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFill;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulas:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetFormulasElements()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandles:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetHandlesElements()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mImageData:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementImageData;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShadow:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementShadow;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mStroke:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementStroke;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextBox:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextBox;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mTextPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementTextPath;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPath:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementPath;

    return-void
.end method

.method public resetFormulasElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasF:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulas$F;

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mGroup:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetShapes()V

    return-void
.end method

.method public resetHandlesElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandlesH:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementHandles$H;

    return-void
.end method

.method public resetShapes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mShapeType:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mPredefinedShape:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mElementList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mFormulasFList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mHandlesHList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->resetElements()V

    return-void
.end method

.method public setMetaDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->mMetaDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public startDocument()V
    .locals 2

    const-string v0, "StartDocument"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/debug/VmlDebug;->message(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "qName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "startElement"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/debug/VmlDebug;->message(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "v:group"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setGroupAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "v:arc"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setArcAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "v:curve"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setCurveAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "v:image"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setImageAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "v:line"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setLineAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "v:polyline"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setPolyLineAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "v:rect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setRectAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "v:roundrect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setRoundRectAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_7
    const-string p1, "v:oval"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setOvalAttrs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "v:shape"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeAttrsAll(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "v:shapetype"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeTypeAttrsAll(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "v:background"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementBackground(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_b
    const-string p1, "v:fill"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementFill(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_c
    const-string p1, "v:formulas"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementFormulas(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :cond_d
    const-string p1, "v:f"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementFormulasF(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_e
    const-string p1, "v:handles"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_f

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementHandles(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_f
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementHandlesH(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_10
    const-string p1, "v:imagedata"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementImageData(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_11
    const-string p1, "v:shadow"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_12

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementShadow(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_12
    const-string p1, "v:stroke"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_13

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementStroke(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_13
    const-string p1, "v:textbox"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_14

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementTextBox(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_14
    const-string p1, "v:textpath"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_15

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementTextPath(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_15
    const-string p1, "v:path"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_16

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/parser/sax/VmlSaxParserHandler;->setShapeElementPath(Lorg/xml/sax/Attributes;)V

    :cond_16
    :goto_0
    return-void
.end method
