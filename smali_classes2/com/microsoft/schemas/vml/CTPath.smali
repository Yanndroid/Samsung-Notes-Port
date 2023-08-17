.class public interface abstract Lcom/microsoft/schemas/vml/CTPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/microsoft/schemas/vml/CTPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctpath5963type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lcom/microsoft/schemas/vml/CTPath;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getArrowok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getConnectangles()Ljava/lang/String;
.end method

.method public abstract getConnectlocs()Ljava/lang/String;
.end method

.method public abstract getConnecttype()Lcom/microsoft/schemas/office/office/STConnectType$Enum;
.end method

.method public abstract getExtrusionok()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getFillok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getGradientshapeok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInsetpenok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getLimo()Ljava/lang/String;
.end method

.method public abstract getShadowok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getStrokeok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getTextboxrect()Ljava/lang/String;
.end method

.method public abstract getTextpathok()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getV()Ljava/lang/String;
.end method

.method public abstract isSetArrowok()Z
.end method

.method public abstract isSetConnectangles()Z
.end method

.method public abstract isSetConnectlocs()Z
.end method

.method public abstract isSetConnecttype()Z
.end method

.method public abstract isSetExtrusionok()Z
.end method

.method public abstract isSetFillok()Z
.end method

.method public abstract isSetGradientshapeok()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInsetpenok()Z
.end method

.method public abstract isSetLimo()Z
.end method

.method public abstract isSetShadowok()Z
.end method

.method public abstract isSetStrokeok()Z
.end method

.method public abstract isSetTextboxrect()Z
.end method

.method public abstract isSetTextpathok()Z
.end method

.method public abstract isSetV()Z
.end method

.method public abstract setArrowok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setConnectangles(Ljava/lang/String;)V
.end method

.method public abstract setConnectlocs(Ljava/lang/String;)V
.end method

.method public abstract setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V
.end method

.method public abstract setExtrusionok(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setFillok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setGradientshapeok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setInsetpenok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setLimo(Ljava/lang/String;)V
.end method

.method public abstract setShadowok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setStrokeok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setTextboxrect(Ljava/lang/String;)V
.end method

.method public abstract setTextpathok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setV(Ljava/lang/String;)V
.end method

.method public abstract unsetArrowok()V
.end method

.method public abstract unsetConnectangles()V
.end method

.method public abstract unsetConnectlocs()V
.end method

.method public abstract unsetConnecttype()V
.end method

.method public abstract unsetExtrusionok()V
.end method

.method public abstract unsetFillok()V
.end method

.method public abstract unsetGradientshapeok()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInsetpenok()V
.end method

.method public abstract unsetLimo()V
.end method

.method public abstract unsetShadowok()V
.end method

.method public abstract unsetStrokeok()V
.end method

.method public abstract unsetTextboxrect()V
.end method

.method public abstract unsetTextpathok()V
.end method

.method public abstract unsetV()V
.end method

.method public abstract xgetArrowok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetConnectangles()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetConnectlocs()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetConnecttype()Lcom/microsoft/schemas/office/office/STConnectType;
.end method

.method public abstract xgetExtrusionok()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetFillok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetGradientshapeok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInsetpenok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetLimo()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShadowok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetStrokeok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetTextboxrect()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextpathok()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetV()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetArrowok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetConnectangles(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetConnectlocs(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetConnecttype(Lcom/microsoft/schemas/office/office/STConnectType;)V
.end method

.method public abstract xsetExtrusionok(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetFillok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetGradientshapeok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInsetpenok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetLimo(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShadowok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetStrokeok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetTextboxrect(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTextpathok(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetV(Lorg/apache/xmlbeans/XmlString;)V
.end method
