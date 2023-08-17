.class public final Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;
.super Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/Environment;


# instance fields
.field private final beginDefinitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

.field private final endDefinitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;->beginDefinitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;->endDefinitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-void
.end method


# virtual methods
.method public getBeginDefinitionSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;->beginDefinitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-object v0
.end method

.method public getContentMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndDefinitionSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedEnvironment;->endDefinitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-object v0
.end method
