.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Factory;,
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;
    }
.end annotation


# static fields
.field public static final FREEZE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final HOLD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final INT_FREEZE:I = 0x2

.field public static final INT_HOLD:I = 0x3

.field public static final INT_REMOVE:I = 0x1

.field public static final INT_TRANSITION:I = 0x4

.field public static final REMOVE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final TRANSITION:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "sttltimenodefilltypeb7f1type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "remove"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->REMOVE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    const-string v0, "freeze"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->FREEZE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    const-string v0, "hold"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->HOLD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    const-string v0, "transition"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType;->TRANSITION:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeFillType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
