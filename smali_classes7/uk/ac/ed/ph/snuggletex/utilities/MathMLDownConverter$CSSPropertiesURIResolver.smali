.class public final Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter$CSSPropertiesURIResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/URIResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CSSPropertiesURIResolver"
.end annotation


# instance fields
.field private final cssPropertiesSource:Ljavax/xml/transform/Source;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    const-string v1, "urn:snuggletex-css-properties"

    invoke-direct {v0, p1, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter$CSSPropertiesURIResolver;->cssPropertiesSource:Ljavax/xml/transform/Source;

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 0

    const-string p2, "urn:snuggletex-css-properties"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLDownConverter$CSSPropertiesURIResolver;->cssPropertiesSource:Ljavax/xml/transform/Source;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
