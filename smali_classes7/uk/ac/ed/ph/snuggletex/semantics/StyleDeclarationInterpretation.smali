.class public final enum Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/semantics/Interpretation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;",
        ">;",
        "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum BF:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum EM:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum FOOTNOTESIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum HUGE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum HUGE_2:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum IT:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum LARGE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum LARGE_2:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum LARGE_3:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum NORMALSIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum RM:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum SC:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum SCRIPTSIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum SF:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum SL:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum SMALL:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum TINY:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

.field public static final enum TT:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;


# instance fields
.field private final fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field private final fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->BF:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v2, "BF"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->BF:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->RM:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v5, "RM"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->RM:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v2, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->EM:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v7, "EM"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v2, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->EM:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v5, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->IT:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v9, "IT"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->IT:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v7, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v9, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->TT:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v11, "TT"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v7, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->TT:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v9, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->SC:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v13, "SC"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v11, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v9, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SC:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v11, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v13, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->SL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v15, "SL"

    const/4 v14, 0x6

    invoke-direct {v11, v15, v14, v13, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v11, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SL:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v13, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->SF:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    const-string v14, "SF"

    const/4 v12, 0x7

    invoke-direct {v13, v14, v12, v15, v4}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v13, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SF:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v14, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->TINY:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v12, "TINY"

    const/16 v10, 0x8

    invoke-direct {v14, v12, v10, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v14, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->TINY:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v12, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->SCRIPTSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v10, "SCRIPTSIZE"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v12, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SCRIPTSIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v10, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->FOOTNOTESIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v8, "FOOTNOTESIZE"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v10, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->FOOTNOTESIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v8, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->SMALL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v6, "SMALL"

    const/16 v3, 0xb

    invoke-direct {v8, v6, v3, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v8, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SMALL:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v6, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->NORMALSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v3, "NORMALSIZE"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v3, v8, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v6, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->NORMALSIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v3, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->LARGE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v8, "LARGE"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v3, v8, v6, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->LARGE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v8, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->LARGE_2:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v6, "LARGE_2"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v8, v6, v3, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v8, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->LARGE_2:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v6, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->LARGE_3:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v3, "LARGE_3"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v3, v8, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v6, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->LARGE_3:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v3, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->HUGE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v8, "HUGE"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v3, v8, v6, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->HUGE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    new-instance v8, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->HUGE_2:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const-string v6, "HUGE_2"

    move-object/from16 v21, v3

    const/16 v3, 0x11

    invoke-direct {v8, v6, v3, v4, v15}, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;-><init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v8, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->HUGE_2:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const/16 v4, 0x12

    new-array v4, v4, [Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v14, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    aput-object v8, v4, v3

    sput-object v4, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->$VALUES:[Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILuk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->$VALUES:[Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    return-object v0
.end method


# virtual methods
.method public getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    return-object v0
.end method

.method public getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_DECLARATION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method
