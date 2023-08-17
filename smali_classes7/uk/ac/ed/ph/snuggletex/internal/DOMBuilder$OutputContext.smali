.class public final enum Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

.field public static final enum MATHML_BLOCK:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

.field public static final enum MATHML_INLINE:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

.field public static final enum XHTML:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    const-string v1, "XHTML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->XHTML:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    const-string v3, "MATHML_BLOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_BLOCK:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    const-string v5, "MATHML_INLINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_INLINE:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    const/4 v5, 0x3

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    return-object v0
.end method
