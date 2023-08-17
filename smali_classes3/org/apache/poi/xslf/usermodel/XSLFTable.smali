.class public Lorg/apache/poi/xslf/usermodel/XSLFTable;
.super Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/sl/usermodel/TableShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
        ">;",
        "Lorg/apache/poi/sl/usermodel/TableShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DRAWINGML_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final TABLE_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/table"


# instance fields
.field private _rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
            ">;"
        }
    .end annotation
.end field

.field private _table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p2

    const-string v0, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string/jumbo v1, "tbl"

    invoke-interface {p2, v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-nez v0, :cond_1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->sizeOfTrArray()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Schemas (*.xsb) for CTTable can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - use POIXMLTypeLoader.setClassLoader() to set the loader, e.g. with CTTable.class.getClassLoader()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a:tbl element was not found in\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .locals 6

    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewNvGraphicFramePr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr p0, v3

    int-to-long v4, p0

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;->addNewGraphicFrameLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;

    move-result-object p0

    invoke-interface {p0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;->setNoGrp(Z)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->addNewGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string/jumbo v4, "tbl"

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->addNewTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->addNewTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlCursor;->moveXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    const-string v1, "http://schemas.openxmlformats.org/drawingml/2006/table"

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->setUri(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addRow()Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->addNewTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->setHeight(D)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    return-object v1
.end method

.method public getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    return-object v0
.end method

.method public bridge synthetic getCell(II)Lorg/apache/poi/sl/usermodel/TableCell;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getRows()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->getCells()Ljava/util/List;

    move-result-object p1

    if-ltz p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getColumnWidth(I)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->getGridColArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->getW()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->sizeOfGridColArray()I

    move-result v0

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->sizeOfTrArray()I

    move-result v0

    return v0
.end method

.method public getRowHeight(I)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getH()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTableStyle()Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->isSetTblPr()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetTableStyleId()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getTableStyleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getTableStyles()Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->getStyles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->getStyleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    :goto_0
    return-object v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mergeCells(IIII)V
    .locals 9

    const-string v0, " > "

    if-gt p1, p2, :cond_9

    if-gt p3, p4, :cond_8

    sub-int v0, p2, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sub-int v4, p4, p3

    add-int/2addr v4, v1

    if-le v4, v1, :cond_1

    move v2, v1

    :cond_1
    move v5, p1

    :goto_1
    if-gt v5, p2, :cond_7

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_rows:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    move v7, p3

    :goto_2
    if-gt v7, p4, :cond_6

    invoke-virtual {v6}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->getCells()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    if-eqz v3, :cond_3

    if-ne v5, p1, :cond_2

    invoke-virtual {v8, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setRowSpan(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v8, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setVMerge(Z)V

    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    if-ne v7, p3, :cond_4

    invoke-virtual {v8, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setGridSpan(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v8, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setHMerge(Z)V

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot merge, first column > last column : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot merge, first row > last row : "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setColumnWidth(ID)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->getGridColArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object p1

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->setW(J)V

    return-void
.end method

.method public setRowHeight(ID)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTable;->_table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object p1

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->setH(J)V

    return-void
.end method

.method public updateCellAnchor()V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfRows()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v2

    new-array v3, v2, [D

    new-array v4, v1, [D

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    invoke-virtual {v0, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getRowHeight(I)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    invoke-virtual {v0, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getColumnWidth(I)D

    move-result-wide v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v1, :cond_5

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v2, :cond_4

    invoke-virtual {v0, v10, v13}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getGridSpan()I

    move-result v15

    const/4 v5, 0x1

    if-ne v15, v5, :cond_3

    invoke-virtual {v14}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getRowSpan()I

    move-result v15

    if-eq v15, v5, :cond_2

    goto :goto_4

    :cond_2
    new-instance v5, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    aget-wide v21, v3, v13

    const-wide/16 v23, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v24}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v14, v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    invoke-virtual {v7, v14}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/TextShape;)Lorg/apache/poi/sl/draw/DrawTextShape;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/DrawTextShape;->getTextHeight()D

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    aget-wide v13, v4, v10

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    aput-wide v11, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_8

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v10

    const/4 v7, 0x0

    :goto_6
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ge v7, v2, :cond_7

    new-instance v14, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    aget-wide v21, v3, v7

    aget-wide v23, v4, v5

    move-object/from16 v16, v14

    move-wide/from16 v17, v10

    move-wide/from16 v19, v8

    invoke-direct/range {v16 .. v24}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {v0, v5, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15, v14}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    aget-wide v14, v3, v7

    add-double/2addr v14, v12

    add-double/2addr v10, v14

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    aget-wide v10, v4, v5

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_d

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_c

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_b

    :cond_9
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    :goto_9
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getGridSpan()I

    move-result v8

    add-int/2addr v8, v4

    if-ge v7, v8, :cond_a

    invoke-virtual {v0, v3, v7}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->add(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v7, v3, 0x1

    :goto_a
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getRowSpan()I

    move-result v8

    add-int/2addr v8, v3

    if-ge v7, v8, :cond_b

    invoke-virtual {v0, v7, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCell(II)Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->add(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {v5, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method public updateRowColIndexes()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v5, v2, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setRowColIndex(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
