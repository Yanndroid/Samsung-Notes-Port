.class public final Luk/ac/ed/ph/snuggletex/SessionConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_EXPANSION_LIMIT:I = 0x64


# instance fields
.field private expansionLimit:I

.field private failingFast:Z

.field private numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->failingFast:Z

    const/16 v0, 0x64

    iput v0, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->expansionLimit:I

    const/4 v0, 0x0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExpansionLimit()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->expansionLimit:I

    return v0
.end method

.method public getNumberMatcher()Luk/ac/ed/ph/snuggletex/NumberMatcher;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;

    return-object v0
.end method

.method public isFailingFast()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->failingFast:Z

    return v0
.end method

.method public setExpansionLimit(I)V
    .locals 0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->expansionLimit:I

    return-void
.end method

.method public setFailingFast(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->failingFast:Z

    return-void
.end method

.method public setNumberMatcher(Luk/ac/ed/ph/snuggletex/NumberMatcher;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SessionConfiguration;->numberMatcher:Luk/ac/ed/ph/snuggletex/NumberMatcher;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
