.class public final enum Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BracketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

.field public static final enum CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

.field public static final enum OPENER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

.field public static final enum OPENER_OR_CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const-string v1, "OPENER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->OPENER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const-string v3, "CLOSER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    new-instance v3, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const-string v5, "OPENER_OR_CLOSER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->OPENER_OR_CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const/4 v5, 0x3

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->$VALUES:[Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->$VALUES:[Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    return-object v0
.end method
