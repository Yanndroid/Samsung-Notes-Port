.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArgPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArgPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArgPr;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctomathargprccb1type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathArgPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewArgSz()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTInteger2;
.end method

.method public abstract getArgSz()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTInteger2;
.end method

.method public abstract isSetArgSz()Z
.end method

.method public abstract setArgSz(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTInteger2;)V
.end method

.method public abstract unsetArgSz()V
.end method
