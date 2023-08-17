.class public final enum Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum CALENDAR:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum DEFAULT:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum GALLERY:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum REMINDER:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

.field public static final enum SUGGESTION:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v1, "CALENDAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->CALENDAR:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v3, "REMINDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->REMINDER:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v5, "SUGGESTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->SUGGESTION:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v7, "GALLERY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->GALLERY:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const-string v9, "DEFAULT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->DEFAULT:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$RequestType;

    return-object v0
.end method
