.class Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;
.super Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;->this$1:Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    invoke-direct {p0, p2}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;->this$1:Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->access$200(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
