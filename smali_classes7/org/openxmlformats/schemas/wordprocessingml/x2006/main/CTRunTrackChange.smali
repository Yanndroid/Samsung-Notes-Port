.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctruntrackchangea458type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAcc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;
.end method

.method public abstract addNewBar()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;
.end method

.method public abstract addNewBookmarkEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract addNewBookmarkStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;
.end method

.method public abstract addNewBorderBox()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;
.end method

.method public abstract addNewBox()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;
.end method

.method public abstract addNewCommentRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract addNewCommentRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract addNewCustomXml()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;
.end method

.method public abstract addNewCustomXmlDelRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract addNewCustomXmlDelRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract addNewCustomXmlInsRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract addNewCustomXmlInsRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract addNewCustomXmlMoveFromRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract addNewCustomXmlMoveFromRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract addNewCustomXmlMoveToRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract addNewCustomXmlMoveToRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract addNewD()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;
.end method

.method public abstract addNewDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract addNewEqArr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;
.end method

.method public abstract addNewF()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;
.end method

.method public abstract addNewFunc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
.end method

.method public abstract addNewGroupChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;
.end method

.method public abstract addNewIns()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract addNewLimLow()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;
.end method

.method public abstract addNewLimUpp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;
.end method

.method public abstract addNewM()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;
.end method

.method public abstract addNewMoveFrom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract addNewMoveFromRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract addNewMoveFromRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract addNewMoveTo()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract addNewMoveToRangeEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract addNewMoveToRangeStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract addNewNary()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;
.end method

.method public abstract addNewOMath()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract addNewOMathPara()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.end method

.method public abstract addNewPermEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;
.end method

.method public abstract addNewPermStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.end method

.method public abstract addNewPhant()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;
.end method

.method public abstract addNewProofErr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.end method

.method public abstract addNewR2()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;
.end method

.method public abstract addNewRad()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;
.end method

.method public abstract addNewSPre()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;
.end method

.method public abstract addNewSSub()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;
.end method

.method public abstract addNewSSubSup()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;
.end method

.method public abstract addNewSSup()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;
.end method

.method public abstract addNewSdt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
.end method

.method public abstract addNewSmartTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;
.end method

.method public abstract getAccArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;
.end method

.method public abstract getAccArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;
.end method

.method public abstract getAccList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBarArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;
.end method

.method public abstract getBarArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;
.end method

.method public abstract getBarList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookmarkEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getBookmarkEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getBookmarkEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookmarkStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;
.end method

.method public abstract getBookmarkStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;
.end method

.method public abstract getBookmarkStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBorderBoxArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;
.end method

.method public abstract getBorderBoxArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;
.end method

.method public abstract getBorderBoxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoxArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;
.end method

.method public abstract getBoxArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;
.end method

.method public abstract getBoxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommentRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getCommentRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getCommentRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommentRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getCommentRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getCommentRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;
.end method

.method public abstract getCustomXmlArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;
.end method

.method public abstract getCustomXmlDelRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlDelRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlDelRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlDelRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlDelRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlDelRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlInsRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlInsRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlInsRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlInsRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlInsRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlInsRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlMoveFromRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlMoveFromRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlMoveFromRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlMoveFromRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlMoveFromRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlMoveToRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlMoveToRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract getCustomXmlMoveToRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomXmlMoveToRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlMoveToRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract getCustomXmlMoveToRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;
.end method

.method public abstract getDArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;
.end method

.method public abstract getDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDelArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getDelArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getDelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEqArrArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;
.end method

.method public abstract getEqArrArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;
.end method

.method public abstract getEqArrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;
.end method

.method public abstract getFArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;
.end method

.method public abstract getFList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFuncArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
.end method

.method public abstract getFuncArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
.end method

.method public abstract getFuncList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupChrArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;
.end method

.method public abstract getGroupChrArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;
.end method

.method public abstract getGroupChrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getInsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getInsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLimLowArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;
.end method

.method public abstract getLimLowArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;
.end method

.method public abstract getLimLowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLimUppArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;
.end method

.method public abstract getLimUppArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;
.end method

.method public abstract getLimUppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;
.end method

.method public abstract getMArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;
.end method

