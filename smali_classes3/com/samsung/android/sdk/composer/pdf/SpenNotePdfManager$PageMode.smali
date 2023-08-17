.class public final enum Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

.field public static final enum PAGE_MODE_LIST:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

.field public static final enum PAGE_MODE_NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

.field public static final enum PAGE_MODE_SINGLE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    const-string v1, "PAGE_MODE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    new-instance v1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    const-string v3, "PAGE_MODE_LIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_LIST:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    new-instance v3, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    const-string v5, "PAGE_MODE_SINGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_SINGLE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->$VALUES:[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->$VALUES:[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    return-object v0
.end method
