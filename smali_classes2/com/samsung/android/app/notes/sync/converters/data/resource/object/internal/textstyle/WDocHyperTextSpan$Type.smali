.class public final enum Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_ADDRESS:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_DATE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_DATETIME:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_EMAIL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_FORMULA:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_MAX:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_TEL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_UNKNOWN:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

.field public static final enum TYPE_URL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_UNKNOWN:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v3, "TYPE_EMAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_EMAIL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v5, "TYPE_TEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_TEL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v5, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v7, "TYPE_URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_URL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v7, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v9, "TYPE_DATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_DATE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v9, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v11, "TYPE_ADDRESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_ADDRESS:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v11, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v13, "TYPE_DATETIME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_DATETIME:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v13, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v15, "TYPE_FORMULA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_FORMULA:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    new-instance v15, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const-string v14, "TYPE_MAX"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->TYPE_MAX:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->$VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->$VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocHyperTextSpan$Type;

    return-object v0
.end method
