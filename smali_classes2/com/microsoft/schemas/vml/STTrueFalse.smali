.class public interface abstract Lcom/microsoft/schemas/vml/STTrueFalse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
    }
.end annotation


# static fields
.field public static final F:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

.field public static final FALSE:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

.field public static final INT_F:I = 0x2

.field public static final INT_FALSE:I = 0x4

.field public static final INT_T:I = 0x1

.field public static final INT_TRUE:I = 0x3

.field public static final T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

.field public static final TRUE:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/microsoft/schemas/vml/STTrueFalse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "sttruefalse4ab9type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lcom/microsoft/schemas/vml/STTrueFalse;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "t"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STTrueFalse$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    const-string v0, "f"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STTrueFalse$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STTrueFalse;->F:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    const-string/jumbo v0, "true"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STTrueFalse$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STTrueFalse;->TRUE:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    const-string v0, "false"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STTrueFalse$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STTrueFalse;->FALSE:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
