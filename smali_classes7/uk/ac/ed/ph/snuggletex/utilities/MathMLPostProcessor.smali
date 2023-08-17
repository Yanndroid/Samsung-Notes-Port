.class public abstract Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/DOMPostProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleMathMLIsland(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;I)V
.end method

.method public final postProcessDOM(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/utilities/StylesheetManager;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->createNSAwareDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    new-instance p3, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;

    invoke-direct {p3, p0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;-><init>(Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->run()V

    return-object p2
.end method
