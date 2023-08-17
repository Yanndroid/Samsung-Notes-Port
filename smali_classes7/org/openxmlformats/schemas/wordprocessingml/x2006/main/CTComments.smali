.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctcomments7674type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewComment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
.end method

.method public abstract getCommentArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
.end method

.method public abstract getCommentArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
.end method

.method public abstract getCommentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewComment(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;
.end method

.method public abstract removeComment(I)V
.end method

.method public abstract setCommentArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;)V
.end method

.method public abstract setCommentArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;)V
.end method

.method public abstract sizeOfCommentArray()I
.end method
