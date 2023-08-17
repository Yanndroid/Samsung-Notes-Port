.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctr8120type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnnotationRef()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;
.end method

.method public abstract addNewCommentReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract addNewContinuationSeparator()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewCr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewDayLong()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewDayShort()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewDelInstrText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract addNewDelText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract addNewEndnoteRef()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewEndnoteReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
.end method

.method public abstract addNewFootnoteRef()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewFootnoteReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract addNewInstrText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract addNewLastRenderedPageBreak()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewMonthLong()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewMonthShort()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewNoBreakHyphen()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewObject()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;
.end method

.method public abstract addNewPgNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
.end method

.method public abstract addNewPtab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;
.end method

.method public abstract addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract addNewRuby()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;
.end method

.method public abstract addNewSeparator()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSoftHyphen()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewSym()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;
.end method

.method public abstract addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewYearLong()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract addNewYearShort()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getAnnotationRefArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getAnnotationRefArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getAnnotationRefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;
.end method

.method public abstract getBrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;
.end method

.method public abstract getBrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommentReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCommentReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCommentReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContinuationSeparatorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getContinuationSeparatorArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getContinuationSeparatorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getCrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getCrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDayLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getDayLongArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getDayLongList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDayShortArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getDayShortArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getDayShortList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDelInstrTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getDelInstrTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getDelInstrTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDelTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getDelTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getDelTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDrawingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract getDrawingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndnoteRefArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getEndnoteRefArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getEndnoteRefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndnoteReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract getEndnoteReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract getEndnoteReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFldCharArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
.end method

.method public abstract getFldCharArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
.end method

.method public abstract getFldCharList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFootnoteRefArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getFootnoteRefArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getFootnoteRefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFootnoteReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract getFootnoteReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract getFootnoteReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstrTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getInstrTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getInstrTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastRenderedPageBreakArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getLastRenderedPageBreakArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getLastRenderedPageBreakList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonthLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getMonthLongArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getMonthLongList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonthShortArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getMonthShortArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getMonthShortList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoBreakHyphenArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getNoBreakHyphenArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getNoBreakHyphenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObjectArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;
.end method

.method public abstract getObjectArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;
.end method

.method public abstract getObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPgNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getPgNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getPgNumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPictArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
.end method

.method public abstract getPictArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
.end method

.method public abstract getPictList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPtabArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;
.end method

.method public abstract getPtabArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;
.end method

.method public abstract getPtabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.end method

