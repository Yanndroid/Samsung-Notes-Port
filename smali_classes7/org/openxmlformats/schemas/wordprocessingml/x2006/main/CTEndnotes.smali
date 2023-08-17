.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctendnotescee2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
.end method

.method public abstract getEndnoteArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
.end method

.method public abstract getEndnoteArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
.end method

.method public abstract getEndnoteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewEndnote(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
.end method

.method public abstract removeEndnote(I)V
.end method

.method public abstract setEndnoteArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
.end method

.method public abstract setEndnoteArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
.end method

.method public abstract sizeOfEndnoteArray()I
.end method
