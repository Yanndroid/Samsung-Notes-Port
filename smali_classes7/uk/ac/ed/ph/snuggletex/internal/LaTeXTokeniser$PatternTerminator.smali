.class public final Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;
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
    name = "PatternTerminator"
.end annotation


# instance fields
.field private final terminatorPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;->terminatorPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public matchesAt(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;->terminatorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public nextMatchFrom(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;I)I
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;->terminatorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->extract()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(pattern) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$PatternTerminator;->terminatorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
