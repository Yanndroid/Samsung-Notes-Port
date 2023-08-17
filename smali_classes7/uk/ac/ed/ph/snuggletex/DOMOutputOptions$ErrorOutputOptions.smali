.class public final enum Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/DOMOutputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorOutputOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

.field public static final enum NO_OUTPUT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

.field public static final enum XHTML:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

.field public static final enum XML_FULL:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

.field public static final enum XML_SHORT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    const-string v1, "NO_OUTPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->NO_OUTPUT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    new-instance v1, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    const-string v3, "XML_SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XML_SHORT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    new-instance v3, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    const-string v5, "XML_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XML_FULL:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    new-instance v5, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    const-string v7, "XHTML"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XHTML:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    const/4 v7, 0x4

    new-array v7, v7, [Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->$VALUES:[Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->$VALUES:[Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    return-object v0
.end method
