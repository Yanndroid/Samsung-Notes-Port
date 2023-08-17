.class public interface abstract Lcom/microsoft/schemas/vml/CTShadow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/CTShadow$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/microsoft/schemas/vml/CTShadow;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctshadowdfdetype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lcom/microsoft/schemas/vml/CTShadow;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getColor()Ljava/lang/String;
.end method

.method public abstract getColor2()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMatrix()Ljava/lang/String;
.end method

.method public abstract getObscured()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getOffset()Ljava/lang/String;
.end method

.method public abstract getOffset2()Ljava/lang/String;
.end method

.method public abstract getOn()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getOpacity()Ljava/lang/String;
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/microsoft/schemas/vml/STShadowType$Enum;
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetColor2()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetMatrix()Z
.end method

.method public abstract isSetObscured()Z
.end method

.method public abstract isSetOffset()Z
.end method

.method public abstract isSetOffset2()Z
.end method

.method public abstract isSetOn()Z
.end method

.method public abstract isSetOpacity()Z
.end method

.method public abstract isSetOrigin()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setColor(Ljava/lang/String;)V
.end method

.method public abstract setColor2(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setMatrix(Ljava/lang/String;)V
.end method

.method public abstract setObscured(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setOffset(Ljava/lang/String;)V
.end method

.method public abstract setOffset2(Ljava/lang/String;)V
.end method

.method public abstract setOn(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setOpacity(Ljava/lang/String;)V
.end method

.method public abstract setOrigin(Ljava/lang/String;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/vml/STShadowType$Enum;)V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetColor2()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetMatrix()V
.end method

.method public abstract unsetObscured()V
.end method

.method public abstract unsetOffset()V
.end method

.method public abstract unsetOffset2()V
.end method

.method public abstract unsetOn()V
.end method

.method public abstract unsetOpacity()V
.end method

.method public abstract unsetOrigin()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetColor()Lcom/microsoft/schemas/vml/STColorType;
.end method

.method public abstract xgetColor2()Lcom/microsoft/schemas/vml/STColorType;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMatrix()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetObscured()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetOffset()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOffset2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOn()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetOpacity()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOrigin()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/vml/STShadowType;
.end method

.method public abstract xsetColor(Lcom/microsoft/schemas/vml/STColorType;)V
.end method

.method public abstract xsetColor2(Lcom/microsoft/schemas/vml/STColorType;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMatrix(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetObscured(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetOffset(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOffset2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOn(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetOpacity(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOrigin(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/vml/STShadowType;)V
.end method