.method public abstract getMList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveFromArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getMoveFromArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getMoveFromList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getMoveFromRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getMoveFromRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveFromRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract getMoveFromRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract getMoveFromRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveToArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getMoveToArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract getMoveToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveToRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getMoveToRangeEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract getMoveToRangeEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveToRangeStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract getMoveToRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract getMoveToRangeStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNaryArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;
.end method

.method public abstract getNaryArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;
.end method

.method public abstract getNaryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOMathArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract getOMathArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract getOMathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOMathParaArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.end method

.method public abstract getOMathParaArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.end method

.method public abstract getOMathParaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;
.end method

.method public abstract getPermEndArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;
.end method

.method public abstract getPermEndList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermStartArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.end method

.method public abstract getPermStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.end method

.method public abstract getPermStartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhantArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;
.end method

.method public abstract getPhantArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;
.end method

.method public abstract getPhantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProofErrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;
.end method

.method public abstract getProofErrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;
.end method

.method public abstract getProofErrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR2Array(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;
.end method

.method public abstract getR2Array()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;
.end method

.method public abstract getR2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.end method

.method public abstract getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRadArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;
.end method

.method public abstract getRadArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;
.end method

.method public abstract getRadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSPreArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;
.end method

.method public abstract getSPreArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;
.end method

.method public abstract getSPreList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSSubArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;
.end method

.method public abstract getSSubArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;
.end method

.method public abstract getSSubList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSSubSupArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;
.end method

.method public abstract getSSubSupArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;
.end method

.method public abstract getSSubSupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSSupArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;
.end method

.method public abstract getSSupArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;
.end method

.method public abstract getSSupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSdtArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
.end method

.method public abstract getSdtArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
.end method

.method public abstract getSdtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmartTagArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;
.end method

.method public abstract getSmartTagArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;
.end method

.method public abstract getSmartTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAcc(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;
.end method

.method public abstract insertNewBar(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;
.end method

.method public abstract insertNewBookmarkEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract insertNewBookmarkStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;
.end method

.method public abstract insertNewBorderBox(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;
.end method

.method public abstract insertNewBox(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;
.end method

.method public abstract insertNewCommentRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract insertNewCommentRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract insertNewCustomXml(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;
.end method

.method public abstract insertNewCustomXmlDelRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract insertNewCustomXmlDelRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract insertNewCustomXmlInsRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract insertNewCustomXmlInsRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract insertNewCustomXmlMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract insertNewCustomXmlMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract insertNewCustomXmlMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;
.end method

.method public abstract insertNewCustomXmlMoveToRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;
.end method

.method public abstract insertNewD(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;
.end method

.method public abstract insertNewDel(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract insertNewEqArr(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;
.end method

.method public abstract insertNewF(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;
.end method

.method public abstract insertNewFunc(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
.end method

.method public abstract insertNewGroupChr(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;
.end method

.method public abstract insertNewIns(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract insertNewLimLow(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;
.end method

.method public abstract insertNewLimUpp(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;
.end method

.method public abstract insertNewM(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;
.end method

.method public abstract insertNewMoveFrom(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract insertNewMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract insertNewMoveFromRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract insertNewMoveTo(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract insertNewMoveToRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract insertNewMoveToRangeStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;
.end method

.method public abstract insertNewNary(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;
.end method

.method public abstract insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract insertNewOMathPara(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.end method

.method public abstract insertNewPermEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;
.end method

.method public abstract insertNewPermStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.end method

.method public abstract insertNewPhant(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;
.end method

.method public abstract insertNewProofErr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.end method

.method public abstract insertNewR2(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;
.end method

.method public abstract insertNewRad(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;
.end method

.method public abstract insertNewSPre(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;
.end method

.method public abstract insertNewSSub(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;
.end method

.method public abstract insertNewSSubSup(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;
.end method

.method public abstract insertNewSSup(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;
.end method

.method public abstract insertNewSdt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
.end method

.method public abstract insertNewSmartTag(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;
.end method

.method public abstract removeAcc(I)V
.end method

.method public abstract removeBar(I)V
.end method

.method public abstract removeBookmarkEnd(I)V
.end method

.method public abstract removeBookmarkStart(I)V
.end method

.method public abstract removeBorderBox(I)V
.end method

.method public abstract removeBox(I)V
.end method

.method public abstract removeCommentRangeEnd(I)V
.end method

.method public abstract removeCommentRangeStart(I)V
.end method

.method public abstract removeCustomXml(I)V
.end method

.method public abstract removeCustomXmlDelRangeEnd(I)V
.end method

.method public abstract removeCustomXmlDelRangeStart(I)V
.end method

.method public abstract removeCustomXmlInsRangeEnd(I)V
.end method

.method public abstract removeCustomXmlInsRangeStart(I)V
.end method

.method public abstract removeCustomXmlMoveFromRangeEnd(I)V
.end method

.method public abstract removeCustomXmlMoveFromRangeStart(I)V
.end method

.method public abstract removeCustomXmlMoveToRangeEnd(I)V
.end method

.method public abstract removeCustomXmlMoveToRangeStart(I)V
.end method

.method public abstract removeD(I)V
.end method

.method public abstract removeDel(I)V
.end method

.method public abstract removeEqArr(I)V
.end method

.method public abstract removeF(I)V
.end method

.method public abstract removeFunc(I)V
.end method

.method public abstract removeGroupChr(I)V
.end method

.method public abstract removeIns(I)V
.end method

.method public abstract removeLimLow(I)V
.end method

.method public abstract removeLimUpp(I)V
.end method

.method public abstract removeM(I)V
.end method

.method public abstract removeMoveFrom(I)V
.end method

.method public abstract removeMoveFromRangeEnd(I)V
.end method

.method public abstract removeMoveFromRangeStart(I)V
.end method

.method public abstract removeMoveTo(I)V
.end method

.method public abstract removeMoveToRangeEnd(I)V
.end method

.method public abstract removeMoveToRangeStart(I)V
.end method

.method public abstract removeNary(I)V
.end method

.method public abstract removeOMath(I)V
.end method

.method public abstract removeOMathPara(I)V
.end method

.method public abstract removePermEnd(I)V
.end method

.method public abstract removePermStart(I)V
.end method

.method public abstract removePhant(I)V
.end method

.method public abstract removeProofErr(I)V
.end method

.method public abstract removeR(I)V
.end method

.method public abstract removeR2(I)V
.end method

.method public abstract removeRad(I)V
.end method

.method public abstract removeSPre(I)V
.end method

.method public abstract removeSSub(I)V
.end method

.method public abstract removeSSubSup(I)V
.end method

.method public abstract removeSSup(I)V
.end method

.method public abstract removeSdt(I)V
.end method

.method public abstract removeSmartTag(I)V
.end method

.method public abstract setAccArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;)V
.end method

.method public abstract setAccArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;)V
.end method

.method public abstract setBarArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;)V
.end method

.method public abstract setBarArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;)V
.end method

.method public abstract setBookmarkEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setBookmarkEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setBookmarkStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V
.end method

.method public abstract setBookmarkStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V
.end method

.method public abstract setBorderBoxArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;)V
.end method

.method public abstract setBorderBoxArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;)V
.end method

.method public abstract setBoxArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;)V
.end method

.method public abstract setBoxArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;)V
.end method

.method public abstract setCommentRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setCommentRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setCommentRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setCommentRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setCustomXmlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;)V
.end method

.method public abstract setCustomXmlArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;)V
.end method

.method public abstract setCustomXmlDelRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlDelRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlDelRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlDelRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlInsRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlInsRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlInsRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlInsRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlMoveFromRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlMoveFromRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlMoveToRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V
.end method

.method public abstract setCustomXmlMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setCustomXmlMoveToRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V
.end method

.method public abstract setDArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;)V
.end method

.method public abstract setDArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;)V
.end method

.method public abstract setDelArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setDelArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setEqArrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;)V
.end method

.method public abstract setEqArrArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;)V
.end method

.method public abstract setFArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;)V
.end method

.method public abstract setFArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;)V
.end method

.method public abstract setFuncArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V
.end method

.method public abstract setFuncArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V
.end method

.method public abstract setGroupChrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;)V
.end method

.method public abstract setGroupChrArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;)V
.end method

.method public abstract setInsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setInsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setLimLowArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;)V
.end method

.method public abstract setLimLowArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;)V
.end method

.method public abstract setLimUppArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;)V
.end method

.method public abstract setLimUppArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;)V
.end method

.method public abstract setMArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;)V
.end method

.method public abstract setMArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;)V
.end method

.method public abstract setMoveFromArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setMoveFromArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setMoveFromRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V
.end method

.method public abstract setMoveFromRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V
.end method

.method public abstract setMoveToArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setMoveToArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setMoveToRangeEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V
.end method

.method public abstract setMoveToRangeStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V
.end method

.method public abstract setNaryArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;)V
.end method

.method public abstract setNaryArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;)V
.end method

.method public abstract setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathParaArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V
.end method

.method public abstract setOMathParaArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V
.end method

.method public abstract setPermEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V
.end method

.method public abstract setPermEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V
.end method

.method public abstract setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V
.end method

.method public abstract setPermStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V
.end method

.method public abstract setPhantArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;)V
.end method

.method public abstract setPhantArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTPhant;)V
.end method

