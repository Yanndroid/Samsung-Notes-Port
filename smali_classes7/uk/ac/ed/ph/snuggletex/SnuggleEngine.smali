.class public final Luk/ac/ed/ph/snuggletex/SnuggleEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

.field private defaultSessionConfiguration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

.field private defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

.field private final packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/SnugglePackage;",
            ">;"
        }
    .end annotation
.end field

.field private final stylesheetManager:Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;->getInstance()Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    move-result-object v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/utilities/SimpleStylesheetCache;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/utilities/SimpleStylesheetCache;-><init>()V

    invoke-direct {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;->getInstance()Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->packages:Ljava/util/List;

    new-instance v1, Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/SessionConfiguration;-><init>()V

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultSessionConfiguration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    new-instance v1, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;-><init>()V

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    new-instance v1, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;-><init>()V

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->stylesheetManager:Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    invoke-static {}, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    invoke-direct {v0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;-><init>(Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;Luk/ac/ed/ph/snuggletex/utilities/StylesheetCache;)V

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)V

    return-void
.end method


# virtual methods
.method public addPackage(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V
    .locals 1

    const-string v0, "snugglePackage"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->packages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultSessionConfiguration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession(Luk/ac/ed/ph/snuggletex/SessionConfiguration;)Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Luk/ac/ed/ph/snuggletex/SessionConfiguration;)Luk/ac/ed/ph/snuggletex/SnuggleSession;
    .locals 1

    const-string v0, "sessionConfiguration"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleSession;

    invoke-direct {v0, p0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleEngine;Luk/ac/ed/ph/snuggletex/SessionConfiguration;)V

    return-object v0
.end method

.method public createSimpleMathRunner()Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleSession;)V

    return-object v0
.end method

.method public createSimpleMathRunner(Luk/ac/ed/ph/snuggletex/SessionConfiguration;)Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession(Luk/ac/ed/ph/snuggletex/SessionConfiguration;)Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object p1

    invoke-direct {v0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleSession;)V

    return-object v0
.end method

.method public getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 3

    const-string v0, "texName"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->packages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-virtual {v1, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method public getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 3

    const-string v0, "texName"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->packages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-virtual {v1, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method public getDefaultDOMOptions()Luk/ac/ed/ph/snuggletex/DOMOutputOptions;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    return-object v0
.end method

.method public getDefaultDOMOutputOptions()Luk/ac/ed/ph/snuggletex/DOMOutputOptions;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    return-object v0
.end method

.method public getDefaultSessionConfiguration()Luk/ac/ed/ph/snuggletex/SessionConfiguration;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultSessionConfiguration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    return-object v0
.end method

.method public getDefaultXMLStringOutputOptions()Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/SnugglePackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->packages:Ljava/util/List;

    return-object v0
.end method

.method public getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->stylesheetManager:Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;

    return-object v0
.end method

.method public setDefaultDOMOptions(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "defaultDOMOptions"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    return-void
.end method

.method public setDefaultDOMOutputOptions(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V
    .locals 1

    const-string v0, "defaultDOMOutputOptions"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    return-void
.end method

.method public setDefaultSessionConfiguration(Luk/ac/ed/ph/snuggletex/SessionConfiguration;)V
    .locals 1

    const-string v0, "defaultSessionConfiguration"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultSessionConfiguration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    return-void
.end method

.method public setDefaultXMLStringOutputOptions(Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;)V
    .locals 1

    const-string v0, "defaultXMLOutputOptions"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    return-void
.end method
