.class final enum Lorg/apache/poi/ss/usermodel/TableStyleType$4;
.super Lorg/apache/poi/ss/usermodel/TableStyleType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/TableStyleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/TableStyleType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/usermodel/TableStyleType$1;)V

    return-void
.end method


# virtual methods
.method public getRange(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellRangeAddressBase;
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyleInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->isShowRowStripes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/ss/usermodel/TableStyleType;->firstRowStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyleInfo;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object v0

    sget-object v3, Lorg/apache/poi/ss/usermodel/TableStyleType;->secondRowStripe:Lorg/apache/poi/ss/usermodel/TableStyleType;

    invoke-interface {v0, v3}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;->getStripeSize()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getHeaderRowCount()I

    move-result v4

    add-int/2addr v0, v4

    add-int v4, v0, v1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result p2

    :goto_2
    if-le v0, p2, :cond_3

    return-object v2

    :cond_3
    if-lt p2, v0, :cond_4

    add-int/lit8 v5, v4, -0x1

    if-gt p2, v5, :cond_4

    new-instance p2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result p1

    invoke-direct {p2, v0, v5, v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p2

    :cond_4
    add-int v0, v4, v3

    add-int v4, v0, v1

    goto :goto_2
.end method
