.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

.field public static final enum INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method private static synthetic $values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method
