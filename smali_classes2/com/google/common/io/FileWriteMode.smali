.class public final enum Lcom/google/common/io/FileWriteMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/FileWriteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/io/FileWriteMode;

.field public static final enum APPEND:Lcom/google/common/io/FileWriteMode;


# direct methods
.method private static synthetic $values()[Lcom/google/common/io/FileWriteMode;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    sget-object v1, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/io/FileWriteMode;

    const-string v1, "APPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/FileWriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    invoke-static {}, Lcom/google/common/io/FileWriteMode;->$values()[Lcom/google/common/io/FileWriteMode;

    move-result-object v0

    sput-object v0, Lcom/google/common/io/FileWriteMode;->$VALUES:[Lcom/google/common/io/FileWriteMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/FileWriteMode;
    .locals 1

    const-class v0, Lcom/google/common/io/FileWriteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/FileWriteMode;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/FileWriteMode;
    .locals 1

    sget-object v0, Lcom/google/common/io/FileWriteMode;->$VALUES:[Lcom/google/common/io/FileWriteMode;

    invoke-virtual {v0}, [Lcom/google/common/io/FileWriteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/FileWriteMode;

    return-object v0
.end method
