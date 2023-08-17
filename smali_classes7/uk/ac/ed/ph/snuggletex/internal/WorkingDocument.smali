.class public final Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/InputContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SubstitutionContext;,
        Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;,
        Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;,
        Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;,
        Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private freezeIndex:I

.field private final input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

.field public lastResolvedSliceIndex:I

.field private length:I

.field private final scoreBoard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->lastResolvedSliceIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->getInput()Luk/ac/ed/ph/snuggletex/SnuggleInput;

    move-result-object p1

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;-><init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;)V

    new-instance p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    invoke-direct {p2, v0, v2, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;-><init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkIndex(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is outwith the current bounds [0,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRange(II)V
    .locals 3

    const-string v0, "Start Index"

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->checkIndex(ILjava/lang/String;)V

    const-string v0, "End Index"

    invoke-direct {p0, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->checkIndex(ILjava/lang/String;)V

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be <= end index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public charAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public dumpScoreboard()V
    .locals 3

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public extract()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public extract(II)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->checkRange(II)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 1

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->checkRange(II)V

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    invoke-direct {v0, p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;-><init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;II)V

    return-object v0
.end method

.method public getInput()Luk/ac/ed/ph/snuggletex/SnuggleInput;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->input:Luk/ac/ed/ph/snuggletex/SnuggleInput;

    return-object v0
.end method

.method public getSubstitutionDepth(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->resolveIndex(IZ)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;

    move-result-object p1

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    :goto_0
    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedSource:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(IC)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public indexOf(ILjava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->matchesAt(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isRegionWhitespace(II)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    return v0
.end method

.method public matchesAt(IC)Z
    .locals 0

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->charAt(I)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matchesAt(ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public resolveIndex(IZ)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;
    .locals 5

    const-string v0, "Index"

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->checkIndex(ILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->lastResolvedSliceIndex:I

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget v4, v3, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->startIndex:I

    if-le v4, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v4, v3, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->endIndex:I

    if-lt p1, v4, :cond_3

    if-eqz p2, :cond_2

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;

    iget p2, v3, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->componentIndexOffset:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, v3, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;-><init>(ILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;I)V

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->lastResolvedSliceIndex:I

    :goto_2
    iput v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->lastResolvedSliceIndex:I

    return-object v0
.end method

.method public substitute(IILjava/lang/CharSequence;)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;
    .locals 9

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->checkRange(II)V

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SubstitutionContext;

    invoke-direct {v0, p3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SubstitutionContext;-><init>(Ljava/lang/CharSequence;)V

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    if-lt p1, v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->resolveIndex(IZ)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;-><init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;)V

    iget p2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    neg-int v1, p2

    invoke-direct {v0, p2, p3, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;-><init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    return-object p1

    :cond_0
    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget v4, v2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->scoreboardIndex:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_0
    if-ge v6, v4, :cond_1

    iget-object v7, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget v6, v4, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->startIndex:I

    if-le p1, v6, :cond_2

    new-instance v7, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget-object v8, v4, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iget v4, v4, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->componentIndexOffset:I

    invoke-direct {v7, v6, p1, v8, v4}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;-><init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    new-instance v4, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iget-object v6, v2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget-object v6, v6, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iget v2, v2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->indexInComponent:I

    invoke-direct {v4, v0, v6, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;-><init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;ILjava/lang/CharSequence;)V

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    add-int/2addr p3, p1

    neg-int v2, p1

    invoke-direct {v0, p1, p3, v4, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;-><init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->resolveIndex(IZ)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->scoreboardIndex:I

    add-int/2addr v1, p1

    iget-object p1, v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget v0, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->endIndex:I

    if-ge p2, v0, :cond_3

    sub-int/2addr v0, p2

    iget v2, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->componentIndexOffset:I

    add-int/2addr v2, p2

    sub-int/2addr v2, p3

    new-instance p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    add-int/2addr v0, p3

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-direct {p2, p3, v0, p1, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;-><init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v0

    :cond_3
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_4

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget v0, p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->endIndex:I

    iget v2, p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->startIndex:I

    sub-int/2addr v0, v2

    iget v3, p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->componentIndexOffset:I

    add-int/2addr v3, v2

    sub-int/2addr v3, p3

    new-instance v2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    add-int/2addr v0, p3

    iget-object p2, p2, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-direct {v2, p3, v0, p2, v3}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;-><init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move p3, v0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->scoreBoard:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ne p1, p3, :cond_5

    iput p3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    return-object v4

    :cond_5
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed sanity check: buffer length is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", last board index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot modify frozen part of document (startIndex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",freezeIndex="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",attemptedText="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->buffer:Ljava/lang/StringBuilder;

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    add-int/lit8 v1, v0, 0x14

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->length:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unfreeze(I)V
    .locals 0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeIndex:I

    return-void
.end method
