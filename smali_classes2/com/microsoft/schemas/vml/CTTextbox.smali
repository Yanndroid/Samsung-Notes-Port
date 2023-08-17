.class public interface abstract Lcom/microsoft/schemas/vml/CTTextbox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/microsoft/schemas/vml/CTTextbox;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextboxf712type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lcom/microsoft/schemas/vml/CTTextbox;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTxbxContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInset()Ljava/lang/String;
.end method

.method public abstract getInsetmode()Lcom/microsoft/schemas/office/office/STInsetMode$Enum;
.end method

.method public abstract getSingleclick()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getStyle()Ljava/lang/String;
.end method

.method public abstract getTxbxContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInset()Z
.end method

.method public abstract isSetInsetmode()Z
.end method

.method public abstract isSetSingleclick()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetTxbxContent()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setInset(Ljava/lang/String;)V
.end method

.method public abstract setInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode$Enum;)V
.end method

.method public abstract setSingleclick(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setStyle(Ljava/lang/String;)V
.end method

.method public abstract setTxbxContent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTxbxContent;)V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInset()V
.end method

.method public abstract unsetInsetmode()V
.end method

.method public abstract unsetSingleclick()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetTxbxContent()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInset()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInsetmode()Lcom/microsoft/schemas/office/office/STInsetMode;
.end method

.method public abstract xgetSingleclick()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInset(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode;)V
.end method

.method public abstract xsetSingleclick(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method
