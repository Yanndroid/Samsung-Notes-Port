.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextparagraphpropertiesdd05type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
.end method

.method public abstract addNewBuBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;
.end method

.method public abstract addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;
.end method

.method public abstract addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewBuClrTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletColorFollowText;
.end method

.method public abstract addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewBuFontTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletTypefaceFollowText;
.end method

.method public abstract addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;
.end method

.method public abstract addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
.end method

.method public abstract addNewBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
.end method

.method public abstract addNewBuSzTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;
.end method

.method public abstract addNewDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.end method

.method public abstract addNewSpcAft()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.end method

.method public abstract addNewSpcBef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.end method

.method public abstract addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
.end method

.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;
.end method

.method public abstract getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;
.end method

.method public abstract getBuBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;
.end method

.method public abstract getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;
.end method

.method public abstract getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getBuClrTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletColorFollowText;
.end method

.method public abstract getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getBuFontTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletTypefaceFollowText;
.end method

.method public abstract getBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;
.end method

.method public abstract getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;
.end method

.method public abstract getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;
.end method

.method public abstract getBuSzTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;
.end method

.method public abstract getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract getDefTabSz()I
.end method

.method public abstract getEaLnBrk()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFontAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;
.end method

.method public abstract getHangingPunct()Z
.end method

.method public abstract getIndent()I
.end method

.method public abstract getLatinLnBrk()Z
.end method

.method public abstract getLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.end method

.method public abstract getLvl()I
.end method

.method public abstract getMarL()I
.end method

.method public abstract getMarR()I
.end method

.method public abstract getRtl()Z
.end method

.method public abstract getSpcAft()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.end method

.method public abstract getSpcBef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
.end method

.method public abstract getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetBuAutoNum()Z
.end method

.method public abstract isSetBuBlip()Z
.end method

.method public abstract isSetBuChar()Z
.end method

.method public abstract isSetBuClr()Z
.end method

.method public abstract isSetBuClrTx()Z
.end method

.method public abstract isSetBuFont()Z
.end method

.method public abstract isSetBuFontTx()Z
.end method

.method public abstract isSetBuNone()Z
.end method

.method public abstract isSetBuSzPct()Z
.end method

.method public abstract isSetBuSzPts()Z
.end method

.method public abstract isSetBuSzTx()Z
.end method

.method public abstract isSetDefRPr()Z
.end method

.method public abstract isSetDefTabSz()Z
.end method

.method public abstract isSetEaLnBrk()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFontAlgn()Z
.end method

.method public abstract isSetHangingPunct()Z
.end method

.method public abstract isSetIndent()Z
.end method

.method public abstract isSetLatinLnBrk()Z
.end method

.method public abstract isSetLnSpc()Z
.end method

.method public abstract isSetLvl()Z
.end method

.method public abstract isSetMarL()Z
.end method

.method public abstract isSetMarR()Z
.end method

.method public abstract isSetRtl()Z
.end method

.method public abstract isSetSpcAft()Z
.end method

.method public abstract isSetSpcBef()Z
.end method

.method public abstract isSetTabLst()Z
.end method

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V
.end method

.method public abstract setBuAutoNum(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;)V
.end method

.method public abstract setBuBlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;)V
.end method

.method public abstract setBuChar(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;)V
.end method

.method public abstract setBuClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setBuClrTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletColorFollowText;)V
.end method

.method public abstract setBuFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setBuFontTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletTypefaceFollowText;)V
.end method

.method public abstract setBuNone(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;)V
.end method

.method public abstract setBuSzPct(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;)V
.end method

.method public abstract setBuSzPts(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;)V
.end method

.method public abstract setBuSzTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizeFollowText;)V
.end method

.method public abstract setDefRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
.end method

.method public abstract setDefTabSz(I)V
.end method

.method public abstract setEaLnBrk(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V
.end method

.method public abstract setHangingPunct(Z)V
.end method

.method public abstract setIndent(I)V
.end method

.method public abstract setLatinLnBrk(Z)V
.end method

.method public abstract setLnSpc(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V
.end method

.method public abstract setLvl(I)V
.end method

.method public abstract setMarL(I)V
.end method

.method public abstract setMarR(I)V
.end method

.method public abstract setRtl(Z)V
.end method

.method public abstract setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V
.end method

.method public abstract setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V
.end method

.method public abstract setTabLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;)V
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetBuAutoNum()V
.end method

.method public abstract unsetBuBlip()V
.end method

.method public abstract unsetBuChar()V
.end method

.method public abstract unsetBuClr()V
.end method

.method public abstract unsetBuClrTx()V
.end method

.method public abstract unsetBuFont()V
.end method

.method public abstract unsetBuFontTx()V
.end method

.method public abstract unsetBuNone()V
.end method

.method public abstract unsetBuSzPct()V
.end method

.method public abstract unsetBuSzPts()V
.end method

.method public abstract unsetBuSzTx()V
.end method

.method public abstract unsetDefRPr()V
.end method

.method public abstract unsetDefTabSz()V
.end method

.method public abstract unsetEaLnBrk()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFontAlgn()V
.end method

.method public abstract unsetHangingPunct()V
.end method

.method public abstract unsetIndent()V
.end method

.method public abstract unsetLatinLnBrk()V
.end method

.method public abstract unsetLnSpc()V
.end method

.method public abstract unsetLvl()V
.end method

.method public abstract unsetMarL()V
.end method

.method public abstract unsetMarR()V
.end method

.method public abstract unsetRtl()V
.end method

.method public abstract unsetSpcAft()V
.end method

.method public abstract unsetSpcBef()V
.end method

.method public abstract unsetTabLst()V
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;
.end method

.method public abstract xgetDefTabSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetEaLnBrk()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFontAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;
.end method

.method public abstract xgetHangingPunct()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIndent()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextIndent;
.end method

.method public abstract xgetLatinLnBrk()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLvl()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextIndentLevelType;
.end method

.method public abstract xgetMarL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextMargin;
.end method

.method public abstract xgetMarR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextMargin;
.end method

.method public abstract xgetRtl()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;)V
.end method

.method public abstract xsetDefTabSz(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetEaLnBrk(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;)V
.end method

.method public abstract xsetHangingPunct(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIndent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextIndent;)V
.end method

.method public abstract xsetLatinLnBrk(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLvl(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextIndentLevelType;)V
.end method

.method public abstract xsetMarL(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextMargin;)V
.end method

.method public abstract xsetMarR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextMargin;)V
.end method

.method public abstract xsetRtl(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
