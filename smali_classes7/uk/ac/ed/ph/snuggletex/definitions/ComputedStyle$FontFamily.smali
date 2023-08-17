.class public final enum Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum BF:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum EM:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum IT:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum NORMAL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum RM:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum SC:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum SF:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum SL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field public static final enum TT:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;


# instance fields
.field private final targetBlockCSSClassName:Ljava/lang/String;

.field private final targetBlockXHTMLElementName:Ljava/lang/String;

.field private final targetInlineCSSClassName:Ljava/lang/String;

.field private final targetInlineXHTMLElementName:Ljava/lang/String;

.field private final targetMathMLMathVariantName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v8, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "div"

    const-string v4, "rm"

    const-string v5, "span"

    const-string v6, "rm"

    const-string v7, "normal"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->NORMAL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v10, "BF"

    const/4 v11, 0x1

    const-string v12, "div"

    const-string v13, "bf"

    const-string v14, "b"

    const/4 v15, 0x0

    const-string v16, "bold"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->BF:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v18, "RM"

    const/16 v19, 0x2

    const-string v20, "div"

    const-string v21, "rm"

    const-string v22, "span"

    const-string v23, "rm"

    const-string v24, "normal"

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->RM:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v2, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v10, "EM"

    const/4 v11, 0x3

    const-string v12, "div"

    const-string v13, "em"

    const-string v14, "em"

    const-string v16, "italic"

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->EM:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v3, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v18, "IT"

    const/16 v19, 0x4

    const-string v20, "div"

    const-string v21, "it"

    const-string v22, "i"

    const/16 v23, 0x0

    const-string v24, "italic"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->IT:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v4, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v10, "TT"

    const/4 v11, 0x5

    const-string v12, "div"

    const-string v13, "tt"

    const-string v14, "span"

    const-string v15, "tt"

    const-string v16, "monospace"

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->TT:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v5, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v18, "SC"

    const/16 v19, 0x6

    const-string v20, "div"

    const-string v21, "sc"

    const-string v22, "span"

    const-string v23, "sc"

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->SC:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v6, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v10, "SL"

    const/4 v11, 0x7

    const-string v12, "div"

    const-string v13, "sl"

    const-string v14, "span"

    const-string v15, "sl"

    const/16 v16, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->SL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    new-instance v7, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v18, "SF"

    const/16 v19, 0x8

    const-string v20, "div"

    const-string v21, "sf"

    const-string v22, "span"

    const-string v23, "sf"

    const-string v24, "sans-serif"

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->SF:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const/16 v9, 0x9

    new-array v9, v9, [Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v0, v9, v8

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    sput-object v9, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetBlockXHTMLElementName:Ljava/lang/String;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetBlockCSSClassName:Ljava/lang/String;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetInlineXHTMLElementName:Ljava/lang/String;

    iput-object p6, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetInlineCSSClassName:Ljava/lang/String;

    iput-object p7, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetMathMLMathVariantName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    return-object v0
.end method


# virtual methods
.method public getTargetBlockCSSClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetBlockCSSClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBlockXHTMLElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetBlockXHTMLElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInlineCSSClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetInlineCSSClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetInlineXHTMLElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetInlineXHTMLElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetMathMLMathVariantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->targetMathMLMathVariantName:Ljava/lang/String;

    return-object v0
.end method