.method public abstract setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V
.end method

.method public abstract setProofErrArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V
.end method

.method public abstract setR2Array(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;)V
.end method

.method public abstract setR2Array([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
.end method

.method public abstract setRadArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;)V
.end method

.method public abstract setRadArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;)V
.end method

.method public abstract setSPreArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;)V
.end method

.method public abstract setSPreArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;)V
.end method

.method public abstract setSSubArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;)V
.end method

.method public abstract setSSubArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;)V
.end method

.method public abstract setSSubSupArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;)V
.end method

.method public abstract setSSubSupArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;)V
.end method

.method public abstract setSSupArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;)V
.end method

.method public abstract setSSupArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;)V
.end method

.method public abstract setSdtArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;)V
.end method

.method public abstract setSdtArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;)V
.end method

.method public abstract setSmartTagArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;)V
.end method

.method public abstract setSmartTagArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;)V
.end method

.method public abstract sizeOfAccArray()I
.end method

.method public abstract sizeOfBarArray()I
.end method

.method public abstract sizeOfBookmarkEndArray()I
.end method

.method public abstract sizeOfBookmarkStartArray()I
.end method

.method public abstract sizeOfBorderBoxArray()I
.end method

.method public abstract sizeOfBoxArray()I
.end method

