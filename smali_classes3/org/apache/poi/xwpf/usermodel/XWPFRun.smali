.class public Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;
.implements Lorg/apache/poi/wp/usermodel/CharacterRun;


# instance fields
.field private parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

.field private pictureText:Ljava/lang/String;

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPicture;",
            ">;"
        }
    .end annotation
.end field

.field private run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;

    move-result-object v8

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/IdentifierManager;->reserve(J)J

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getInlineArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;

    move-result-object v7

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/util/IdentifierManager;->reserve(J)J

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getPictArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    const-string v3, "declare namespace w=\'http://schemas.openxmlformats.org/wordprocessingml/2006/main\' .//w:t"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v6, v1

    :goto_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v7, v7, Lorg/w3c/dom/Text;

    if-eqz v7, :cond_7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, "\n"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    return-void
.end method

.method private _getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V
    .locals 4

    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "w:instrText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFldCharType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->getCheckBoxList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "|X|"

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "|_|"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    const-string v1, "\t"

    if-eqz v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    const-string v2, "\n"

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "w:tab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "tab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string/jumbo v1, "w:br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-string/jumbo v1, "w:cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "footnoteReference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "]"

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[footnoteRef:"

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[endnoteRef:"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    return-void
.end method

.method private getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declare namespace pic=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' .//pic:pic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_1
    instance-of v4, v3, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;Z)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, ".//*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "w:rt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "w:rubyBase"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    :goto_1
    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method private static isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v0, p0, :cond_2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v0, p0, :cond_2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static preserveSpaces(Lorg/apache/xmlbeans/XmlString;)V
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v2, "space"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preserve"

    invoke-interface {p0, v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addBreak()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    return-void
.end method

.method public addBreak(Lorg/apache/poi/xwpf/usermodel/BreakClear;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BreakType;->TEXT_WRAPPING:Lorg/apache/poi/xwpf/usermodel/BreakType;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/BreakType;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;)V

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/BreakClear;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setClear(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;)V

    return-void
.end method

.method public addBreak(Lorg/apache/poi/xwpf/usermodel/BreakType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/BreakType;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;)V

    return-void
.end method

.method public addCarriageReturn()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewCr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    return-void
.end method

.method public addPicture(Ljava/io/InputStream;ILjava/lang/String;II)Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    .locals 10

    const-string v0, "\">"

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    :try_start_0
    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->addNewInline()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a:graphic xmlns:a=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<a:graphicData uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<pic:pic xmlns:pic=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" />"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</a:graphicData>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</a:graphic>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlToken$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlToken;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    const-wide/16 v0, 0x0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistT(J)V

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistR(J)V

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistB(J)V

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistL(J)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {v2, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    int-to-long v5, p4

    invoke-interface {v2, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    int-to-long p4, p5

    invoke-interface {v2, p4, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v7

    invoke-interface {v7, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Picture "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {v7, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object p3

    const/4 v2, 0x1

    invoke-interface {p3, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    invoke-interface {v2, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p3

    invoke-interface {p3, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {p3, p4, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p1

    sget-object p3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {p1, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addTab()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    return-void
.end method

.method public getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    return-object v0
.end method

.method public getCharacterSpacing()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSpacing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetColor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPicture;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontFamily(Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFamily(Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetRFonts()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange:[I

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAscii()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsi()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsia()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCs()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSz()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getKerning()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetKern()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    return-object v0
.end method

.method public getPhonetic()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscript()Lorg/apache/poi/xwpf/usermodel/VerticalAlign;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetVertAlign()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->BASELINE:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    :goto_0
    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTextPosition()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetU()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->NONE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    :goto_0
    return-object v0
.end method

.method public isBold()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetB()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCapitalized()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetCaps()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDoubleStrikeThrough()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetDstrike()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmbossed()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetEmboss()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHighlighted()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetHighlight()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isImprinted()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetImprint()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isItalic()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetI()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShadowed()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetShadow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSmallCaps()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSmallCaps()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStrike()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isStrikeThrough()Z

    move-result v0

    return v0
.end method

.method public isStrikeThrough()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetStrike()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeBreak()V
    .locals 0

    return-void
.end method

.method public removeCarriageReturn()V
    .locals 0

    return-void
.end method

.method public removeTab()V
    .locals 0

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetB()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setCapitalized(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetCaps()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setCharacterSpacing(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSpacing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object v0

    :goto_1
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetColor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v0

    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setDoubleStrikethrough(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetDstrike()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setEmbossed(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetEmboss()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setFontFamily(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetRFonts()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v0

    :goto_1
    if-nez p2, :cond_4

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetHAnsi()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetCs()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetEastAsia()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange:[I

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 v1, 0x2

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-eq p2, v1, :cond_6

    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsia(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setFontSize(I)V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSz()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p1

    :goto_1
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "2"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setImprinted(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetImprint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetI()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setKerning(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetKern()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    :goto_1
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetShadow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setSmallCaps(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSmallCaps()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setStrike(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setStrikeThrough(Z)V

    return-void
.end method

.method public setStrikeThrough(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetStrike()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    return-void
.end method

.method public setSubscript(Lorg/apache/poi/xwpf/usermodel/VerticalAlign;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetVertAlign()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;I)V

    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p2

    :goto_0
    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->preserveSpaces(Lorg/apache/xmlbeans/XmlString;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Value too large for the parameter position in XWPFRun.setText(String value,int pos)"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextPosition(I)V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetPosition()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object p1

    :goto_1
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setUnderline(Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;)V

    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getPhonetic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
