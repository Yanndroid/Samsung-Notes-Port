.class public final Luk/ac/ed/ph/snuggletex/DownConvertingPostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/DOMPostProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcessDOM(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)Lorg/w3c/dom/Document;
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;

    invoke-direct {v0, p3, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;-><init>(Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;->downConvertDOM(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method
