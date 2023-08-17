.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextbodya3catype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.end method

.method public abstract addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.end method

.method public abstract getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract getPArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract getPList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewP(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.end method

.method public abstract isSetLstStyle()Z
.end method

.method public abstract removeP(I)V
.end method

.method public abstract setBodyPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V
.end method

.method public abstract setLstStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract setPArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V
.end method

.method public abstract setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V
.end method

.method public abstract sizeOfPArray()I
.end method

.method public abstract unsetLstStyle()V
.end method
