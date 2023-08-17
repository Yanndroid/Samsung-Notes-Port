.class public Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TableCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;,
        Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFTextShape;",
        "Lorg/apache/poi/sl/usermodel/TableCell<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

.field private anchor:Lorg/apache/poi/java/awt/geom/Rectangle2D;

.field private col:I

.field private row:I

.field private final table:Lorg/apache/poi/xslf/usermodel/XSLFTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTable;)V
    .locals 1

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Lorg/apache/poi/java/awt/geom/Rectangle2D;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p0

    return-object p0
.end method

.method private getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 3

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnR()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnT()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_6
    :goto_1
    return-object v1

    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnL()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_9
    :goto_2
    return-object v1

    :cond_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnB()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    :cond_c
    :goto_3
    return-object v1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BorderEdge needs to be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    return-object v0
.end method

.method private getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getCTTable()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->isSetTblPr()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetBandRow()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getBandRow()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetFirstRow()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getFirstRow()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetLastRow()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getLastRow()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetBandCol()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getBandCol()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetFirstCol()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getFirstCol()Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->isSetLastCol()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;->getLastCol()Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    iget p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    if-nez p1, :cond_8

    if-eqz v5, :cond_8

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->firstRow:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfRows()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_9

    if-eqz v6, :cond_9

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->lastRow:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    goto :goto_5

    :cond_9
    iget p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    if-nez p1, :cond_a

    if-eqz v8, :cond_a

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->firstCol:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getNumberOfColumns()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_b

    if-eqz v3, :cond_b

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->lastCol:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    goto :goto_5

    :cond_b
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    add-int/2addr v0, v5

    iget v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    add-int/2addr v3, v8

    if-eqz v1, :cond_c

    and-int/2addr v0, v4

    if-nez v0, :cond_c

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->band1H:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    goto :goto_5

    :cond_c
    if-eqz v7, :cond_d

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_d

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->band1V:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    :cond_d
    :goto_5
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->getTableStyle()Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    if-nez p1, :cond_f

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    :cond_f
    return-object p1
.end method

.method public static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->addNewTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnL()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewLnB()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    return-object v0
.end method

.method private setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetAlgn()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;)V

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap;->FLAT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetRound()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewRound()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    :cond_7
    return-object p1
.end method


# virtual methods
.method public getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Lorg/apache/poi/java/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->table:Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->updateCellAnchor()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Lorg/apache/poi/java/awt/geom/Rectangle2D;

    return-object v0
.end method

.method public getBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/java/awt/Color;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Ljava/lang/Double;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Ljava/lang/Double;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getW()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->addNewTcPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->_tcPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    return-object p1
.end method

.method public getFillColor()Lorg/apache/poi/java/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-static {v3, v4, v5, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    invoke-direct {p0, v4}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->isSetTcStyle()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    invoke-direct {p0, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->isSetTcStyle()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->getTcStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->isSetFill()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->isSetFillRef()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleCellStyle;->getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-static {v3, v4, v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    return-object v4
.end method

.method public getGridSpan()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetGridSpan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getGridSpan()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getRowSpan()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetRowSpan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getRowSpan()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    return-object v0
.end method

.method public getTextBody(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->initTextBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    :cond_0
    return-object v1
.end method

.method public getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetVert()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->HORZ:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->HORIZONTAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->STACKED:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL_270:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->VERTICAL:Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetAnchor()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v1, v0

    :cond_0
    return-object v1
.end method

.method public getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v0

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-object v1
.end method

.method public isMerged()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetHMerge()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getHMerge()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->isSetVMerge()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->getVMerge()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;

    invoke-direct {v0, p0, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V

    return-object v0
.end method

.method public bridge synthetic newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->newTextParagraph(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextParagraph;

    move-result-object p1

    return-object p1
.end method

.method public removeBorder(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnR()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnT()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnT()V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnL()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnL()V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetLnB()Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetLnB()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Lorg/apache/poi/java/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/geom/Rectangle2D;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->anchor:Lorg/apache/poi/java/awt/geom/Rectangle2D;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->setRect(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    :goto_0
    return-void
.end method

.method public setBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    iget p2, p2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    invoke-static {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LineCap need to be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/java/awt/Color;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Lorg/apache/poi/java/awt/Color;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Colors need to be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    iget p2, p2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->ooxmlId:I

    invoke-static {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LineCompound need to be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDefaults(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object p1

    iget p2, p2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    invoke-static {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LineDash need to be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderStyle(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle;)V
    .locals 2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderCap(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderCompound(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderDash(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    :cond_2
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getLineWidth()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StrokeStyle needs to be specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderWidth(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;D)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCTLine(Lorg/apache/poi/sl/usermodel/TableCell$BorderEdge;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-static {p2, p3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    return-void
.end method

.method public setBottomInset(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarB(I)V

    return-void
.end method

.method public setFillColor(Lorg/apache/poi/java/awt/Color;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetSolidFill()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetSolidFill()V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setGridSpan(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setGridSpan(I)V

    return-void
.end method

.method public setHMerge(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setHMerge(Z)V

    return-void
.end method

.method public setLeftInset(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarL(I)V

    return-void
.end method

.method public setRightInset(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarR(I)V

    return-void
.end method

.method public setRowColIndex(II)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->row:I

    iput p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->col:I

    return-void
.end method

.method public setRowSpan(I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setRowSpan(I)V

    return-void
.end method

.method public setTextDirection(Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetVert()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetVert()V

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->HORZ:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->WORD_ART_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->VERT_270:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setTopInset(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setMarT(I)V

    return-void
.end method

.method public setVMerge(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;->setVMerge(Z)V

    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/sl/usermodel/VerticalAlignment;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->getCellProperties(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->isSetAnchor()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->unsetAnchor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method
