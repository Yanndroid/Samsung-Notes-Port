.class public final Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsTemplates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/xhtml+xml"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_LANG:Ljava/lang/String; = "en"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWebPageOptions(Luk/ac/ed/ph/snuggletex/WebPageOutputOptions$WebPageType;)Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "webPageType"

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;-><init>()V

    sget-object v1, Luk/ac/ed/ph/snuggletex/WebPageOutputOptionsTemplates$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$WebPageOutputOptions$WebPageType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "text/html"

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected switch case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    goto :goto_0

    :pswitch_1
    sget-object p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    invoke-virtual {v0, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    goto :goto_0

    :pswitch_2
    sget-object p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->setPrefixingMathML(Z)V

    goto :goto_0

    :pswitch_4
    sget-object p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    invoke-virtual {v0, v3}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setIncludingXMLDeclaration(Z)V

    const-string p0, "-//W3C//DTD XHTML 1.1 plus MathML 2.0//EN"

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setDoctypePublic(Ljava/lang/String;)V

    const-string p0, "http://www.w3.org/Math/DTD/mathml2/xhtml-math11-f.dtd"

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setDoctypeSystem(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setNoCharsetInContentTypeHeader(Z)V

    goto :goto_0

    :pswitch_5
    sget-object p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    const-string p0, "application/xhtml+xml"

    invoke-virtual {v0, p0}, Luk/ac/ed/ph/snuggletex/WebPageOutputOptions;->setContentType(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
