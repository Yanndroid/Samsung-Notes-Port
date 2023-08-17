.class public Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
.super Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/xhtml+xml"

.field public static final DEFAULT_LANG:Ljava/lang/String; = "en"


# instance fields
.field private addingMathPlayerImport:Z

.field private addingTitleHeading:Z

.field private clientSideXSLTStylesheetURLs:[Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private cssStylesheetURLs:[Ljava/lang/String;

.field private customMathJaxUrl:Ljava/lang/String;

.field private html5:Z

.field private includingStyleElement:Z

.field private lang:Ljava/lang/String;

.field private mathJax:Z

.field private mathPrefRenderer:Ljava/lang/String;

.field private noCharsetInContentTypeHeader:Z

.field private stylesheets:[Ljavax/xml/transform/Transformer;

.field private title:Ljava/lang/String;

.field private webPageType:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;-><init>()V

    sget-object v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;->MOZILLA:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->webPageType:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;

    const-string v0, "application/xhtml+xml"

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->contentType:Ljava/lang/String;

    const-string v0, "en"

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->lang:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->title:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addingTitleHeading:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addingMathPlayerImport:Z

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->mathPrefRenderer:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->includingStyleElement:Z

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->cssStylesheetURLs:[Ljava/lang/String;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->clientSideXSLTStylesheetURLs:[Ljava/lang/String;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->stylesheets:[Ljavax/xml/transform/Transformer;

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->html5:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->noCharsetInContentTypeHeader:Z

    iput-boolean v1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->mathJax:Z

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->customMathJaxUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs addCSSStylesheetURLs([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->cssStylesheetURLs:[Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->cssStylesheetURLs:[Ljava/lang/String;

    return-void
.end method

.method public varargs addClientSideXSLTStylesheetURLs([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->clientSideXSLTStylesheetURLs:[Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->clientSideXSLTStylesheetURLs:[Ljava/lang/String;

    return-void
.end method

.method public varargs addStylesheets([Ljavax/xml/transform/Transformer;)V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->stylesheets:[Ljavax/xml/transform/Transformer;

    const-class v1, Ljavax/xml/transform/Transformer;

    invoke-static {v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/xml/transform/Transformer;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->stylesheets:[Ljavax/xml/transform/Transformer;

    return-void
.end method

.method public getCSSStylesheetURLs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->cssStylesheetURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public getClientSideXSLTStylesheetURLs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->clientSideXSLTStylesheetURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMathJaxUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->customMathJaxUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMathPrefRenderer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->mathPrefRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheets()[Ljavax/xml/transform/Transformer;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->stylesheets:[Ljavax/xml/transform/Transformer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWebPageType()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;->MOZILLA:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;

    return-object v0
.end method

.method public isAddingMathPlayerImport()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addingMathPlayerImport:Z

    return v0
.end method

.method public isAddingTitleHeading()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addingTitleHeading:Z

    return v0
.end method

.method public isHtml5()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->html5:Z

    return v0
.end method

.method public isIncludingStyleElement()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->includingStyleElement:Z

    return v0
.end method

.method public isMathJax()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->mathJax:Z

    return v0
.end method

.method public isNoCharsetInContentTypeHeader()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->noCharsetInContentTypeHeader:Z

    return v0
.end method

.method public setAddingMathPlayerImport(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addingMathPlayerImport:Z

    return-void
.end method

.method public setAddingTitleHeading(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->addingTitleHeading:Z

    return-void
.end method

.method public varargs setCSSStylesheetURLs([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->cssStylesheetURLs:[Ljava/lang/String;

    return-void
.end method

.method public varargs setClientSideXSLTStylesheetURLs([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->clientSideXSLTStylesheetURLs:[Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCustomMathJaxUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->customMathJaxUrl:Ljava/lang/String;

    return-void
.end method

.method public setHtml5(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->html5:Z

    return-void
.end method

.method public setIncludingStyleElement(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->includingStyleElement:Z

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->lang:Ljava/lang/String;

    return-void
.end method

.method public setMathJax(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->mathJax:Z

    return-void
.end method

.method public setMathPrefRenderer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->mathPrefRenderer:Ljava/lang/String;

    return-void
.end method

.method public setNoCharsetInContentTypeHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->noCharsetInContentTypeHeader:Z

    return-void
.end method

.method public varargs setStylesheets([Ljavax/xml/transform/Transformer;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->stylesheets:[Ljavax/xml/transform/Transformer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->title:Ljava/lang/String;

    return-void
.end method

.method public setWebPageType(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "webPageType"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->webPageType:Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;

    return-void
.end method
