.class public final enum Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

.field public static final enum AUTO_FIT_OPTION_BOTH:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

.field public static final enum AUTO_FIT_OPTION_HORIZONTAL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

.field public static final enum AUTO_FIT_OPTION_MAX:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

.field public static final enum AUTO_FIT_OPTION_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

.field public static final enum AUTO_FIT_OPTION_VERTICAL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    const-string v1, "AUTO_FIT_OPTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    new-instance v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    const-string v3, "AUTO_FIT_OPTION_HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_HORIZONTAL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    new-instance v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    const-string v5, "AUTO_FIT_OPTION_VERTICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_VERTICAL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    new-instance v5, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    const-string v7, "AUTO_FIT_OPTION_BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_BOTH:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    new-instance v7, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    const-string v9, "AUTO_FIT_OPTION_MAX"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->AUTO_FIT_OPTION_MAX:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->$VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->$VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/ObjectShapeConst$AutoFitOption;

    return-object v0
.end method