.method public abstract sizeOfCommentRangeEndArray()I
.end method

.method public abstract sizeOfCommentRangeStartArray()I
.end method

.method public abstract sizeOfCustomXmlArray()I
.end method

.method public abstract sizeOfCustomXmlDelRangeEndArray()I
.end method

.method public abstract sizeOfCustomXmlDelRangeStartArray()I
.end method

.method public abstract sizeOfCustomXmlInsRangeEndArray()I
.end method

.method public abstract sizeOfCustomXmlInsRangeStartArray()I
.end method

.method public abstract sizeOfCustomXmlMoveFromRangeEndArray()I
.end method

.method public abstract sizeOfCustomXmlMoveFromRangeStartArray()I
.end method

.method public abstract sizeOfCustomXmlMoveToRangeEndArray()I
.end method

.method public abstract sizeOfCustomXmlMoveToRangeStartArray()I
.end method

.method public abstract sizeOfDArray()I
.end method

.method public abstract sizeOfDelArray()I
.end method

.method public abstract sizeOfEqArrArray()I
.end method

.method public abstract sizeOfFArray()I
.end method

.method public abstract sizeOfFuncArray()I
.end method

.method public abstract sizeOfGroupChrArray()I
.end method

.method public abstract sizeOfInsArray()I
.end method

.method public abstract sizeOfLimLowArray()I
.end method

.method public abstract sizeOfLimUppArray()I
.end method

.method public abstract sizeOfMArray()I
.end method

.method public abstract sizeOfMoveFromArray()I
.end method

.method public abstract sizeOfMoveFromRangeEndArray()I
.end method

.method public abstract sizeOfMoveFromRangeStartArray()I
.end method

.method public abstract sizeOfMoveToArray()I
.end method

.method public abstract sizeOfMoveToRangeEndArray()I
.end method

.method public abstract sizeOfMoveToRangeStartArray()I
.end method

.method public abstract sizeOfNaryArray()I
.end method

.method public abstract sizeOfOMathArray()I
.end method

.method public abstract sizeOfOMathParaArray()I
.end method

.method public abstract sizeOfPermEndArray()I
.end method

.method public abstract sizeOfPermStartArray()I
.end method

.method public abstract sizeOfPhantArray()I
.end method

.method public abstract sizeOfProofErrArray()I
.end method

.method public abstract sizeOfR2Array()I
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract sizeOfRadArray()I
.end method

.method public abstract sizeOfSPreArray()I
.end method

.method public abstract sizeOfSSubArray()I
.end method

.method public abstract sizeOfSSubSupArray()I
.end method

.method public abstract sizeOfSSupArray()I
.end method

.method public abstract sizeOfSdtArray()I
.end method

.method public abstract sizeOfSmartTagArray()I
.end method
