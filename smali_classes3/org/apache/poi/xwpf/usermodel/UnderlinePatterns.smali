.class public final enum Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DASH:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DASHED_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DASH_DOT_DOT_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DASH_DOT_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DASH_LONG:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DASH_LONG_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DOTTED:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DOTTED_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DOT_DASH:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DOT_DOT_DASH:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum DOUBLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum NONE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum SINGLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum THICK:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum WAVE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum WAVY_DOUBLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum WAVY_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field public static final enum WORDS:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

.field private static imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->SINGLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v4, "WORDS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->WORDS:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v6, "DOUBLE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DOUBLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v6, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v8, "THICK"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->THICK:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v8, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v10, "DOTTED"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DOTTED:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v10, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v12, "DOTTED_HEAVY"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DOTTED_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v12, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v14, "DASH"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DASH:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v14, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v13, "DASHED_HEAVY"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DASHED_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v13, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v15, "DASH_LONG"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DASH_LONG:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v15, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v11, "DASH_LONG_HEAVY"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DASH_LONG_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v11, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v9, "DOT_DASH"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DOT_DASH:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v9, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v7, "DASH_DOT_HEAVY"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DASH_DOT_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v5, "DOT_DOT_DASH"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DOT_DOT_DASH:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v3, "DASH_DOT_DOT_HEAVY"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->DASH_DOT_DOT_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v2, "WAVE"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->WAVE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v7, "WAVY_HEAVY"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->WAVY_HEAVY:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v5, "WAVY_DOUBLE"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->WAVY_DOUBLE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const-string v3, "NONE"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->NONE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-array v3, v7, [Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    aput-object v5, v3, v2

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->imap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->values()[Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->imap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 3

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->imap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown underline pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->value:I

    return v0
.end method