.method public abstract getRsidDel()[B
.end method

.method public abstract getRsidR()[B
.end method

.method public abstract getRsidRPr()[B
.end method

.method public abstract getRubyArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;
.end method

.method public abstract getRubyArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;
.end method

.method public abstract getRubyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeparatorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getSeparatorArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getSeparatorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSoftHyphenArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getSoftHyphenArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getSoftHyphenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSymArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;
.end method

.method public abstract getSymArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;
.end method

.method public abstract getSymList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getTArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract getTList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getTabArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getYearLongArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getYearLongArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getYearLongList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getYearShortArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getYearShortArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract getYearShortList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAnnotationRef(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewBr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;
.end method

.method public abstract insertNewCommentReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract insertNewContinuationSeparator(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewCr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewDayLong(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewDayShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewDelInstrText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract insertNewDelText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract insertNewDrawing(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract insertNewEndnoteRef(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewEndnoteReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract insertNewFldChar(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
.end method

.method public abstract insertNewFootnoteRef(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewFootnoteReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
.end method

.method public abstract insertNewInstrText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract insertNewLastRenderedPageBreak(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewMonthLong(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewMonthShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewNoBreakHyphen(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewObject(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;
.end method

.method public abstract insertNewPgNum(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewPict(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
.end method

.method public abstract insertNewPtab(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;
.end method

.method public abstract insertNewRuby(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;
.end method

.method public abstract insertNewSeparator(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewSoftHyphen(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewSym(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;
.end method

.method public abstract insertNewT(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
.end method

.method public abstract insertNewTab(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewYearLong(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract insertNewYearShort(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;
.end method

.method public abstract isSetRPr()Z
.end method

.method public abstract isSetRsidDel()Z
.end method

.method public abstract isSetRsidR()Z
.end method

.method public abstract isSetRsidRPr()Z
.end method

.method public abstract removeAnnotationRef(I)V
.end method

.method public abstract removeBr(I)V
.end method

.method public abstract removeCommentReference(I)V
.end method

.method public abstract removeContinuationSeparator(I)V
.end method

.method public abstract removeCr(I)V
.end method

.method public abstract removeDayLong(I)V
.end method

.method public abstract removeDayShort(I)V
.end method

.method public abstract removeDelInstrText(I)V
.end method

.method public abstract removeDelText(I)V
.end method

.method public abstract removeDrawing(I)V
.end method

.method public abstract removeEndnoteRef(I)V
.end method

.method public abstract removeEndnoteReference(I)V
.end method

.method public abstract removeFldChar(I)V
.end method

.method public abstract removeFootnoteRef(I)V
.end method

.method public abstract removeFootnoteReference(I)V
.end method

.method public abstract removeInstrText(I)V
.end method

.method public abstract removeLastRenderedPageBreak(I)V
.end method

.method public abstract removeMonthLong(I)V
.end method

.method public abstract removeMonthShort(I)V
.end method

.method public abstract removeNoBreakHyphen(I)V
.end method

.method public abstract removeObject(I)V
.end method

.method public abstract removePgNum(I)V
.end method

.method public abstract removePict(I)V
.end method

.method public abstract removePtab(I)V
.end method

.method public abstract removeRuby(I)V
.end method

.method public abstract removeSeparator(I)V
.end method

.method public abstract removeSoftHyphen(I)V
.end method

.method public abstract removeSym(I)V
.end method

.method public abstract removeT(I)V
.end method

.method public abstract removeTab(I)V
.end method

.method public abstract removeYearLong(I)V
.end method

.method public abstract removeYearShort(I)V
.end method

.method public abstract setAnnotationRefArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setAnnotationRefArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setBrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;)V
.end method

.method public abstract setBrArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;)V
.end method

.method public abstract setCommentReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCommentReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setContinuationSeparatorArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setContinuationSeparatorArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setCrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setCrArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setDayLongArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setDayLongArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setDayShortArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setDayShortArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setDelInstrTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setDelInstrTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setDelTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setDelTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setDrawingArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)V
.end method

.method public abstract setDrawingArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)V
.end method

.method public abstract setEndnoteRefArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setEndnoteRefArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setEndnoteReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;)V
.end method

.method public abstract setEndnoteReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;)V
.end method

.method public abstract setFldCharArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;)V
.end method

.method public abstract setFldCharArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;)V
.end method

.method public abstract setFootnoteRefArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setFootnoteRefArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setFootnoteReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;)V
.end method

.method public abstract setFootnoteReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;)V
.end method

.method public abstract setInstrTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setInstrTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setLastRenderedPageBreakArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setLastRenderedPageBreakArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setMonthLongArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setMonthLongArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setMonthShortArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setMonthShortArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setNoBreakHyphenArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setNoBreakHyphenArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setObjectArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;)V
.end method

.method public abstract setObjectArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;)V
.end method

.method public abstract setPgNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setPgNumArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setPictArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;)V
.end method

.method public abstract setPictArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;)V
.end method

.method public abstract setPtabArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;)V
.end method

.method public abstract setPtabArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;)V
.end method

.method public abstract setRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V
.end method

.method public abstract setRsidDel([B)V
.end method

.method public abstract setRsidR([B)V
.end method

.method public abstract setRsidRPr([B)V
.end method

.method public abstract setRubyArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;)V
.end method

.method public abstract setRubyArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;)V
.end method

.method public abstract setSeparatorArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSeparatorArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSoftHyphenArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSoftHyphenArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setSymArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;)V
.end method

.method public abstract setSymArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;)V
.end method

.method public abstract setTArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setTArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V
.end method

.method public abstract setTabArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setTabArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setYearLongArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setYearLongArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setYearShortArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract setYearShortArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V
.end method

.method public abstract sizeOfAnnotationRefArray()I
.end method

.method public abstract sizeOfBrArray()I
.end method

.method public abstract sizeOfCommentReferenceArray()I
.end method

.method public abstract sizeOfContinuationSeparatorArray()I
.end method

.method public abstract sizeOfCrArray()I
.end method

.method public abstract sizeOfDayLongArray()I
.end method

.method public abstract sizeOfDayShortArray()I
.end method

.method public abstract sizeOfDelInstrTextArray()I
.end method

.method public abstract sizeOfDelTextArray()I
.end method

.method public abstract sizeOfDrawingArray()I
.end method

.method public abstract sizeOfEndnoteRefArray()I
.end method

.method public abstract sizeOfEndnoteReferenceArray()I
.end method

.method public abstract sizeOfFldCharArray()I
.end method

.method public abstract sizeOfFootnoteRefArray()I
.end method

.method public abstract sizeOfFootnoteReferenceArray()I
.end method

.method public abstract sizeOfInstrTextArray()I
.end method

.method public abstract sizeOfLastRenderedPageBreakArray()I
.end method

.method public abstract sizeOfMonthLongArray()I
.end method

.method public abstract sizeOfMonthShortArray()I
.end method

.method public abstract sizeOfNoBreakHyphenArray()I
.end method

.method public abstract sizeOfObjectArray()I
.end method

.method public abstract sizeOfPgNumArray()I
.end method

.method public abstract sizeOfPictArray()I
.end method

.method public abstract sizeOfPtabArray()I
.end method

.method public abstract sizeOfRubyArray()I
.end method

.method public abstract sizeOfSeparatorArray()I
.end method

.method public abstract sizeOfSoftHyphenArray()I
.end method

.method public abstract sizeOfSymArray()I
.end method

.method public abstract sizeOfTArray()I
.end method

.method public abstract sizeOfTabArray()I
.end method

.method public abstract sizeOfYearLongArray()I
.end method

.method public abstract sizeOfYearShortArray()I
.end method

.method public abstract unsetRPr()V
.end method

.method public abstract unsetRsidDel()V
.end method

.method public abstract unsetRsidR()V
.end method

.method public abstract unsetRsidRPr()V
.end method

.method public abstract xgetRsidDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xsetRsidDel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidR(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method
