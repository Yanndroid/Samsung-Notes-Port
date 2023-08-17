.class public interface abstract Luk/ac/ed/ph/snuggletex/internal/SessionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
.end method

.method public abstract getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
.end method

.method public abstract getConfiguration()Luk/ac/ed/ph/snuggletex/SessionConfiguration;
.end method

.method public abstract getErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/InputError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMathCharacter(I)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
.end method

.method public abstract getStylesheetManager()Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;
.end method

.method public abstract getUserCommandMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserEnvironmentMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerError(Luk/ac/ed/ph/snuggletex/InputError;)V
.end method
