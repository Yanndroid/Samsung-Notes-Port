.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctpprbasebaeftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAdjustRightInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAutoSpaceDE()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewAutoSpaceDN()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract addNewContextualSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDivId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewFramePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;
.end method

.method public abstract addNewInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
.end method

.method public abstract addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract addNewKeepLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewKeepNext()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewKinsoku()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewMirrorIndents()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;
.end method

.method public abstract addNewOutlineLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewOverflowPunct()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
.end method

.method public abstract addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewSnapToGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
.end method

.method public abstract addNewSuppressAutoHyphens()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressLineNumbers()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSuppressOverlap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTabs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;
.end method

.method public abstract addNewTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;
.end method

.method public abstract addNewTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract addNewTextboxTightWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextboxTightWrap;
.end method

.method public abstract addNewTopLinePunct()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewWidowControl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAdjustRightInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAutoSpaceDE()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getAutoSpaceDN()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract getContextualSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDivId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getFramePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;
.end method

.method public abstract getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
.end method

.method public abstract getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;
.end method

.method public abstract getKeepLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getKeepNext()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getKinsoku()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getMirrorIndents()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;
.end method

.method public abstract getOutlineLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getOverflowPunct()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
.end method

.method public abstract getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getSnapToGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
.end method

.method public abstract getSuppressAutoHyphens()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressLineNumbers()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSuppressOverlap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTabs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;
.end method

.method public abstract getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;
.end method

.method public abstract getTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract getTextboxTightWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextboxTightWrap;
.end method

.method public abstract getTopLinePunct()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWidowControl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract isSetAdjustRightInd()Z
.end method

.method public abstract isSetAutoSpaceDE()Z
.end method

.method public abstract isSetAutoSpaceDN()Z
.end method

.method public abstract isSetBidi()Z
.end method

.method public abstract isSetCnfStyle()Z
.end method

.method public abstract isSetContextualSpacing()Z
.end method

.method public abstract isSetDivId()Z
.end method

.method public abstract isSetFramePr()Z
.end method

.method public abstract isSetInd()Z
.end method

.method public abstract isSetJc()Z
.end method

.method public abstract isSetKeepLines()Z
.end method

.method public abstract isSetKeepNext()Z
.end method

.method public abstract isSetKinsoku()Z
.end method

.method public abstract isSetMirrorIndents()Z
.end method

.method public abstract isSetNumPr()Z
.end method

.method public abstract isSetOutlineLvl()Z
.end method

.method public abstract isSetOverflowPunct()Z
.end method

.method public abstract isSetPBdr()Z
.end method

.method public abstract isSetPStyle()Z
.end method

.method public abstract isSetPageBreakBefore()Z
.end method

.method public abstract isSetShd()Z
.end method

.method public abstract isSetSnapToGrid()Z
.end method

.method public abstract isSetSpacing()Z
.end method

.method public abstract isSetSuppressAutoHyphens()Z
.end method

.method public abstract isSetSuppressLineNumbers()Z
.end method

.method public abstract isSetSuppressOverlap()Z
.end method

.method public abstract isSetTabs()Z
.end method

.method public abstract isSetTextAlignment()Z
.end method

.method public abstract isSetTextDirection()Z
.end method

.method public abstract isSetTextboxTightWrap()Z
.end method

.method public abstract isSetTopLinePunct()Z
.end method

.method public abstract isSetWidowControl()Z
.end method

.method public abstract isSetWordWrap()Z
.end method

.method public abstract setAdjustRightInd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAutoSpaceDE(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setAutoSpaceDN(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBidi(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCnfStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;)V
.end method

.method public abstract setContextualSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDivId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setFramePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;)V
.end method

.method public abstract setInd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;)V
.end method

.method public abstract setJc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;)V
.end method

.method public abstract setKeepLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setKeepNext(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setKinsoku(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setMirrorIndents(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNumPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;)V
.end method

.method public abstract setOutlineLvl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setOverflowPunct(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPBdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;)V
.end method

.method public abstract setPStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setPageBreakBefore(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setSnapToGrid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;)V
.end method

.method public abstract setSuppressAutoHyphens(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressLineNumbers(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSuppressOverlap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTabs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;)V
.end method

.method public abstract setTextAlignment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;)V
.end method

.method public abstract setTextDirection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;)V
.end method

.method public abstract setTextboxTightWrap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextboxTightWrap;)V
.end method

.method public abstract setTopLinePunct(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setWidowControl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setWordWrap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract unsetAdjustRightInd()V
.end method

.method public abstract unsetAutoSpaceDE()V
.end method

.method public abstract unsetAutoSpaceDN()V
.end method

.method public abstract unsetBidi()V
.end method

.method public abstract unsetCnfStyle()V
.end method

.method public abstract unsetContextualSpacing()V
.end method

.method public abstract unsetDivId()V
.end method

.method public abstract unsetFramePr()V
.end method

.method public abstract unsetInd()V
.end method

.method public abstract unsetJc()V
.end method

.method public abstract unsetKeepLines()V
.end method

.method public abstract unsetKeepNext()V
.end method

.method public abstract unsetKinsoku()V
.end method

.method public abstract unsetMirrorIndents()V
.end method

.method public abstract unsetNumPr()V
.end method

.method public abstract unsetOutlineLvl()V
.end method

.method public abstract unsetOverflowPunct()V
.end method

.method public abstract unsetPBdr()V
.end method

.method public abstract unsetPStyle()V
.end method

.method public abstract unsetPageBreakBefore()V
.end method

.method public abstract unsetShd()V
.end method

.method public abstract unsetSnapToGrid()V
.end method

.method public abstract unsetSpacing()V
.end method

.method public abstract unsetSuppressAutoHyphens()V
.end method

.method public abstract unsetSuppressLineNumbers()V
.end method

.method public abstract unsetSuppressOverlap()V
.end method

.method public abstract unsetTabs()V
.end method

.method public abstract unsetTextAlignment()V
.end method

.method public abstract unsetTextDirection()V
.end method

.method public abstract unsetTextboxTightWrap()V
.end method

.method public abstract unsetTopLinePunct()V
.end method

.method public abstract unsetWidowControl()V
.end method

.method public abstract unsetWordWrap()V
.end method
