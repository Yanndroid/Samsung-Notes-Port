.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextcharacterproperties76c0type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
.end method

.method public abstract addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract addNewHighlight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract addNewHlinkMouseOver()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract addNewSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewUFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineFillGroupWrapper;
.end method

.method public abstract addNewUFillTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineFillFollowText;
.end method

.method public abstract addNewULn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewULnTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineLineFollowText;
.end method

.method public abstract getAltLang()Ljava/lang/String;
.end method

.method public abstract getB()Z
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getBmk()Ljava/lang/String;
.end method

.method public abstract getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;
.end method

.method public abstract getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getDirty()Z
.end method

.method public abstract getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
.end method

.method public abstract getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.end method

.method public abstract getErr()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getHighlight()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getHlinkMouseOver()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getI()Z
.end method

.method public abstract getKern()I
.end method

.method public abstract getKumimoji()Z
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getNoProof()Z
.end method

.method public abstract getNormalizeH()Z
.end method

.method public abstract getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getSmtClean()Z
.end method

.method public abstract getSmtId()J
.end method

.method public abstract getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getSpc()I
.end method

.method public abstract getStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;
.end method

.method public abstract getSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getSz()I
.end method

.method public abstract getU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;
.end method

.method public abstract getUFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineFillGroupWrapper;
.end method

.method public abstract getUFillTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineFillFollowText;
.end method

.method public abstract getULn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getULnTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineLineFollowText;
.end method

.method public abstract isSetAltLang()Z
.end method

.method public abstract isSetB()Z
.end method

.method public abstract isSetBaseline()Z
.end method

.method public abstract isSetBlipFill()Z
.end method

.method public abstract isSetBmk()Z
.end method

.method public abstract isSetCap()Z
.end method

.method public abstract isSetCs()Z
.end method

.method public abstract isSetDirty()Z
.end method

.method public abstract isSetEa()Z
.end method

.method public abstract isSetEffectDag()Z
.end method

.method public abstract isSetEffectLst()Z
.end method

.method public abstract isSetErr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGradFill()Z
.end method

.method public abstract isSetGrpFill()Z
.end method

.method public abstract isSetHighlight()Z
.end method

.method public abstract isSetHlinkClick()Z
.end method

.method public abstract isSetHlinkMouseOver()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract isSetKern()Z
.end method

.method public abstract isSetKumimoji()Z
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract isSetLatin()Z
.end method

.method public abstract isSetLn()Z
.end method

.method public abstract isSetNoFill()Z
.end method

.method public abstract isSetNoProof()Z
.end method

.method public abstract isSetNormalizeH()Z
.end method

.method public abstract isSetPattFill()Z
.end method

.method public abstract isSetSmtClean()Z
.end method

.method public abstract isSetSmtId()Z
.end method

.method public abstract isSetSolidFill()Z
.end method

.method public abstract isSetSpc()Z
.end method

.method public abstract isSetStrike()Z
.end method

.method public abstract isSetSym()Z
.end method

.method public abstract isSetSz()Z
.end method

.method public abstract isSetU()Z
.end method

.method public abstract isSetUFill()Z
.end method

.method public abstract isSetUFillTx()Z
.end method

.method public abstract isSetULn()Z
.end method

.method public abstract isSetULnTx()Z
.end method

.method public abstract setAltLang(Ljava/lang/String;)V
.end method

.method public abstract setB(Z)V
.end method

.method public abstract setBaseline(I)V
.end method

.method public abstract setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setBmk(Ljava/lang/String;)V
.end method

.method public abstract setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)V
.end method

.method public abstract setCs(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setDirty(Z)V
.end method

.method public abstract setEa(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V
.end method

.method public abstract setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V
.end method

.method public abstract setErr(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setHighlight(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setHlinkClick(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setHlinkMouseOver(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setI(Z)V
.end method

.method public abstract setKern(I)V
.end method

.method public abstract setKumimoji(Z)V
.end method

.method public abstract setLang(Ljava/lang/String;)V
.end method

.method public abstract setLatin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setLn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setNoProof(Z)V
.end method

.method public abstract setNormalizeH(Z)V
.end method

.method public abstract setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setSmtClean(Z)V
.end method

.method public abstract setSmtId(J)V
.end method

.method public abstract setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setSpc(I)V
.end method

.method public abstract setStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V
.end method

.method public abstract setSym(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setSz(I)V
.end method

.method public abstract setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V
.end method

.method public abstract setUFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineFillGroupWrapper;)V
.end method

.method public abstract setUFillTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineFillFollowText;)V
.end method

.method public abstract setULn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract setULnTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextUnderlineLineFollowText;)V
.end method

.method public abstract unsetAltLang()V
.end method

.method public abstract unsetB()V
.end method

.method public abstract unsetBaseline()V
.end method

.method public abstract unsetBlipFill()V
.end method

.method public abstract unsetBmk()V
.end method

.method public abstract unsetCap()V
.end method

.method public abstract unsetCs()V
.end method

.method public abstract unsetDirty()V
.end method

.method public abstract unsetEa()V
.end method

.method public abstract unsetEffectDag()V
.end method

.method public abstract unsetEffectLst()V
.end method

.method public abstract unsetErr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGradFill()V
.end method

.method public abstract unsetGrpFill()V
.end method

.method public abstract unsetHighlight()V
.end method

.method public abstract unsetHlinkClick()V
.end method

.method public abstract unsetHlinkMouseOver()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract unsetKern()V
.end method

.method public abstract unsetKumimoji()V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract unsetLatin()V
.end method

.method public abstract unsetLn()V
.end method

.method public abstract unsetNoFill()V
.end method

.method public abstract unsetNoProof()V
.end method

.method public abstract unsetNormalizeH()V
.end method

.method public abstract unsetPattFill()V
.end method

.method public abstract unsetSmtClean()V
.end method

.method public abstract unsetSmtId()V
.end method

.method public abstract unsetSolidFill()V
.end method

.method public abstract unsetSpc()V
.end method

.method public abstract unsetStrike()V
.end method

.method public abstract unsetSym()V
.end method

.method public abstract unsetSz()V
.end method

.method public abstract unsetU()V
.end method

.method public abstract unsetUFill()V
.end method

.method public abstract unsetUFillTx()V
.end method

.method public abstract unsetULn()V
.end method

.method public abstract unsetULnTx()V
.end method

.method public abstract xgetAltLang()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextLanguageID;
.end method

.method public abstract xgetB()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBaseline()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetBmk()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType;
.end method

.method public abstract xgetDirty()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetErr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetI()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetKern()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextNonNegativePoint;
.end method

.method public abstract xgetKumimoji()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLang()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextLanguageID;
.end method

.method public abstract xgetNoProof()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNormalizeH()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSmtClean()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSmtId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;
.end method

.method public abstract xgetStrike()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;
.end method

.method public abstract xgetSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontSize;
.end method

.method public abstract xgetU()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;
.end method

.method public abstract xsetAltLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextLanguageID;)V
.end method

.method public abstract xsetB(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBaseline(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetBmk(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType;)V
.end method

.method public abstract xsetDirty(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetErr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetI(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetKern(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextNonNegativePoint;)V
.end method

.method public abstract xsetKumimoji(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLang(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextLanguageID;)V
.end method

.method public abstract xsetNoProof(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNormalizeH(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSmtClean(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSmtId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSpc(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextPoint;)V
.end method

.method public abstract xsetStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;)V
.end method

.method public abstract xsetSz(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontSize;)V
.end method

.method public abstract xsetU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;)V
.end method
