.class public final Luk/ac/ed/ph/snuggletex/samples/XMLStringOutputExample;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleEngine;

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;-><init>()V

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/SnuggleEngine;->createSession()Luk/ac/ed/ph/snuggletex/SnuggleSession;

    move-result-object p0

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    const-string v1, "\\section*{The quadratic formula}$$ \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a} $$"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z

    new-instance v0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIndenting(Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setAddingMathSourceAnnotations(Z)V

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setUsingNamedEntities(Z)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildXMLString(Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
