.class public abstract Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;


# instance fields
.field public final argumentCount:I

.field public final optionalArgument:Ljava/lang/String;

.field public final texName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->texName:Ljava/lang/String;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->optionalArgument:Ljava/lang/String;

    iput p3, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->argumentCount:I

    return-void
.end method


# virtual methods
.method public getArgumentCount()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->argumentCount:I

    return v0
.end method

.method public getArgumentMode(I)Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptionalArgument()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->optionalArgument:Ljava/lang/String;

    return-object v0
.end method

.method public getTeXName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->texName:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowingOptionalArgument()Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->optionalArgument:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/definitions/UserDefinedCommandOrEnvironment;->texName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
