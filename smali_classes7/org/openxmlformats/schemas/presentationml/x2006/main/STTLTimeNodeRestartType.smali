.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Factory;,
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;
    }
.end annotation


# static fields
.field public static final ALWAYS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

.field public static final INT_ALWAYS:I = 0x1

.field public static final INT_NEVER:I = 0x3

.field public static final INT_WHEN_NOT_ACTIVE:I = 0x2

.field public static final NEVER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

.field public static final WHEN_NOT_ACTIVE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "sttltimenoderestarttype4e5dtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "always"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;->ALWAYS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    const-string v0, "whenNotActive"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;->WHEN_NOT_ACTIVE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    const-string v0, "never"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType;->NEVER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeNodeRestartType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
