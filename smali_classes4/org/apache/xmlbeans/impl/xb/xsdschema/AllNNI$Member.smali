.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlNMTOKEN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Member"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member$Factory;,
        Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member$Enum;
    }
.end annotation


# static fields
.field public static final INT_UNBOUNDED:I = 0x1

.field public static final UNBOUNDED:Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$AllNNI$Member:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.AllNNI$Member"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$AllNNI$Member:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "anon0330type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "unbounded"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member;->UNBOUNDED:Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI$Member$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
