.class public final Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

.field public final defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

.field public final defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

.field public final engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

.field public final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/InputError;",
            ">;"
        }
    .end annotation
.end field

.field public final packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

.field public final parsedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;"
        }
    .end annotation
.end field

.field public final userCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;",
            ">;"
        }
    .end annotation
.end field

.field public final userEnvironmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnuggleEngine;[Luk/ac/ed/ph/snuggletex/SnugglePackage;Luk/ac/ed/ph/snuggletex/SessionConfiguration;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/SnuggleEngine;",
            "[",
            "Luk/ac/ed/ph/snuggletex/SnugglePackage;",
            "Luk/ac/ed/ph/snuggletex/SessionConfiguration;",
            "Luk/ac/ed/ph/snuggletex/DOMOutputOptions;",
            "Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/InputError;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;",
            ">;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->engine:Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->packages:[Luk/ac/ed/ph/snuggletex/SnugglePackage;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->configuration:Luk/ac/ed/ph/snuggletex/SessionConfiguration;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->defaultXMLStringOutputOptions:Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    iput-object p6, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->errors:Ljava/util/List;

    iput-object p7, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->userCommandMap:Ljava/util/Map;

    iput-object p8, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->userEnvironmentMap:Ljava/util/Map;

    iput-object p9, p0, Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;->parsedTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleSession;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleSnapshot;)V

    return-object v0
.end method
