.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctpresentation56cbtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract addNewCustShowLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowList;
.end method

.method public abstract addNewDefaultTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract addNewEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHandoutMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHandoutMasterIdList;
.end method

.method public abstract addNewKinsoku()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;
.end method

.method public abstract addNewModifyVerifier()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;
.end method

.method public abstract addNewNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;
.end method

.method public abstract addNewNotesSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewPhotoAlbum()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPhotoAlbum;
.end method

.method public abstract addNewSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
.end method

.method public abstract addNewSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;
.end method

.method public abstract addNewSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
.end method

.method public abstract addNewSmartTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSmartTags;
.end method

.method public abstract getAutoCompressPictures()Z
.end method

.method public abstract getBookmarkIdSeed()J
.end method

.method public abstract getCompatMode()Z
.end method

.method public abstract getCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract getCustShowLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowList;
.end method

.method public abstract getDefaultTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getEmbedTrueTypeFonts()Z
.end method

.method public abstract getEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getFirstSlideNum()I
.end method

.method public abstract getHandoutMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHandoutMasterIdList;
.end method

.method public abstract getKinsoku()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;
.end method

.method public abstract getModifyVerifier()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;
.end method

.method public abstract getNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;
.end method

.method public abstract getNotesSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getPhotoAlbum()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPhotoAlbum;
.end method

.method public abstract getRemovePersonalInfoOnSave()Z
.end method

.method public abstract getRtl()Z
.end method

.method public abstract getSaveSubsetFonts()Z
.end method

.method public abstract getServerZoom()I
.end method

.method public abstract getShowSpecialPlsOnTitleSld()Z
.end method

.method public abstract getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
.end method

.method public abstract getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;
.end method

.method public abstract getSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
.end method

.method public abstract getSmartTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSmartTags;
.end method

.method public abstract getStrictFirstAndLastChars()Z
.end method

.method public abstract isSetAutoCompressPictures()Z
.end method

.method public abstract isSetBookmarkIdSeed()Z
.end method

.method public abstract isSetCompatMode()Z
.end method

.method public abstract isSetCustDataLst()Z
.end method

.method public abstract isSetCustShowLst()Z
.end method

.method public abstract isSetDefaultTextStyle()Z
.end method

.method public abstract isSetEmbedTrueTypeFonts()Z
.end method

.method public abstract isSetEmbeddedFontLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFirstSlideNum()Z
.end method

.method public abstract isSetHandoutMasterIdLst()Z
.end method

.method public abstract isSetKinsoku()Z
.end method

.method public abstract isSetModifyVerifier()Z
.end method

.method public abstract isSetNotesMasterIdLst()Z
.end method

.method public abstract isSetPhotoAlbum()Z
.end method

.method public abstract isSetRemovePersonalInfoOnSave()Z
.end method

.method public abstract isSetRtl()Z
.end method

.method public abstract isSetSaveSubsetFonts()Z
.end method

.method public abstract isSetServerZoom()Z
.end method

.method public abstract isSetShowSpecialPlsOnTitleSld()Z
.end method

.method public abstract isSetSldIdLst()Z
.end method

.method public abstract isSetSldMasterIdLst()Z
.end method

.method public abstract isSetSldSz()Z
.end method

.method public abstract isSetSmartTags()Z
.end method

.method public abstract isSetStrictFirstAndLastChars()Z
.end method

.method public abstract setAutoCompressPictures(Z)V
.end method

.method public abstract setBookmarkIdSeed(J)V
.end method

.method public abstract setCompatMode(Z)V
.end method

.method public abstract setCustDataLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;)V
.end method

.method public abstract setCustShowLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowList;)V
.end method

.method public abstract setDefaultTextStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract setEmbedTrueTypeFonts(Z)V
.end method

.method public abstract setEmbeddedFontLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFirstSlideNum(I)V
.end method

.method public abstract setHandoutMasterIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHandoutMasterIdList;)V
.end method

.method public abstract setKinsoku(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;)V
.end method

.method public abstract setModifyVerifier(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;)V
.end method

.method public abstract setNotesMasterIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;)V
.end method

.method public abstract setNotesSz(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setPhotoAlbum(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPhotoAlbum;)V
.end method

.method public abstract setRemovePersonalInfoOnSave(Z)V
.end method

.method public abstract setRtl(Z)V
.end method

.method public abstract setSaveSubsetFonts(Z)V
.end method

.method public abstract setServerZoom(I)V
.end method

.method public abstract setShowSpecialPlsOnTitleSld(Z)V
.end method

.method public abstract setSldIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;)V
.end method

.method public abstract setSldMasterIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;)V
.end method

.method public abstract setSldSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;)V
.end method

.method public abstract setSmartTags(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSmartTags;)V
.end method

.method public abstract setStrictFirstAndLastChars(Z)V
.end method

.method public abstract unsetAutoCompressPictures()V
.end method

.method public abstract unsetBookmarkIdSeed()V
.end method

.method public abstract unsetCompatMode()V
.end method

.method public abstract unsetCustDataLst()V
.end method

.method public abstract unsetCustShowLst()V
.end method

.method public abstract unsetDefaultTextStyle()V
.end method

.method public abstract unsetEmbedTrueTypeFonts()V
.end method

.method public abstract unsetEmbeddedFontLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFirstSlideNum()V
.end method

.method public abstract unsetHandoutMasterIdLst()V
.end method

.method public abstract unsetKinsoku()V
.end method

.method public abstract unsetModifyVerifier()V
.end method

.method public abstract unsetNotesMasterIdLst()V
.end method

.method public abstract unsetPhotoAlbum()V
.end method

.method public abstract unsetRemovePersonalInfoOnSave()V
.end method

.method public abstract unsetRtl()V
.end method

.method public abstract unsetSaveSubsetFonts()V
.end method

.method public abstract unsetServerZoom()V
.end method

.method public abstract unsetShowSpecialPlsOnTitleSld()V
.end method

.method public abstract unsetSldIdLst()V
.end method

.method public abstract unsetSldMasterIdLst()V
.end method

.method public abstract unsetSldSz()V
.end method

.method public abstract unsetSmartTags()V
.end method

.method public abstract unsetStrictFirstAndLastChars()V
.end method

.method public abstract xgetAutoCompressPictures()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBookmarkIdSeed()Lorg/openxmlformats/schemas/presentationml/x2006/main/STBookmarkIdSeed;
.end method

.method public abstract xgetCompatMode()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEmbedTrueTypeFonts()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFirstSlideNum()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetRemovePersonalInfoOnSave()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRtl()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSaveSubsetFonts()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetServerZoom()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetShowSpecialPlsOnTitleSld()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStrictFirstAndLastChars()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAutoCompressPictures(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBookmarkIdSeed(Lorg/openxmlformats/schemas/presentationml/x2006/main/STBookmarkIdSeed;)V
.end method

.method public abstract xsetCompatMode(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEmbedTrueTypeFonts(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFirstSlideNum(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetRemovePersonalInfoOnSave(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRtl(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSaveSubsetFonts(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetServerZoom(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetShowSpecialPlsOnTitleSld(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStrictFirstAndLastChars(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
