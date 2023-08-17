.class public Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyle;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final elementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/TableStyleType;",
            "Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->name:Ljava/lang/String;

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->index:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    const-string v0, "declare namespace x=\'http://schemas.openxmlformats.org/spreadsheetml/2006/main\' .//x:dxf | .//dxf"

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mc:Fallback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "x:dxfs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "dxfs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    :try_start_0
    instance-of v2, v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v0

    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;->setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf$Factory;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Error parsing XSSFTableStyle"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getTableStyleElementList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyleType;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->isSetDxfId()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getDxfId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->isSetSize()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->getSize()J

    move-result-wide v4

    long-to-int p3, v4

    goto :goto_3

    :cond_4
    move p3, v1

    :goto_3
    if-eqz v3, :cond_5

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;

    invoke-direct {v2, v3, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDxfStyleProvider;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :cond_5
    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;->elementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    return-object p1
.end method

.method public isBuiltin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
