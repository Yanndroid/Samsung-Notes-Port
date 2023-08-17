.class public final Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

.field public final endIndex:I

.field public final startIndex:I

.field private transient stringRepresentation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iput p2, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    iput p3, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    return-void
.end method


# virtual methods
.method public final ensureSharesDocumentWith(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V
    .locals 3

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->sharesDocumentWith(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Document mismatch for FrozenSlice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extract()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    invoke-virtual {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    return v0
.end method

.method public isWhitespace()Z
    .locals 3

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    iget v2, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    invoke-virtual {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->isRegionWhitespace(II)Z

    move-result v0

    return v0
.end method

.method public rightOuterSpan(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;
    .locals 2

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->ensureSharesDocumentWith(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    iget p1, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    invoke-virtual {v0, v1, p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->freezeSlice(II)Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p1

    return-object p1
.end method

.method public final sharesDocumentWith(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->document:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->stringRepresentation:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(range=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "%n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "%r"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->stringRepresentation:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
