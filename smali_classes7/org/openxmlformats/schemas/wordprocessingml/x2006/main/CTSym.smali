.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctsym0dabtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSym;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getChar()[B
.end method

.method public abstract getFont()Ljava/lang/String;
.end method

.method public abstract isSetChar()Z
.end method

.method public abstract isSetFont()Z
.end method

.method public abstract setChar([B)V
.end method

.method public abstract setFont(Ljava/lang/String;)V
.end method

.method public abstract unsetChar()V
.end method

.method public abstract unsetFont()V
.end method

.method public abstract xgetChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;
.end method

.method public abstract xgetFont()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;
.end method

.method public abstract xsetChar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;)V
.end method

.method public abstract xsetFont(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;)V
.end method
