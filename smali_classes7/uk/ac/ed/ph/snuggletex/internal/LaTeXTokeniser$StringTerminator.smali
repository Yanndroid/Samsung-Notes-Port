.class public final Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$Terminator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringTerminator"
.end annotation


# instance fields
.field private final terminatorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;->terminatorString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matchesAt(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;->terminatorString:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->matchesAt(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;->terminatorString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    return p2
.end method

.method public nextMatchFrom(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;->terminatorString:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->indexOf(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$StringTerminator;->terminatorString:Ljava/lang/String;

    return-object v0
.end method
