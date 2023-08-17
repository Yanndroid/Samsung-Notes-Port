.class public final enum Luk/ac/ed/ph/snuggletex/SerializationMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/SerializationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/SerializationMethod;

.field public static final enum HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

.field public static final enum STRICTLY_HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

.field public static final enum XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

.field public static final enum XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Luk/ac/ed/ph/snuggletex/SerializationMethod;

    const-string v1, "XML"

    const/4 v2, 0x0

    const-string v3, "xml"

    invoke-direct {v0, v1, v2, v3}, Luk/ac/ed/ph/snuggletex/SerializationMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    new-instance v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;

    const-string v3, "XHTML"

    const/4 v4, 0x1

    const-string v5, "xhtml"

    invoke-direct {v1, v3, v4, v5}, Luk/ac/ed/ph/snuggletex/SerializationMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XHTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    new-instance v3, Luk/ac/ed/ph/snuggletex/SerializationMethod;

    const-string v5, "HTML"

    const/4 v6, 0x2

    const-string v7, "html"

    invoke-direct {v3, v5, v6, v7}, Luk/ac/ed/ph/snuggletex/SerializationMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/SerializationMethod;->HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    new-instance v5, Luk/ac/ed/ph/snuggletex/SerializationMethod;

    const-string v8, "STRICTLY_HTML"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Luk/ac/ed/ph/snuggletex/SerializationMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/SerializationMethod;->STRICTLY_HTML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    const/4 v7, 0x4

    new-array v7, v7, [Luk/ac/ed/ph/snuggletex/SerializationMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Luk/ac/ed/ph/snuggletex/SerializationMethod;->$VALUES:[Luk/ac/ed/ph/snuggletex/SerializationMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/SerializationMethod;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/SerializationMethod;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->$VALUES:[Luk/ac/ed/ph/snuggletex/SerializationMethod;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/SerializationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/SerializationMethod;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->name:Ljava/lang/String;

    return-object v0
.end method
