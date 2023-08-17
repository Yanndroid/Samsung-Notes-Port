.class final enum Lcom/samsung/android/penup/internal/Url$ServerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/penup/internal/Url$ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/penup/internal/Url$ServerType;

.field public static final enum DEV:Lcom/samsung/android/penup/internal/Url$ServerType;

.field public static final enum PRD:Lcom/samsung/android/penup/internal/Url$ServerType;

.field public static final enum STG:Lcom/samsung/android/penup/internal/Url$ServerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/penup/internal/Url$ServerType;

    const-string v1, "DEV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/internal/Url$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/penup/internal/Url$ServerType;->DEV:Lcom/samsung/android/penup/internal/Url$ServerType;

    new-instance v1, Lcom/samsung/android/penup/internal/Url$ServerType;

    const-string v3, "STG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/penup/internal/Url$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/penup/internal/Url$ServerType;->STG:Lcom/samsung/android/penup/internal/Url$ServerType;

    new-instance v3, Lcom/samsung/android/penup/internal/Url$ServerType;

    const-string v5, "PRD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/penup/internal/Url$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/penup/internal/Url$ServerType;->PRD:Lcom/samsung/android/penup/internal/Url$ServerType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/penup/internal/Url$ServerType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/penup/internal/Url$ServerType;->$VALUES:[Lcom/samsung/android/penup/internal/Url$ServerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/penup/internal/Url$ServerType;
    .locals 1

    const-class v0, Lcom/samsung/android/penup/internal/Url$ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/penup/internal/Url$ServerType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/penup/internal/Url$ServerType;
    .locals 1

    sget-object v0, Lcom/samsung/android/penup/internal/Url$ServerType;->$VALUES:[Lcom/samsung/android/penup/internal/Url$ServerType;

    invoke-virtual {v0}, [Lcom/samsung/android/penup/internal/Url$ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/penup/internal/Url$ServerType;

    return-object v0
.end method
