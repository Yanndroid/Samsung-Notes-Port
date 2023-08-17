.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctextensionlist4772type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract getExtArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract getExtArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract getExtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewExt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract removeExt(I)V
.end method

.method public abstract setExtArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;)V
.end method

.method public abstract setExtArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;)V
.end method

.method public abstract sizeOfExtArray()I
.end method
