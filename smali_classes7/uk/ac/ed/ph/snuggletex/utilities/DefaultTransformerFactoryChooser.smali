.class public final Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/utilities/TransformerFactoryChooser;


# static fields
.field private static final singletonInstance:Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;-><init>()V

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;->singletonInstance:Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;->singletonInstance:Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    return-object v0
.end method


# virtual methods
.method public getSuitableXSLT10TransformerFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 4

    :try_start_0
    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createJAXPTransformerFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not select, create and configure a suitable XSLT 1.0 processor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSuitableXSLT20TransformerFactory()Ljavax/xml/transform/TransformerFactory;
    .locals 4

    :try_start_0
    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createSaxonTransformerFactory()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0
    :try_end_0
    .catch Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Luk/ac/ed/ph/snuggletex/utilities/DefaultTransformerFactoryChooser;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not select, create and configure a suitable XSLT 2.0 processor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isXSLT20SupportAvailable()Z
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->isSaxonAvailable()Z

    move-result v0

    return v0
.end method
