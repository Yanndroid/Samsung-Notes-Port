.class public Lorg/apache/poi/xssf/model/SharedStringsTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field private static final options:Lorg/apache/xmlbeans/XmlOptions;


# instance fields
.field private _sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

.field private count:I

.field private final stmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/model/SharedStringsTable;->options:Lorg/apache/xmlbeans/XmlOptions;

    const-string v1, "SAVE_INNER"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, ""

    const-string v2, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveImplicitNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->addNewSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private getKey(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/model/SharedStringsTable;->options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getKey(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->addNewSi()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    iget-object p1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    return v0
.end method

.method public getEntryAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 7

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getCount()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getUniqueCount()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getSiArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getKey(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to parse shared strings table"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveCDataLengthThreshold(I)Lorg/apache/xmlbeans/XmlOptions;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveCDataEntityCountThreshold(I)Lorg/apache/xmlbeans/XmlOptions;

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->setCount(J)V

    iget v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->setUniqueCount(J)V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1, p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
