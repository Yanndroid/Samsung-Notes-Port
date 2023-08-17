.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctslidetiming4214type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBldLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract getBldLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getTnLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.end method

.method public abstract isSetBldLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetTnLst()Z
.end method

.method public abstract setBldLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setTnLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;)V
.end method

.method public abstract unsetBldLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetTnLst()V
.end method
