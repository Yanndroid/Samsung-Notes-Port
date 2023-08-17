.class public Lorg/apache/poi/xssf/usermodel/XSSFTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Table;


# instance fields
.field private transient columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient commonXPath:Ljava/lang/String;

.field private transient ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

.field private ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

.field private transient endCellReference:Lorg/apache/poi/ss/util/CellReference;

.field private transient name:Ljava/lang/String;

.field private transient startCellReference:Lorg/apache/poi/ss/util/CellReference;

.field private transient styleName:Ljava/lang/String;

.field private transient xmlColumnPr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private static caseInsensitive(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    return-object v0
.end method

.method private setCellReferences()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public addColumn()V
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
        value = "Return type likely to change"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->addNewTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->addNewTableColumn()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->sizeOfTableColumnArray()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->setCount(J)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setId(J)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    return-void
.end method

.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public contains(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartRowIndex()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndRowIndex()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartColIndex()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndColIndex()I

    move-result v1

    if-gt p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public findColumnIndex(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v1

    array-length v1, v1

    new-instance v2, Ljava/util/HashMap;

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    invoke-static {v5}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->caseInsensitive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->caseInsensitive(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    return-object v0
.end method

.method public getCellReferences()Lorg/apache/poi/ss/util/AreaReference;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public getCommonXpath()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    const-string v5, "/"

    if-ge v4, v3, :cond_3

    aget-object v6, v2, v4

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v1

    if-nez v6, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_0
    array-length v6, v1

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v7

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v2, ""

    aput-object v2, v1, v0

    invoke-static {v1, v5}, Lorg/apache/poi/util/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellReferences()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getEndColIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getEndRowIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getHeaderRowCount()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getHeaderRowCount()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfMappedColumns()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumerOfMappedColumns()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getNumberOfMappedColumns()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setCellReferences()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getStartColIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getStartRowIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    return v0
.end method

.method public getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->setStyleName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalsRowCount()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTotalsRowCount()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public getXmlColumnPrs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getTableColumns()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v5

    invoke-direct {v4, p0, v3, v5}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    return-object v0
.end method

.method public isHasTotalsRow()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTotalsRowShown()Z

    move-result v0

    return v0
.end method

.method public mapsTo(J)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getXmlColumnPrs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->getMapId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTableDelete()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->getTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
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

.method public setCellReferences(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setRef(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetAutoFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateReferences()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->unsetName()V

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->name:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStyleName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->unsetName()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->styleName:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->isSetTableStyleInfo()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->addNewTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateHeaders()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->validate()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;->getTableColumnArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v7}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setName(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctColumns:[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->columnMap:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->xmlColumnPr:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->commonXPath:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public updateReferences()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->startCellReference:Lorg/apache/poi/ss/util/CellReference;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->endCellReference:Lorg/apache/poi/ss/util/CellReference;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->updateHeaders()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTable;->ctTable:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->setTable(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;)V

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/TableDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
