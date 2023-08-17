.class public Lorg/apache/poi/xssf/model/MapInfo;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

.field private maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/MapInfo;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/MapInfo;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getAllXSSFMaps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCTMapInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    return-object v0
.end method

.method public getCTSchemaById(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->getSchemaArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method public getXSSFMapById(I)Lorg/apache/poi/xssf/usermodel/XSSFMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    return-object p1
.end method

.method public getXSSFMapByName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFMap;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 6

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->getMapInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    iget-object p1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->getMapArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getID()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-direct {v5, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFMap;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;Lorg/apache/poi/xssf/model/MapInfo;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->setMapInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;)V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
