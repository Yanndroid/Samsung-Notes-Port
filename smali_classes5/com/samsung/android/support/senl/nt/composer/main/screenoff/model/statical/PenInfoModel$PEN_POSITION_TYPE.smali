.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PEN_POSITION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

.field public static final enum LEFT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

.field public static final enum RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->LEFT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->RIGHT:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel$PEN_POSITION_TYPE;

    return-object v0
.end method
