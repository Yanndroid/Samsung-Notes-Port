.class public final enum Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

.field public static final enum DIRECTION_LTR:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

.field public static final enum DIRECTION_MAX:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

.field public static final enum DIRECTION_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

.field public static final enum DIRECTION_RTL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    const-string v1, "DIRECTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->DIRECTION_NONE:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    new-instance v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    const-string v3, "DIRECTION_LTR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->DIRECTION_LTR:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    new-instance v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    const-string v5, "DIRECTION_RTL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->DIRECTION_RTL:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    new-instance v5, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    const-string v7, "DIRECTION_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->DIRECTION_MAX:Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->$VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->$VALUES:[Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/converters/data/resource/object/internal/textstyle/WDocIndentLevelParagraph$Direction;

    return-object v0
.end method
