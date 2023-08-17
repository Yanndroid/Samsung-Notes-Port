.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    return-void
.end method


# virtual methods
.method public getCTPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
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
