.class public Lorg/apache/poi/xslf/usermodel/XSLFTableRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
        ">;"
    }
.end annotation


# instance fields
.field private final _cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

.field private final _table:Lorg/apache/poi/xslf/usermodel/XSLFTable;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getTcArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-direct {v4, v2, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCell()Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->addNewTc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->sizeOfTcArray()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;->addNewGridCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;

    move-result-object v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCol;->setW(J)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateRowColIndexes()V

    return-object v1
.end method

.method public getCells()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getH()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableCell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mergeCells(II)V
    .locals 3

    if-ge p1, p2, :cond_1

    sub-int v0, p2, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setGridSpan(I)V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_cells:Ljava/util/List;

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {p2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setHMerge(Z)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot merge, first column >= last column : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeight(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->_row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    int-to-long p1, p1

    invoke-interface {v0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->setH(J)V

    return-void
.end method
