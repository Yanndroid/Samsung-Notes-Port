.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cthyperlink4457type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewSnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getEndSnd()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getHighlightClick()Z
.end method

.method public abstract getHistory()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInvalidUrl()Ljava/lang/String;
.end method

.method public abstract getSnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;
.end method

.method public abstract getTgtFrame()Ljava/lang/String;
.end method

.method public abstract getTooltip()Ljava/lang/String;
.end method

.method public abstract isSetAction()Z
.end method

.method public abstract isSetEndSnd()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHighlightClick()Z
.end method

.method public abstract isSetHistory()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInvalidUrl()Z
.end method

.method public abstract isSetSnd()Z
.end method

.method public abstract isSetTgtFrame()Z
.end method

.method public abstract isSetTooltip()Z
.end method

.method public abstract setAction(Ljava/lang/String;)V
.end method

.method public abstract setEndSnd(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setHighlightClick(Z)V
.end method

.method public abstract setHistory(Z)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setInvalidUrl(Ljava/lang/String;)V
.end method

.method public abstract setSnd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmbeddedWAVAudioFile;)V
.end method

.method public abstract setTgtFrame(Ljava/lang/String;)V
.end method

.method public abstract setTooltip(Ljava/lang/String;)V
.end method

.method public abstract unsetAction()V
.end method

.method public abstract unsetEndSnd()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHighlightClick()V
.end method

.method public abstract unsetHistory()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInvalidUrl()V
.end method

.method public abstract unsetSnd()V
.end method

.method public abstract unsetTgtFrame()V
.end method

.method public abstract unsetTooltip()V
.end method

.method public abstract xgetAction()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetEndSnd()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHighlightClick()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHistory()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetInvalidUrl()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTgtFrame()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTooltip()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAction(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetEndSnd(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHighlightClick(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHistory(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetInvalidUrl(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTgtFrame(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTooltip(Lorg/apache/xmlbeans/XmlString;)V
.end method
