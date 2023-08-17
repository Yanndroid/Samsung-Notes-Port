.class Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;
.super Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getVerticalAlignment()Lorg/apache/poi/sl/usermodel/VerticalAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/VerticalAlignment;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)Z
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    invoke-static {}, Lorg/apache/poi/sl/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/sl/usermodel/VerticalAlignment;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
