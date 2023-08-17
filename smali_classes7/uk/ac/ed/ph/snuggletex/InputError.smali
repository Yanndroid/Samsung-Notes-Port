.class public final Luk/ac/ed/ph/snuggletex/InputError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final errorCode:Luk/ac/ed/ph/snuggletex/ErrorCode;

.field private final slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

.field private stringRepresentation:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Luk/ac/ed/ph/snuggletex/ErrorCode;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/InputError;->slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/InputError;->errorCode:Luk/ac/ed/ph/snuggletex/ErrorCode;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/InputError;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method private buildStringRepresentation()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Luk/ac/ed/ph/snuggletex/InputError;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/InputError;->errorCode:Luk/ac/ed/ph/snuggletex/ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",slice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/InputError;->slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",arguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/InputError;->arguments:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/InputError;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/InputError;->errorCode:Luk/ac/ed/ph/snuggletex/ErrorCode;

    return-object v0
.end method

.method public getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/InputError;->slice:Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/InputError;->stringRepresentation:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/InputError;->buildStringRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/InputError;->stringRepresentation:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/InputError;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
