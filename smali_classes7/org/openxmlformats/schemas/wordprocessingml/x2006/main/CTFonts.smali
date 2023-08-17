.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctfonts124etype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAscii()Ljava/lang/String;
.end method

.method public abstract getAsciiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getCs()Ljava/lang/String;
.end method

.method public abstract getCstheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getEastAsia()Ljava/lang/String;
.end method

.method public abstract getEastAsiaTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getHAnsi()Ljava/lang/String;
.end method

.method public abstract getHAnsiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;
.end method

.method public abstract getHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint$Enum;
.end method

.method public abstract isSetAscii()Z
.end method

.method public abstract isSetAsciiTheme()Z
.end method

.method public abstract isSetCs()Z
.end method

.method public abstract isSetCstheme()Z
.end method

.method public abstract isSetEastAsia()Z
.end method

.method public abstract isSetEastAsiaTheme()Z
.end method

.method public abstract isSetHAnsi()Z
.end method

.method public abstract isSetHAnsiTheme()Z
.end method

.method public abstract isSetHint()Z
.end method

.method public abstract setAscii(Ljava/lang/String;)V
.end method

.method public abstract setAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setCs(Ljava/lang/String;)V
.end method

.method public abstract setCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setEastAsia(Ljava/lang/String;)V
.end method

.method public abstract setEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setHAnsi(Ljava/lang/String;)V
.end method

.method public abstract setHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V
.end method

.method public abstract setHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint$Enum;)V
.end method

.method public abstract unsetAscii()V
.end method

.method public abstract unsetAsciiTheme()V
.end method

.method public abstract unsetCs()V
.end method

.method public abstract unsetCstheme()V
.end method

.method public abstract unsetEastAsia()V
.end method

.method public abstract unsetEastAsiaTheme()V
.end method

.method public abstract unsetHAnsi()V
.end method

.method public abstract unsetHAnsiTheme()V
.end method

.method public abstract unsetHint()V
.end method

.method public abstract xgetAscii()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;
.end method

.method public abstract xgetAsciiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;
.end method

.method public abstract xgetCstheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetEastAsia()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;
.end method

.method public abstract xgetEastAsiaTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetHAnsi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;
.end method

.method public abstract xgetHAnsiTheme()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;
.end method

.method public abstract xgetHint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;
.end method

.method public abstract xsetAscii(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;)V
.end method

.method public abstract xsetAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetCs(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;)V
.end method

.method public abstract xsetCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetEastAsia(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;)V
.end method

.method public abstract xsetEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetHAnsi(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STString;)V
.end method

.method public abstract xsetHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;)V
.end method

.method public abstract xsetHint(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHint;)V
.end method
