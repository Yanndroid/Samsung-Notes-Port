.class public Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyleInfo;


# instance fields
.field private columnStripes:Z

.field private firstColumn:Z

.field private lastColumn:Z

.field private rowStripes:Z

.field private style:Lorg/apache/poi/ss/usermodel/TableStyle;

.field private final styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

.field private final stylesTable:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowColumnStripes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->columnStripes:Z

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowRowStripes()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->rowStripes:Z

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowFirstColumn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->firstColumn:Z

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getShowLastColumn()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->lastColumn:Z

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    return-object v0
.end method

.method public isShowColumnStripes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->columnStripes:Z

    return v0
.end method

.method public isShowFirstColumn()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->firstColumn:Z

    return v0
.end method

.method public isShowLastColumn()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->lastColumn:Z

    return v0
.end method

.method public isShowRowStripes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->rowStripes:Z

    return v0
.end method

.method public setFirstColumn(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->firstColumn:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowFirstColumn(Z)V

    return-void
.end method

.method public setLastColumn(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->lastColumn:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowLastColumn(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->stylesTable:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    return-void
.end method

.method public setShowColumnStripes(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->columnStripes:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowColumnStripes(Z)V

    return-void
.end method

.method public setShowRowStripes(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->rowStripes:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableStyleInfo;->styleInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->setShowRowStripes(Z)V

    return-void
.end method
