.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctsectpr1123type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCols()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;
.end method

.method public abstract addNewDocGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;
.end method

.method public abstract addNewEndnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnProps;
.end method

.method public abstract addNewFooterReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract addNewFootnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;
.end method

.method public abstract addNewFormProt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHeaderReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract addNewLnNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;
.end method

.method public abstract addNewNoEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPaperSrc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPaperSource;
.end method

.method public abstract addNewPgBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;
.end method

.method public abstract addNewPgMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;
.end method

.method public abstract addNewPgNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;
.end method

.method public abstract addNewPgSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;
.end method

.method public abstract addNewPrinterSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewRtlGutter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSectPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPrChange;
.end method

.method public abstract addNewTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectType;
.end method

.method public abstract addNewVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract getBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCols()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;
.end method

.method public abstract getDocGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;
.end method

.method public abstract getEndnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnProps;
.end method

.method public abstract getFooterReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getFooterReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getFooterReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFootnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;
.end method

.method public abstract getFormProt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHeaderReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getHeaderReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getHeaderReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLnNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;
.end method

.method public abstract getNoEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPaperSrc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPaperSource;
.end method

.method public abstract getPgBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;
.end method

.method public abstract getPgMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;
.end method

.method public abstract getPgNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;
.end method

.method public abstract getPgSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;
.end method

.method public abstract getPrinterSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getRsidDel()[B
.end method

.method public abstract getRsidR()[B
.end method

.method public abstract getRsidRPr()[B
.end method

.method public abstract getRsidSect()[B
.end method

.method public abstract getRtlGutter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSectPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPrChange;
.end method

.method public abstract getTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract getTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectType;
.end method

.method public abstract getVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract insertNewFooterReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract insertNewHeaderReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract isSetBidi()Z
.end method

.method public abstract isSetCols()Z
.end method

.method public abstract isSetDocGrid()Z
.end method

.method public abstract isSetEndnotePr()Z
.end method

.method public abstract isSetFootnotePr()Z
.end method

.method public abstract isSetFormProt()Z
.end method

.method public abstract isSetLnNumType()Z
.end method

.method public abstract isSetNoEndnote()Z
.end method

.method public abstract isSetPaperSrc()Z
.end method

.method public abstract isSetPgBorders()Z
.end method

.method public abstract isSetPgMar()Z
.end method

.method public abstract isSetPgNumType()Z
.end method

.method public abstract isSetPgSz()Z
.end method

.method public abstract isSetPrinterSettings()Z
.end method

.method public abstract isSetRsidDel()Z
.end method

.method public abstract isSetRsidR()Z
.end method

.method public abstract isSetRsidRPr()Z
.end method

.method public abstract isSetRsidSect()Z
.end method

.method public abstract isSetRtlGutter()Z
.end method

.method public abstract isSetSectPrChange()Z
.end method

.method public abstract isSetTextDirection()Z
.end method

.method public abstract isSetTitlePg()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetVAlign()Z
.end method

.method public abstract removeFooterReference(I)V
.end method

.method public abstract removeHeaderReference(I)V
.end method

.method public abstract setBidi(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCols(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;)V
.end method

.method public abstract setDocGrid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;)V
.end method

.method public abstract setEndnotePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnProps;)V
.end method

.method public abstract setFooterReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setFooterReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setFootnotePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;)V
.end method

.method public abstract setFormProt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHeaderReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setHeaderReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setLnNumType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;)V
.end method

.method public abstract setNoEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPaperSrc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPaperSource;)V
.end method

.method public abstract setPgBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;)V
.end method

.method public abstract setPgMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;)V
.end method

.method public abstract setPgNumType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;)V
.end method

.method public abstract setPgSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;)V
.end method

.method public abstract setPrinterSettings(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setRsidDel([B)V
.end method

.method public abstract setRsidR([B)V
.end method

.method public abstract setRsidRPr([B)V
.end method

.method public abstract setRsidSect([B)V
.end method

.method public abstract setRtlGutter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSectPrChange(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPrChange;)V
.end method

.method public abstract setTextDirection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;)V
.end method

.method public abstract setTitlePg(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectType;)V
.end method

.method public abstract setVAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;)V
.end method

.method public abstract sizeOfFooterReferenceArray()I
.end method

.method public abstract sizeOfHeaderReferenceArray()I
.end method

.method public abstract unsetBidi()V
.end method

.method public abstract unsetCols()V
.end method

.method public abstract unsetDocGrid()V
.end method

.method public abstract unsetEndnotePr()V
.end method

.method public abstract unsetFootnotePr()V
.end method

.method public abstract unsetFormProt()V
.end method

.method public abstract unsetLnNumType()V
.end method

.method public abstract unsetNoEndnote()V
.end method

.method public abstract unsetPaperSrc()V
.end method

.method public abstract unsetPgBorders()V
.end method

.method public abstract unsetPgMar()V
.end method

.method public abstract unsetPgNumType()V
.end method

.method public abstract unsetPgSz()V
.end method

.method public abstract unsetPrinterSettings()V
.end method

.method public abstract unsetRsidDel()V
.end method

.method public abstract unsetRsidR()V
.end method

.method public abstract unsetRsidRPr()V
.end method

.method public abstract unsetRsidSect()V
.end method

.method public abstract unsetRtlGutter()V
.end method

.method public abstract unsetSectPrChange()V
.end method

.method public abstract unsetTextDirection()V
.end method

.method public abstract unsetTitlePg()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetVAlign()V
.end method

.method public abstract xgetRsidDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidSect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xsetRsidDel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidR(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidSect(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method
