.class public final enum Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum LIST:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_BIG_LIMIT_OWNER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_FUNCTION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_IDENTIFIER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_NEGATABLE:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_NUMBER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum MATH_OPERATOR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum STYLE_DECLARATION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

.field public static final enum TABULAR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v1, "STYLE_DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_DECLARATION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v3, "MATH_CHARACTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v5, "MATH_NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v5, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v7, "MATH_IDENTIFIER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_IDENTIFIER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v7, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v9, "MATH_FUNCTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_FUNCTION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v9, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v11, "MATH_OPERATOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_OPERATOR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v11, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v13, "MATH_NEGATABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_NEGATABLE:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v13, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v15, "MATH_BRACKET"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v15, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v14, "MATH_BIG_LIMIT_OWNER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BIG_LIMIT_OWNER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v14, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v12, "TABULAR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->TABULAR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v12, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v10, "LIST"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->LIST:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    new-instance v10, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const-string v8, "STYLE_SENTINEL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    const/16 v8, 0xc

    new-array v8, v8, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->$VALUES:[Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->$VALUES:[Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method
