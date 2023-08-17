.class public Lorg/apache/poi/xssf/model/SingleXmlCells;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/SingleXmlCells;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SingleXmlCells;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getAllSimpleXmlCell()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;->getSingleXmlCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;Lorg/apache/poi/xssf/model/SingleXmlCells;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCTSingleXMLCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    return-object v0
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->getSingleXmlCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;
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

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->setSingleXmlCells(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;)V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
