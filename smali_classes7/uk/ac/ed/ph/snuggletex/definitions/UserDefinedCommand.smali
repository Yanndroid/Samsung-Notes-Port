.class public final Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;
.super Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/Command;


# instance fields
.field private final definitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;->definitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-void
.end method


# virtual methods
.method public getDefinitionSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommand;->definitionSlice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-object v0
.end method
