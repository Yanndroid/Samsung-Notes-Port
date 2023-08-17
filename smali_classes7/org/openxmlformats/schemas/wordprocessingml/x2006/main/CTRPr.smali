.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctrpr097etype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
.end method

.method public abstract addNewCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEastAsianLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.end method

.method public abstract addNewEffect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;
.end method

.method public abstract addNewEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract addNewEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;
.end method

.method public abstract addNewHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;
.end method

.method public abstract addNewI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewICs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewOMath()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewOutline()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
.end method

.method public abstract addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract addNewRPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrChange;
.end method

.method public abstract addNewRStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewRtl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSnapToGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract addNewSpecVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
.end method

.method public abstract addNewVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
.end method

.method public abstract addNewW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;
.end method

.method public abstract addNewWebHidden()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
.end method

.method public abstract getCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEastAsianLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.end method

.method public abstract getEffect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;
.end method

.method public abstract getEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract getEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;
.end method

.method public abstract getHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;
.end method

.method public abstract getI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getICs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract getNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getOMath()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getOutline()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
.end method

.method public abstract getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract getRPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrChange;
.end method

.method public abstract getRStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getRtl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSnapToGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getSpecVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
.end method

.method public abstract getVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
.end method

.method public abstract getW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;
.end method

.method public abstract getWebHidden()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract isSetB()Z
.end method

.method public abstract isSetBCs()Z
.end method

.method public abstract isSetBdr()Z
.end method

.method public abstract isSetCaps()Z
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetCs()Z
.end method

.method public abstract isSetDstrike()Z
.end method

.method public abstract isSetEastAsianLayout()Z
.end method

.method public abstract isSetEffect()Z
.end method

.method public abstract isSetEm()Z
.end method

.method public abstract isSetEmboss()Z
.end method

.method public abstract isSetFitText()Z
.end method

.method public abstract isSetHighlight()Z
.end method

.method public abstract isSetI()Z
.end method

.method public abstract isSetICs()Z
.end method

.method public abstract isSetImprint()Z
.end method

.method public abstract isSetKern()Z
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract isSetNoProof()Z
.end method

.method public abstract isSetOMath()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetPosition()Z
.end method

.method public abstract isSetRFonts()Z
.end method

.method public abstract isSetRPrChange()Z
.end method

.method public abstract isSetRStyle()Z
.end method

.method public abstract isSetRtl()Z
.end method

.method public abstract isSetShadow()Z
.end method

.method public abstract isSetShd()Z
.end method

.method public abstract isSetSmallCaps()Z
.end method

.method public abstract isSetSnapToGrid()Z
.end method

.method public abstract isSetSpacing()Z
.end method

.method public abstract isSetSpecVanish()Z
.end method

.method public abstract isSetStrike()Z
.end method

.method public abstract isSetSz()Z
.end method

.method public abstract isSetSzCs()Z
.end method

.method public abstract isSetU()Z
.end method

.method public abstract isSetVanish()Z
.end method

.method public abstract isSetVertAlign()Z
.end method

.method public abstract isSetW()Z
.end method

.method public abstract isSetWebHidden()Z
.end method

.method public abstract setB(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBCs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setCaps(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;)V
.end method

.method public abstract setCs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDstrike(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEastAsianLayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;)V
.end method

.method public abstract setEffect(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;)V
.end method

.method public abstract setEm(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;)V
.end method

.method public abstract setEmboss(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setFitText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;)V
.end method

.method public abstract setHighlight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;)V
.end method

.method public abstract setI(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setICs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setImprint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setKern(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setLang(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;)V
.end method

.method public abstract setNoProof(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setOMath(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setOutline(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPosition(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;)V
.end method

.method public abstract setRFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V
.end method

.method public abstract setRPrChange(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrChange;)V
.end method

.method public abstract setRStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setRtl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShadow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setSmallCaps(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSnapToGrid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSpacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract setSpecVanish(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setStrike(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setSzCs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setU(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;)V
.end method

.method public abstract setVanish(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setVertAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;)V
.end method

.method public abstract setW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;)V
.end method

.method public abstract setWebHidden(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract unsetB()V
.end method

.method public abstract unsetBCs()V
.end method

.method public abstract unsetBdr()V
.end method

.method public abstract unsetCaps()V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetCs()V
.end method

.method public abstract unsetDstrike()V
.end method

.method public abstract unsetEastAsianLayout()V
.end method

.method public abstract unsetEffect()V
.end method

.method public abstract unsetEm()V
.end method

.method public abstract unsetEmboss()V
.end method

.method public abstract unsetFitText()V
.end method

.method public abstract unsetHighlight()V
.end method

.method public abstract unsetI()V
.end method

.method public abstract unsetICs()V
.end method

.method public abstract unsetImprint()V
.end method

.method public abstract unsetKern()V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract unsetNoProof()V
.end method

.method public abstract unsetOMath()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetPosition()V
.end method

.method public abstract unsetRFonts()V
.end method

.method public abstract unsetRPrChange()V
.end method

.method public abstract unsetRStyle()V
.end method

.method public abstract unsetRtl()V
.end method

.method public abstract unsetShadow()V
.end method

.method public abstract unsetShd()V
.end method

.method public abstract unsetSmallCaps()V
.end method

.method public abstract unsetSnapToGrid()V
.end method

.method public abstract unsetSpacing()V
.end method

.method public abstract unsetSpecVanish()V
.end method

.method public abstract unsetStrike()V
.end method

.method public abstract unsetSz()V
.end method

.method public abstract unsetSzCs()V
.end method

.method public abstract unsetU()V
.end method

.method public abstract unsetVanish()V
.end method

.method public abstract unsetVertAlign()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract unsetWebHidden()V
.end method
