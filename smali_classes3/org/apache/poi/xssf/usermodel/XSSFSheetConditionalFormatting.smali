.class public Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;


# static fields
.field public static final CF_EXT_2009_NS_X14:Ljava/lang/String; = "http://schemas.microsoft.com/office/spreadsheetml/2009/9/main"


# instance fields
.field private final _sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method

.method private checkIndex(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->getNumConditionalFormattings()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified CF index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is outside the allowable range (0.."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addConditionalFormatting(Lorg/apache/poi/ss/usermodel/ConditionalFormatting;)I
    .locals 2

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->getCTConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfConditionalFormattingArray()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    const/4 v1, 0x0

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    aput-object p2, v0, v1

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    const/4 v1, 0x0

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    check-cast p3, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    aput-object p3, v0, p2

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 7

    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_6

    array-length v0, p2

    if-eqz v0, :cond_5

    array-length v0, p2

    const/4 v2, 0x3

    if-gt v0, v2, :cond_4

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v6, p1, v4

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->sizeOfCfRuleArray()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    array-length p1, p2

    :goto_3
    if-ge v1, p1, :cond_3

    aget-object v2, p2, v1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v4

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setPriority(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->addNewCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfConditionalFormattingArray()I

    move-result p1

    sub-int/2addr p1, v3

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of rules must not exceed 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cfRules must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cfRules must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "regions must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createConditionalFormattingColorScaleRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingColorScaleRule()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public createConditionalFormattingColorScaleRule()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createColorScaleFormatting()Lorg/apache/poi/xssf/usermodel/XSSFColorScaleFormatting;

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addFormula(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addFormula(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->CELL_IS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown comparison operator: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->LESS_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->GREATER_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->LESS_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->GREATER_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->NOT_BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    goto :goto_0

    :pswitch_7
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;->BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;

    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->addFormula(Ljava/lang/String;)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;->EXPRESSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V

    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createMultiStateFormatting(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/xssf/usermodel/XSSFIconMultiStateFormatting;

    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->createDataBarFormatting(Lorg/apache/poi/xssf/usermodel/XSSFColor;)Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;

    return-object v0
.end method

.method public bridge synthetic getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;

    move-result-object p1

    return-object p1
.end method

.method public getConditionalFormattingAt(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;)V

    return-object v0
.end method

.method public getNumConditionalFormattings()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfConditionalFormattingArray()I

    move-result v0

    return v0
.end method

.method public removeConditionalFormatting(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeConditionalFormatting(I)V

    return-void
.end method
