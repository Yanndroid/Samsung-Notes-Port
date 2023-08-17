.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctapplicationnonvisualdrawingprops2fb6type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAudioCd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCD;
.end method

.method public abstract addNewAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;
.end method

.method public abstract addNewCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
.end method

.method public abstract addNewQuickTimeFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTQuickTimeFile;
.end method

.method public abstract addNewVideoFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;
.end method

.method public abstract addNewWavAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract getAudioCd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCD;
.end method

.method public abstract getAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;
.end method

.method public abstract getCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getIsPhoto()Z
.end method

.method public abstract getPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
.end method

.method public abstract getQuickTimeFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTQuickTimeFile;
.end method

.method public abstract getUserDrawn()Z
.end method

.method public abstract getVideoFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;
.end method

.method public abstract getWavAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract isSetAudioCd()Z
.end method

.method public abstract isSetAudioFile()Z
.end method

.method public abstract isSetCustDataLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIsPhoto()Z
.end method

.method public abstract isSetPh()Z
.end method

.method public abstract isSetQuickTimeFile()Z
.end method

.method public abstract isSetUserDrawn()Z
.end method

.method public abstract isSetVideoFile()Z
.end method

.method public abstract isSetWavAudioFile()Z
.end method

.method public abstract setAudioCd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCD;)V
.end method

.method public abstract setAudioFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;)V
.end method

.method public abstract setCustDataLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setIsPhoto(Z)V
.end method

.method public abstract setPh(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)V
.end method

.method public abstract setQuickTimeFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTQuickTimeFile;)V
.end method

.method public abstract setUserDrawn(Z)V
.end method

.method public abstract setVideoFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;)V
.end method

.method public abstract setWavAudioFile(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;)V
.end method

.method public abstract unsetAudioCd()V
.end method

.method public abstract unsetAudioFile()V
.end method

.method public abstract unsetCustDataLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIsPhoto()V
.end method

.method public abstract unsetPh()V
.end method

.method public abstract unsetQuickTimeFile()V
.end method

.method public abstract unsetUserDrawn()V
.end method

.method public abstract unsetVideoFile()V
.end method

.method public abstract unsetWavAudioFile()V
.end method

.method public abstract xgetIsPhoto()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUserDrawn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetIsPhoto(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUserDrawn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
