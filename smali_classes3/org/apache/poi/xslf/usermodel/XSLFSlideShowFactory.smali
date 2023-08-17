.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;
.super Lorg/apache/poi/sl/usermodel/SlideShowFactory;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;-><init>()V

    return-void
.end method

.method public static createSlideShow(Ljava/io/File;Z)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;->createSlideShow(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static createSlideShow(Ljava/io/InputStream;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShowFactory;->createSlideShow(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p0

    return-object p0
.end method

.method public static createSlideShow(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/OPCPackage;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0
.end method
