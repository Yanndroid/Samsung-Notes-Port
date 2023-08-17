.class public final enum Lcom/samsung/android/penup/internal/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/penup/internal/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/penup/internal/HttpMethod;

.field public static final enum GET:Lcom/samsung/android/penup/internal/HttpMethod;

.field public static final enum POST:Lcom/samsung/android/penup/internal/HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/penup/internal/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/internal/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    new-instance v1, Lcom/samsung/android/penup/internal/HttpMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/penup/internal/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/penup/internal/HttpMethod;->POST:Lcom/samsung/android/penup/internal/HttpMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/penup/internal/HttpMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/penup/internal/HttpMethod;->$VALUES:[Lcom/samsung/android/penup/internal/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/penup/internal/HttpMethod;
    .locals 1

    const-class v0, Lcom/samsung/android/penup/internal/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/penup/internal/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/penup/internal/HttpMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/penup/internal/HttpMethod;->$VALUES:[Lcom/samsung/android/penup/internal/HttpMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/penup/internal/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/penup/internal/HttpMethod;

    return-object v0
.end method
