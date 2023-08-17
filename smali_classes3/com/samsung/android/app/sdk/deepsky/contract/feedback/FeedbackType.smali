.class public final enum Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "NO_ACTION",
        "POSITIVE_IMPLICIT",
        "POSITIVE_EXPLICIT",
        "NEGATIVE_IMPLICIT",
        "NEGATIVE_EXPLICIT",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum NEGATIVE_EXPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

.field public static final enum NEGATIVE_IMPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

.field public static final enum NO_ACTION:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

.field public static final enum POSITIVE_EXPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

.field public static final enum POSITIVE_IMPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->NO_ACTION:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->POSITIVE_IMPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->POSITIVE_EXPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->NEGATIVE_IMPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->NEGATIVE_EXPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const-string v1, "NO_ACTION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->NO_ACTION:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const-string v1, "POSITIVE_IMPLICIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->POSITIVE_IMPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const-string v1, "POSITIVE_EXPLICIT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->POSITIVE_EXPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const-string v1, "NEGATIVE_IMPLICIT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->NEGATIVE_IMPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    const-string v1, "NEGATIVE_EXPLICIT"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->NEGATIVE_EXPLICIT:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->$values()[Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType$Companion;

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

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/feedback/FeedbackType;->id:I

    return v0
.end method
