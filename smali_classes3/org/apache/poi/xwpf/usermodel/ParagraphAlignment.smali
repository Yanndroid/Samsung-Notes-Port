.class public final enum Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum BOTH:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum CENTER:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum HIGH_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum LOW_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum MEDIUM_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum NUM_TAB:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field public static final enum THAI_DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

.field private static imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v4, "CENTER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->CENTER:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v6, "RIGHT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->RIGHT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v6, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v8, "BOTH"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->BOTH:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v8, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v10, "MEDIUM_KASHIDA"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->MEDIUM_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v10, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v12, "DISTRIBUTE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v12, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v14, "NUM_TAB"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->NUM_TAB:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v14, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v13, "HIGH_KASHIDA"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->HIGH_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v13, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v15, "LOW_KASHIDA"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LOW_KASHIDA:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v15, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    const-string v11, "THAI_DISTRIBUTE"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->THAI_DISTRIBUTE:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-array v7, v7, [Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    aput-object v15, v7, v9

    sput-object v7, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->imap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->values()[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->imap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

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

    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 3

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->imap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown paragraph alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->value:I

    return v0
.end method
