.class public final Luk/ac/ed/ph/snuggletex/samples/MinimalExample;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>()V

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object p0

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    const-string v1, "$$ x+2=3 $$"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was converted to:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
