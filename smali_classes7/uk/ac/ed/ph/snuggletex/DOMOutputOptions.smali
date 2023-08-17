.class public Luk/ac/ed/ph/snuggletex/DOMOutputOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;
    }
.end annotation


# static fields
.field public static final DEFAULT_MATHML_PREFIX:Ljava/lang/String; = "m"

.field public static final DEFAULT_SNUGGLETEX_XML_PREFIX:Ljava/lang/String; = "s"

.field public static final DEFAULT_XHTML_PREFIX:Ljava/lang/String; = "h"


# instance fields
.field private addingMathSourceAnnotations:Z

.field private applyingFirefox3SemanticsWorkaround:Z

.field private domPostProcessors:[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

.field private errorOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

.field private inlineCSSProperties:Ljava/util/Properties;

.field private inliningCSS:Z

.field private linkResolver:Luk/ac/ed/ph/snuggletex/LinkResolver;

.field private mathMLPrefix:Ljava/lang/String;

.field private mathVariantMapping:Z

.field private prefixingMathML:Z

.field private prefixingSnuggleXML:Z

.field private prefixingXHTML:Z

.field private snuggleXMLPrefix:Ljava/lang/String;

.field private xhtmlPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->NO_OUTPUT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->errorOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->domPostProcessors:[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->inliningCSS:Z

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->inlineCSSProperties:Ljava/util/Properties;

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingXHTML:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingMathML:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingSnuggleXML:Z

    const-string v2, "h"

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->xhtmlPrefix:Ljava/lang/String;

    const-string v2, "m"

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->mathMLPrefix:Ljava/lang/String;

    const-string v2, "s"

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->snuggleXMLPrefix:Ljava/lang/String;

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->addingMathSourceAnnotations:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->applyingFirefox3SemanticsWorkaround:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->mathVariantMapping:Z

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->linkResolver:Luk/ac/ed/ph/snuggletex/LinkResolver;

    return-void
.end method


# virtual methods
.method public varargs addDOMPostProcessors([Luk/ac/ed/ph/snuggletex/DOMPostProcessor;)V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->domPostProcessors:[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    const-class v1, Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    invoke-static {v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->domPostProcessors:[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDOMPostProcessors()[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->domPostProcessors:[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    return-object v0
.end method

.method public getErrorOutputOptions()Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->errorOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    return-object v0
.end method

.method public getInlineCSSProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->inlineCSSProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getLinkResolver()Luk/ac/ed/ph/snuggletex/LinkResolver;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->linkResolver:Luk/ac/ed/ph/snuggletex/LinkResolver;

    return-object v0
.end method

.method public getMathMLPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->mathMLPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSnuggleXMLPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->snuggleXMLPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getXHTMLPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->xhtmlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isAddingMathAnnotations()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isAddingMathSourceAnnotations()Z

    move-result v0

    return v0
.end method

.method public isAddingMathSourceAnnotations()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->addingMathSourceAnnotations:Z

    return v0
.end method

.method public isApplyingFirefox3SemanticsWorkaround()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->applyingFirefox3SemanticsWorkaround:Z

    return v0
.end method

.method public isInliningCSS()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->inliningCSS:Z

    return v0
.end method

.method public isMathVariantMapping()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->mathVariantMapping:Z

    return v0
.end method

.method public isPrefixingMathML()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingMathML:Z

    return v0
.end method

.method public isPrefixingSnuggleXML()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingSnuggleXML:Z

    return v0
.end method

.method public isPrefixingXHTML()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingXHTML:Z

    return v0
.end method

.method public setAddingMathAnnotations(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setAddingMathSourceAnnotations(Z)V

    return-void
.end method

.method public setAddingMathSourceAnnotations(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->addingMathSourceAnnotations:Z

    return-void
.end method

.method public setApplyingFirefox3SemanticsWorkaround(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->applyingFirefox3SemanticsWorkaround:Z

    return-void
.end method

.method public varargs setDOMPostProcessors([Luk/ac/ed/ph/snuggletex/DOMPostProcessor;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->domPostProcessors:[Luk/ac/ed/ph/snuggletex/DOMPostProcessor;

    return-void
.end method

.method public setErrorOutputOptions(Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->errorOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ErrorOutputOptions must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInlineCSSProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->inlineCSSProperties:Ljava/util/Properties;

    return-void
.end method

.method public setInliningCSS(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->inliningCSS:Z

    return-void
.end method

.method public setLinkResolver(Luk/ac/ed/ph/snuggletex/LinkResolver;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->linkResolver:Luk/ac/ed/ph/snuggletex/LinkResolver;

    return-void
.end method

.method public setMathMLPrefix(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->isXMLNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->mathMLPrefix:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MathML prefix must be a valid NCName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMathVariantMapping(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->mathVariantMapping:Z

    return-void
.end method

.method public setPrefixingMathML(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingMathML:Z

    return-void
.end method

.method public setPrefixingSnuggleXML(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingSnuggleXML:Z

    return-void
.end method

.method public setPrefixingXHTML(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->prefixingXHTML:Z

    return-void
.end method

.method public setSnuggleXMLPrefix(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->isXMLNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->snuggleXMLPrefix:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SnuggleTeX XML prefix must be a valid NCName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setXHTMLPrefix(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->isXMLNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->xhtmlPrefix:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XHTML prefix must be a valid NCName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
