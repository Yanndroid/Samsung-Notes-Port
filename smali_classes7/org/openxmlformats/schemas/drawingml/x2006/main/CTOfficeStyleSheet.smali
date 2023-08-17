.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctofficestylesheetce25type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewExtraClrSchemeLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeList;
.end method

.method public abstract addNewObjectDefaults()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;
.end method

.method public abstract addNewThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;
.end method

.method public abstract getCustClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getExtraClrSchemeLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeList;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getObjectDefaults()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;
.end method

.method public abstract getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;
.end method

.method public abstract isSetCustClrLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetExtraClrSchemeLst()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetObjectDefaults()Z
.end method

.method public abstract setCustClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomColorList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setExtraClrSchemeLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorSchemeList;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setObjectDefaults(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTObjectStyleDefaults;)V
.end method

.method public abstract setThemeElements(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;)V
.end method

.method public abstract unsetCustClrLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetExtraClrSchemeLst()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetObjectDefaults()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
