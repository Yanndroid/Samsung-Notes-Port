.class public Lorg/apache/poi/xssf/model/StylesTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field public static final FIRST_CUSTOM_STYLE_ID:I = 0xa5

.field private static final FIRST_USER_DEFINED_NUMBER_FORMAT_ID:S = 0xa4s

.field private static final MAXIMUM_STYLE_ID:I


# instance fields
.field private MAXIMUM_NUMBER_OF_DATA_FORMATS:I

.field private final borders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;",
            ">;"
        }
    .end annotation
.end field

.field private doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

.field private final dxfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;",
            ">;"
        }
    .end annotation
.end field

.field private final fills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;",
            ">;"
        }
    .end annotation
.end field

.field private final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private final numberFormats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styleXfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
            ">;"
        }
    .end annotation
.end field

.field private final tableStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/TableStyle;",
            ">;"
        }
    .end annotation
.end field

.field private theme:Lorg/apache/poi/xssf/model/ThemesTable;

.field private workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

.field private final xfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxCellStyles()I

    move-result v0

    sput v0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_STYLE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    const/16 v0, 0xfa

    iput v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->addNewStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/StylesTable;->initialize()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    const/16 v0, 0xfa

    iput v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private static createDefaultBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    return-object v0
.end method

.method private static createDefaultFills()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    aget-object v1, v0, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    return-object v0
.end method

.method private static createDefaultFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 4

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeightInPoints(S)V

    sget-short v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setColor(S)V

    const-string v0, "Calibri"

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->SWISS:Lorg/apache/poi/ss/usermodel/FontFamily;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFamily(Lorg/apache/poi/ss/usermodel/FontFamily;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontScheme;->MINOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setScheme(Lorg/apache/poi/ss/usermodel/FontScheme;)V

    return-object v1
.end method

.method private static createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    return-object v0
.end method

.method private getNumberFormatId(Ljava/lang/String;)S
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number format not in style table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize()V
    .locals 5

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultFills()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v4, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    invoke-direct {v2, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setXfId(J)V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public _getDXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public _getStyleXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public _getXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v0

    sget v1, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_STYLE_ID:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setXfId(J)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I

    move-result v1

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {v2, v1, v0, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The maximum number of Cell Styles was exceeded. You can define up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " style in a .xlsx Workbook"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureThemesTable()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-void
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getBold()Z

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getColor()S

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeight()S

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getItalic()Z

    move-result v2

    if-ne v2, p5, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getStrikeout()Z

    move-result v2

    if-ne v2, p6, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getTypeOffset()S

    move-result v2

    if-ne v2, p7, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getUnderline()B

    move-result v2

    if-ne v2, p8, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    return-object p1
.end method

.method public getBorders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCTStylesheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyleXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    return-object p1
.end method

.method public getDxfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    return-object p1
.end method

.method public getExplicitTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/usermodel/TableStyle;

    return-object p1
.end method

.method public getExplicitTableStyleNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    return-object p1
.end method

.method public getFills()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    return-object p1
.end method

.method public getFonts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFFont;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-object v0
.end method

.method public getMaxNumberOfDataFormats()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    return v0
.end method

.method public getNumCellStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumDataFormats()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getNumberFormatAt(S)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumberFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 4

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getXfId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getXfId()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {v1, p1, v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getExplicitTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    return-object v0
.end method

.method public putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public putCellStyleXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public putDxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public putFill(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I

    move-result p1

    return p1
.end method

.method public putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I
    .locals 1

    const/4 v0, -0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public putNumberFormat(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatId(Ljava/lang/String;)S

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Found the format, but couldn\'t figure out where - should never happen!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    const/16 v1, 0xa4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    if-ltz v0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v1, v0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cowardly avoiding creating a number format with a negative id.This is probably due to arithmetic overflow."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The maximum number of Data Formats was exceeded. You can define up to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " formats in a .xlsx Workbook."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putNumberFormat(SLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 8

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->fromColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;)Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getNumFmts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->getNumFmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v5

    long-to-int v5, v5

    int-to-short v5, v5

    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->getFontArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v6, v5, v4, v7}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->getFillArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->getBorderArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->getXfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->getXfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->getDxfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getTableStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;->getTableStyleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;

    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v5, v1, v0, v2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;-><init>(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeNumberFormat(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatId(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->removeNumberFormat(S)Z

    move-result p1

    return p1
.end method

.method public removeNumberFormat(S)Z
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetNumFmtId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getNumFmtId()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetApplyNumberFormat()V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetNumFmtId()V

    goto :goto_1

    :cond_2
    return v0
.end method

.method public replaceCellStyleXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceCellXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxNumberOfDataFormats(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumDataFormats()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum Number of Data Formats must be greater than or equal to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the maximum number of data formats less than the current quantity.Data formats must be explicitly removed (via StylesTable.removeNumberFormat) before the limit can be decreased."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    return-void
.end method

.method public setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/ThemesTable;->setColorMap(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->addNewNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->setNumFmtId(J)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->setFormatCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setNumFmts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v6

    aput-object v6, v2, v5

    move v5, v7

    goto :goto_1

    :cond_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->setFontArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setFonts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v6

    aput-object v6, v2, v5

    move v5, v7

    goto :goto_2

    :cond_4
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->setFillArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setFills(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v1

    :cond_5
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v5

    aput-object v5, v2, v4

    move v4, v6

    goto :goto_3

    :cond_6
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->setBorderArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setBorders(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v1

    :cond_7
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->setXfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setCellXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;)V

    :cond_8
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->setXfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setCellStyleXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;)V

    :cond_a
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v1

    :cond_b
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->setDxfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setDxfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;)V

    :cond_c
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
