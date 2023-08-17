.class public final Luk/ac/ed/ph/snuggletex/samples/WebPageExample;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>()V

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object p0

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    const-string v1, "$$ a^2 = b^2 + c^2 $$"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z

    invoke-static {}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsBuilder;->createHTML5MathJaxOptions()Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    move-result-object v0

    const-string v1, "My Web Page"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setAddingTitleHeading(Z)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIndenting(Z)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setAddingMathSourceAnnotations(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setIncludingStyleElement(Z)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->writeWebPage(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;Ljava/io/OutputStream;)Z

    return-void
.end method
