.class public final enum Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum FOOTNOTESIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum HUGE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum HUGE_2:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum LARGE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum LARGE_2:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum LARGE_3:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum NORMALSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum SCRIPTSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum SMALL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field public static final enum TINY:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;


# instance fields
.field private final targetCSSClassName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v1, "TINY"

    const/4 v2, 0x0

    const-string v3, "tiny"

    invoke-direct {v0, v1, v2, v3}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->TINY:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v3, "SCRIPTSIZE"

    const/4 v4, 0x1

    const-string v5, "scriptsize"

    invoke-direct {v1, v3, v4, v5}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->SCRIPTSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v3, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v5, "FOOTNOTESIZE"

    const/4 v6, 0x2

    const-string v7, "footnotesize"

    invoke-direct {v3, v5, v6, v7}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->FOOTNOTESIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v5, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v7, "SMALL"

    const/4 v8, 0x3

    const-string v9, "small"

    invoke-direct {v5, v7, v8, v9}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->SMALL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v7, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v9, "NORMALSIZE"

    const/4 v10, 0x4

    const-string v11, "normalsize"

    invoke-direct {v7, v9, v10, v11}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->NORMALSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v9, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v11, "LARGE"

    const/4 v12, 0x5

    const-string v13, "large"

    invoke-direct {v9, v11, v12, v13}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->LARGE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v13, "LARGE_2"

    const/4 v14, 0x6

    const-string v15, "large2"

    invoke-direct {v11, v13, v14, v15}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->LARGE_2:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v13, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v15, "LARGE_3"

    const/4 v14, 0x7

    const-string v12, "large3"

    invoke-direct {v13, v15, v14, v12}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->LARGE_3:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v12, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v15, "HUGE"

    const/16 v14, 0x8

    const-string v10, "huge"

    invoke-direct {v12, v15, v14, v10}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->HUGE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    new-instance v10, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v15, "HUGE_2"

    const/16 v14, 0x9

    const-string v8, "huge2"

    invoke-direct {v10, v15, v14, v8}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->HUGE_2:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const/16 v8, 0xa

    new-array v8, v8, [Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

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

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

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

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->targetCSSClassName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    return-object v0
.end method


# virtual methods
.method public getTargetCSSClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->targetCSSClassName:Ljava/lang/String;

    return-object v0
.end method
