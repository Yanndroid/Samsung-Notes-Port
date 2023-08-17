.class public Lorg/apache/poi/xssf/model/CalculationChain;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CalculationChain;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/CalculationChain;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getCTCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->getCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeItem(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->getI()I

    move-result v1

    :cond_0
    if-ne v1, p1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->getR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object p1, v0, v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, v2, 0x1

    aget-object p2, v0, p1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result p2

    if-nez p2, :cond_1

    aget-object p1, v0, p1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->setI(I)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->removeC(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->setCalcChain(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;)V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
