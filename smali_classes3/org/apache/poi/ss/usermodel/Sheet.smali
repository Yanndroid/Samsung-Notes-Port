.class public interface abstract Lorg/apache/poi/ss/usermodel/Sheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ss/usermodel/Row;",
        ">;"
    }
.end annotation


# static fields
.field public static final BottomMargin:S = 0x3s

.field public static final FooterMargin:S = 0x5s

.field public static final HeaderMargin:S = 0x4s

.field public static final LeftMargin:S = 0x0s

.field public static final PANE_LOWER_LEFT:B = 0x2t

.field public static final PANE_LOWER_RIGHT:B = 0x0t

.field public static final PANE_UPPER_LEFT:B = 0x3t

.field public static final PANE_UPPER_RIGHT:B = 0x1t

.field public static final RightMargin:S = 0x1s

.field public static final TopMargin:S = 0x2s


# virtual methods
.method public abstract addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
.end method

.method public abstract addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
.end method

.method public abstract addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
.end method

.method public abstract autoSizeColumn(I)V
.end method

.method public abstract autoSizeColumn(IZ)V
.end method

.method public abstract createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/Drawing<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract createFreezePane(II)V
.end method

.method public abstract createFreezePane(IIII)V
.end method

.method public abstract createRow(I)Lorg/apache/poi/ss/usermodel/Row;
.end method

.method public abstract createSplitPane(IIIII)V
.end method

.method public abstract getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
.end method

.method public abstract getAutobreaks()Z
.end method

.method public abstract getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
.end method

.method public abstract getCellComments()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "+",
            "Lorg/apache/poi/ss/usermodel/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColumnBreaks()[I
.end method

.method public abstract getColumnOutlineLevel(I)I
.end method

.method public abstract getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
.end method

.method public abstract getColumnWidth(I)I
.end method

.method public abstract getColumnWidthInPixels(I)F
.end method

.method public abstract getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
.end method

.method public abstract getDataValidations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/DataValidation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultColumnWidth()I
.end method

.method public abstract getDefaultRowHeight()S
.end method

.method public abstract getDefaultRowHeightInPoints()F
.end method

.method public abstract getDisplayGuts()Z
.end method

.method public abstract getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/Drawing<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getFirstRowNum()I
.end method

.method public abstract getFitToPage()Z
.end method

.method public abstract getFooter()Lorg/apache/poi/ss/usermodel/Footer;
.end method

.method public abstract getForceFormulaRecalculation()Z
.end method

.method public abstract getHeader()Lorg/apache/poi/ss/usermodel/Header;
.end method

.method public abstract getHorizontallyCenter()Z
.end method

.method public abstract getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
.end method

.method public abstract getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
.end method

.method public abstract getHyperlinkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Hyperlink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastRowNum()I
.end method

.method public abstract getLeftCol()S
.end method

.method public abstract getMargin(S)D
.end method

.method public abstract getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
.end method

.method public abstract getMergedRegions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumMergedRegions()I
.end method

.method public abstract getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
.end method

.method public abstract getPhysicalNumberOfRows()I
.end method

.method public abstract getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
.end method

.method public abstract getProtect()Z
.end method

.method public abstract getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
.end method

.method public abstract getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
.end method

.method public abstract getRow(I)Lorg/apache/poi/ss/usermodel/Row;
.end method

.method public abstract getRowBreaks()[I
.end method

.method public abstract getRowSumsBelow()Z
.end method

.method public abstract getRowSumsRight()Z
.end method

.method public abstract getScenarioProtect()Z
.end method

.method public abstract getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
.end method

.method public abstract getSheetName()Ljava/lang/String;
.end method

.method public abstract getTopRow()S
.end method

.method public abstract getVerticallyCenter()Z
.end method

.method public abstract getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
.end method

.method public abstract groupColumn(II)V
.end method

.method public abstract groupRow(II)V
.end method

.method public abstract isColumnBroken(I)Z
.end method

.method public abstract isColumnHidden(I)Z
.end method

.method public abstract isDisplayFormulas()Z
.end method

.method public abstract isDisplayGridlines()Z
.end method

.method public abstract isDisplayRowColHeadings()Z
.end method

.method public abstract isDisplayZeros()Z
.end method

.method public abstract isPrintGridlines()Z
.end method

.method public abstract isPrintRowAndColumnHeadings()Z
.end method

.method public abstract isRightToLeft()Z
.end method

.method public abstract isRowBroken(I)Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract protectSheet(Ljava/lang/String;)V
.end method

.method public abstract removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeColumnBreak(I)V
.end method

.method public abstract removeMergedRegion(I)V
.end method

.method public abstract removeMergedRegions(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
.end method

.method public abstract removeRowBreak(I)V
.end method

.method public abstract rowIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
.end method

.method public abstract setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
.end method

.method public abstract setAutobreaks(Z)V
.end method

.method public abstract setColumnBreak(I)V
.end method

.method public abstract setColumnGroupCollapsed(IZ)V
.end method

.method public abstract setColumnHidden(IZ)V
.end method

.method public abstract setColumnWidth(II)V
.end method

.method public abstract setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
.end method

.method public abstract setDefaultColumnWidth(I)V
.end method

.method public abstract setDefaultRowHeight(S)V
.end method

.method public abstract setDefaultRowHeightInPoints(F)V
.end method

.method public abstract setDisplayFormulas(Z)V
.end method

.method public abstract setDisplayGridlines(Z)V
.end method

.method public abstract setDisplayGuts(Z)V
.end method

.method public abstract setDisplayRowColHeadings(Z)V
.end method

.method public abstract setDisplayZeros(Z)V
.end method

.method public abstract setFitToPage(Z)V
.end method

.method public abstract setForceFormulaRecalculation(Z)V
.end method

.method public abstract setHorizontallyCenter(Z)V
.end method

.method public abstract setMargin(SD)V
.end method

.method public abstract setPrintGridlines(Z)V
.end method

.method public abstract setPrintRowAndColumnHeadings(Z)V
.end method

.method public abstract setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
.end method

.method public abstract setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
.end method

.method public abstract setRightToLeft(Z)V
.end method

.method public abstract setRowBreak(I)V
.end method

.method public abstract setRowGroupCollapsed(IZ)V
.end method

.method public abstract setRowSumsBelow(Z)V
.end method

.method public abstract setRowSumsRight(Z)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setVerticallyCenter(Z)V
.end method

.method public abstract setZoom(I)V
.end method

.method public abstract shiftRows(III)V
.end method

.method public abstract shiftRows(IIIZZ)V
.end method

.method public abstract showInPane(II)V
.end method

.method public abstract ungroupColumn(II)V
.end method

.method public abstract ungroupRow(II)V
.end method

.method public abstract validateMergedRegions()V
.end method
