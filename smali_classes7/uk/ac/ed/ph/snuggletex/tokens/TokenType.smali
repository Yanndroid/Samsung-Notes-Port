.class public final enum Luk/ac/ed/ph/snuggletex/tokens/TokenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/tokens/TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum ARGUMENT_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum COMMAND:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum ENVIRONMENT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum LR_MODE_NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum MATH_NUMBER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum ROOT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

.field public static final enum VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v1, "ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ROOT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v3, "ARGUMENT_CONTAINER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ARGUMENT_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v5, "BRACE_CONTAINER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v7, "ENVIRONMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ENVIRONMENT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v7, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v9, "COMMAND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->COMMAND:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v11, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v13, "MATH_CHARACTER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v13, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v15, "NEW_PARAGRAPH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v15, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v14, "TAB_CHARACTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v14, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v12, "TEXT_MODE_TEXT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v12, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v10, "LR_MODE_NEW_PARAGRAPH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->LR_MODE_NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v10, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v8, "VERBATIM_MODE_TEXT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    new-instance v8, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const-string v6, "MATH_NUMBER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    const/16 v6, 0xd

    new-array v6, v6, [Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->$VALUES:[Luk/ac/ed/ph/snuggletex/tokens/TokenType;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/tokens/TokenType;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/tokens/TokenType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->$VALUES:[Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/tokens/TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    return-object v0
.end method
