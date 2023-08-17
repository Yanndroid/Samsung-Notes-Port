.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctplaceholder9efctype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getHasCustomPrompt()Z
.end method

.method public abstract getIdx()J
.end method

.method public abstract getOrient()Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection$Enum;
.end method

.method public abstract getSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHasCustomPrompt()Z
.end method

.method public abstract isSetIdx()Z
.end method

.method public abstract isSetOrient()Z
.end method

.method public abstract isSetSz()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setHasCustomPrompt(Z)V
.end method

.method public abstract setIdx(J)V
.end method

.method public abstract setOrient(Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection$Enum;)V
.end method

.method public abstract setSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHasCustomPrompt()V
.end method

.method public abstract unsetIdx()V
.end method

.method public abstract unsetOrient()V
.end method

.method public abstract unsetSz()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetHasCustomPrompt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIdx()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetOrient()Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection;
.end method

.method public abstract xgetSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;
.end method

.method public abstract xsetHasCustomPrompt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIdx(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetOrient(Lorg/openxmlformats/schemas/presentationml/x2006/main/STDirection;)V
.end method

.method public abstract xsetSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;)V
.end method
