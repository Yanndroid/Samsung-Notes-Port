.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;
    }
.end annotation


# static fields
.field public static final BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

.field public static final END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

.field public static final INT_BEGIN:I = 0x1

.field public static final INT_END:I = 0x3

.field public static final INT_SEPARATE:I = 0x2

.field public static final SEPARATE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stfldchartype1eb4type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "begin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    const-string v0, "separate"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->SEPARATE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    const-string v0, "end"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
