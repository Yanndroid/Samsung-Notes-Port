.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctpa1e2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBookmarkEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract addNewBookmarkStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;
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

.method public abstract addNewDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract addNewFldSimple()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
.end method

.method public abstract addNewHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
.end method

.method public abstract addNewIns()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
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

.method public abstract addNewOMath()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract addNewOMathPara()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.end method

.method public abstract addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
.end method

.method public abstract addNewPermEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;
.end method

.method public abstract addNewPermStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.end method

.method public abstract addNewProofErr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.end method

.method public abstract addNewSdt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
.end method

.method public abstract addNewSmartTag()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;
.end method

.method public abstract addNewSubDoc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
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

.method public abstract getFldSimpleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
.end method

.method public abstract getFldSimpleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
.end method

.method public abstract getFldSimpleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHyperlinkArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
.end method

.method public abstract getHyperlinkArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
.end method

.method public abstract getHyperlinkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;",
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

.method public abstract getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
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

.method public abstract getRsidDel()[B
.end method

.method public abstract getRsidP()[B
.end method

.method public abstract getRsidR()[B
.end method

.method public abstract getRsidRDefault()[B
.end method

.method public abstract getRsidRPr()[B
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

.method public abstract getSubDocArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getSubDocArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getSubDocList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBookmarkEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
.end method

.method public abstract insertNewBookmarkStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;
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

.method public abstract insertNewDel(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
.end method

.method public abstract insertNewFldSimple(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
.end method

.method public abstract insertNewHyperlink(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
.end method

.method public abstract insertNewIns(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;
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

.method public abstract insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract insertNewOMathPara(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.end method

.method public abstract insertNewPermEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;
.end method

.method public abstract insertNewPermStart(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;
.end method

.method public abstract insertNewProofErr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
.end method

.method public abstract insertNewSdt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;
.end method

.method public abstract insertNewSmartTag(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;
.end method

.method public abstract insertNewSubDoc(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract isSetRsidDel()Z
.end method

.method public abstract isSetRsidP()Z
.end method

.method public abstract isSetRsidR()Z
.end method

.method public abstract isSetRsidRDefault()Z
.end method

.method public abstract isSetRsidRPr()Z
.end method

.method public abstract removeBookmarkEnd(I)V
.end method

.method public abstract removeBookmarkStart(I)V
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

.method public abstract removeDel(I)V
.end method

.method public abstract removeFldSimple(I)V
.end method

.method public abstract removeHyperlink(I)V
.end method

.method public abstract removeIns(I)V
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

.method public abstract removeOMath(I)V
.end method

.method public abstract removeOMathPara(I)V
.end method

.method public abstract removePermEnd(I)V
.end method

.method public abstract removePermStart(I)V
.end method

.method public abstract removeProofErr(I)V
.end method

.method public abstract removeR(I)V
.end method

.method public abstract removeSdt(I)V
.end method

.method public abstract removeSmartTag(I)V
.end method

.method public abstract removeSubDoc(I)V
.end method

.method public abstract setBookmarkEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setBookmarkEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
.end method

.method public abstract setBookmarkStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V
.end method

.method public abstract setBookmarkStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V
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

.method public abstract setDelArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setDelArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setFldSimpleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;)V
.end method

.method public abstract setFldSimpleArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;)V
.end method

.method public abstract setHyperlinkArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setHyperlinkArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setInsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
.end method

.method public abstract setInsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V
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

.method public abstract setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathParaArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V
.end method

.method public abstract setOMathParaArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;)V
.end method

.method public abstract setPermEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V
.end method

.method public abstract setPermEndArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V
.end method

.method public abstract setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V
.end method

.method public abstract setPermStartArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V
.end method

.method public abstract setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V
.end method

.method public abstract setProofErrArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
.end method

.method public abstract setRsidDel([B)V
.end method

.method public abstract setRsidP([B)V
.end method

.method public abstract setRsidR([B)V
.end method

.method public abstract setRsidRDefault([B)V
.end method

.method public abstract setRsidRPr([B)V
.end method

.method public abstract setSdtArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;)V
.end method

.method public abstract setSdtArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;)V
.end method

.method public abstract setSmartTagArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;)V
.end method

.method public abstract setSmartTagArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;)V
.end method

.method public abstract setSubDocArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setSubDocArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract sizeOfBookmarkEndArray()I
.end method

.method public abstract sizeOfBookmarkStartArray()I
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

.method public abstract sizeOfDelArray()I
.end method

.method public abstract sizeOfFldSimpleArray()I
.end method

.method public abstract sizeOfHyperlinkArray()I
.end method

.method public abstract sizeOfInsArray()I
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

.method public abstract sizeOfOMathArray()I
.end method

.method public abstract sizeOfOMathParaArray()I
.end method

.method public abstract sizeOfPermEndArray()I
.end method

.method public abstract sizeOfPermStartArray()I
.end method

.method public abstract sizeOfProofErrArray()I
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract sizeOfSdtArray()I
.end method

.method public abstract sizeOfSmartTagArray()I
.end method

.method public abstract sizeOfSubDocArray()I
.end method

.method public abstract unsetPPr()V
.end method

.method public abstract unsetRsidDel()V
.end method

.method public abstract unsetRsidP()V
.end method

.method public abstract unsetRsidR()V
.end method

.method public abstract unsetRsidRDefault()V
.end method

.method public abstract unsetRsidRPr()V
.end method

.method public abstract xgetRsidDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidRDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xsetRsidDel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidP(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidR(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidRDefault(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method
