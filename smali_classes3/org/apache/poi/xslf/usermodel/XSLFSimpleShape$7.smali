.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getEffectDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;->isSetEffectLst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->getOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->access$100()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
