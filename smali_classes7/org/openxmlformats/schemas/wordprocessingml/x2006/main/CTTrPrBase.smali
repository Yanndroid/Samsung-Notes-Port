.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttrprbase5d77type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCantSplit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract addNewDivId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewGridAfter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewGridBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewHidden()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract addNewTblCellSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTblHeader()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTrHeight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;
.end method

.method public abstract addNewWAfter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewWBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getCantSplitArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCantSplitArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCantSplitList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCnfStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract getCnfStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract getCnfStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDivIdArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getDivIdArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getDivIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGridAfterArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getGridAfterArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getGridAfterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGridBeforeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getGridBeforeArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getGridBeforeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHiddenArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHiddenArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHiddenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJcArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract getJcArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract getJcList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTblCellSpacingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTblCellSpacingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTblCellSpacingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTblHeaderArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTblHeaderArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTblHeaderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;
.end method

.method public abstract getTrHeightArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;
.end method

.method public abstract getTrHeightList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWAfterArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getWAfterArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getWAfterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWBeforeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getWBeforeArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getWBeforeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCantSplit(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewCnfStyle(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract insertNewDivId(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract insertNewGridAfter(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract insertNewGridBefore(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract insertNewHidden(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewJc(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract insertNewTblCellSpacing(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract insertNewTblHeader(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewTrHeight(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;
.end method

.method public abstract insertNewWAfter(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract insertNewWBefore(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract removeCantSplit(I)V
.end method

.method public abstract removeCnfStyle(I)V
.end method

.method public abstract removeDivId(I)V
.end method

.method public abstract removeGridAfter(I)V
.end method

.method public abstract removeGridBefore(I)V
.end method

.method public abstract removeHidden(I)V
.end method

.method public abstract removeJc(I)V
.end method

.method public abstract removeTblCellSpacing(I)V
.end method

.method public abstract removeTblHeader(I)V
.end method

.method public abstract removeTrHeight(I)V
.end method

.method public abstract removeWAfter(I)V
.end method

.method public abstract removeWBefore(I)V
.end method

.method public abstract setCantSplitArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCantSplitArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCnfStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;)V
.end method

.method public abstract setCnfStyleArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;)V
.end method

.method public abstract setDivIdArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setDivIdArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setGridAfterArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setGridAfterArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setGridBeforeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setGridBeforeArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setHiddenArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHiddenArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setJcArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;)V
.end method

.method public abstract setJcArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;)V
.end method

.method public abstract setTblCellSpacingArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTblCellSpacingArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTblHeaderArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTblHeaderArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTrHeightArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;)V
.end method

.method public abstract setTrHeightArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;)V
.end method

.method public abstract setWAfterArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setWAfterArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setWBeforeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setWBeforeArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract sizeOfCantSplitArray()I
.end method

.method public abstract sizeOfCnfStyleArray()I
.end method

.method public abstract sizeOfDivIdArray()I
.end method

.method public abstract sizeOfGridAfterArray()I
.end method

.method public abstract sizeOfGridBeforeArray()I
.end method

.method public abstract sizeOfHiddenArray()I
.end method

.method public abstract sizeOfJcArray()I
.end method

.method public abstract sizeOfTblCellSpacingArray()I
.end method

.method public abstract sizeOfTblHeaderArray()I
.end method

.method public abstract sizeOfTrHeightArray()I
.end method

.method public abstract sizeOfWAfterArray()I
.end method

.method public abstract sizeOfWBeforeArray()I
.end method
