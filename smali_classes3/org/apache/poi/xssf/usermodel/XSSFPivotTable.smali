.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;
    }
.end annotation


# static fields
.field public static final CREATED_VERSION:S = 0x3s

.field public static final MIN_REFRESHABLE_VERSION:S = 0x3s

.field public static final UPDATED_VERSION:S = 0x3s


# instance fields
.field private dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

.field private pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

.field private pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

.field private pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private addDataField(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->addNewDataField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    invoke-interface {v2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setName(Ljava/lang/String;)V

    int-to-long p1, p2

    invoke-interface {v2, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->setFld(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->sizeOfDataFieldArray()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {v1, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->setCount(J)V

    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDataSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method


# virtual methods
.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;I)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V

    return-void
.end method

.method public addColumnLabel(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addDataColumn(IZ)V

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->addDataField(Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;ILjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x2

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object p2

    const/4 p3, -0x2

    invoke-interface {p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->sizeOfFieldArray()I

    move-result p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;->setCount(J)V

    :cond_1
    return-void
.end method

.method public addDataColumn(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setDataField(Z)V

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    return-void
.end method

.method public addReportFilter(I)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_PAGE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    :goto_0
    if-gt v4, v1, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object v5

    sget-object v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    invoke-interface {v0, p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMultipleFieldFilters(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->addNewPageField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->setHier(I)V

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->setFld(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->sizeOfPageFieldArray()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->setCount(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;->getCount()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setColPageCount(J)V

    return-void
.end method

.method public addRowLabel(I)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;->AXIS_ROW:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    :goto_0
    if-gt v4, v1, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->addNewItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;

    move-result-object v5

    sget-object v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType;->DEFAULT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItem;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STItemType$Enum;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->sizeOfItemArray()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;->setCount(J)V

    invoke-interface {v0, p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setPivotFieldArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->addNewField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->setX(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->sizeOfFieldArray()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->setCount(J)V

    return-void
.end method

.method public commit()V
    .locals 4

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pivotTableDefinition"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v2, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createDefaultDataColumns()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotArea()Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    :goto_1
    if-gt v2, v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->addNewPivotField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setDataField(Z)V

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->setShowAll(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->sizeOfPivotFieldArray()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;->setCount(J)V

    return-void
.end method

.method public createSourceReferences(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstDataCol(J)V

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstDataRow(J)V

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setFirstHeaderRow(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;->setRef(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setLocation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->addNewCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;->WORKSHEET:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->addNewWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setSheet(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setDataSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    invoke-interface {p3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;->configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pivot table source area reference or name must be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public getCTPivotTableDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    return-object v0
.end method

.method public getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->dataSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object v0
.end method

.method public getParentSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-object v0
.end method

.method public getPivotArea()Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getDataSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    return-object v0
.end method

.method public getPivotCache()Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    return-object v0
.end method

.method public getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    return-object v0
.end method

.method public getPivotCacheRecords()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-object v0
.end method

.method public getRowLabelColumns()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;->getFieldArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTField;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

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

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
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

.method public setCTPivotTableDefinition(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    return-void
.end method

.method public setDefaultPivotTableDefinition()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMultipleFieldFilters(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setIndent(J)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setCreatedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setMinRefreshableVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setUpdatedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setItemPrintTitles(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setUseAutoFormatting(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyNumberFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyWidthHeightFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyAlignmentFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyPatternFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyFontFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setApplyBorderFormats(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->getCTPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->getCacheId()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setCacheId(J)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PivotTable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->getCacheId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    const-string v3, "Values"

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->setDataCaption(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotTableDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->addNewPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;

    move-result-object v0

    const-string v3, "PivotStyleLight16"

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setName(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowLastColumn(Z)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowColStripes(Z)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowRowStripes(Z)V

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowColHeaders(Z)V

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;->setShowRowHeaders(Z)V

    return-void
.end method

.method public setParentSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->parentSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method

.method public setPivotCache(Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCache:Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    return-void
.end method

.method public setPivotCacheDefinition(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheDefinition:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    return-void
.end method

.method public setPivotCacheRecords(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->pivotCacheRecords:Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    return-void
.end method
