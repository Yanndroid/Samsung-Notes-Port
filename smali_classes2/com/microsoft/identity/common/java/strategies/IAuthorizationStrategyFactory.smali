.class public interface abstract Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericAuthorizationStrategy::",
        "Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAuthorizationStrategy(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/IAuthorizationStrategy;
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;",
            ")TGenericAuthorizationStrategy;"
        }
    .end annotation
.end method
