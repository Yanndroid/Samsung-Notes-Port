.class public Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;
.super Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.source "SourceFile"


# static fields
.field private static final BLANK_WORKSHEET:[B


# instance fields
.field public chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->blankWorksheet()[B

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->BLANK_WORKSHEET:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method private static blankWorksheet()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getCTChartsheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    return-object v0
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->BLANK_WORKSHEET:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-super {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ChartsheetDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ChartsheetDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ChartsheetDocument;->getChartsheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chartsheet"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    invoke-interface {v1, p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
