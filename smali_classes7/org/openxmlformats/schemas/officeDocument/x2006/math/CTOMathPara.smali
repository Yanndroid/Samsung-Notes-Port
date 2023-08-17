.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctomathpara8825type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewOMath()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract addNewOMathParaPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathParaPr;
.end method

.method public abstract getOMathArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract getOMathArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract getOMathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOMathParaPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathParaPr;
.end method

.method public abstract insertNewOMath(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;
.end method

.method public abstract isSetOMathParaPr()Z
.end method

.method public abstract removeOMath(I)V
.end method

.method public abstract setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathArray([Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V
.end method

.method public abstract setOMathParaPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathParaPr;)V
.end method

.method public abstract sizeOfOMathArray()I
.end method

.method public abstract unsetOMathParaPr()V
.end method
