.class public final enum Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

.field public static final enum COUNT:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

.field public static final enum SIZE:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

.field public static final enum UNLIMITED:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;


# instance fields
.field private limitType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    const-string/jumbo v3, "size"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->SIZE:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    const-string v3, "COUNT"

    const/4 v4, 0x1

    const-string v5, "count"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->COUNT:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    const-string v5, "UNLIMITED"

    const/4 v6, 0x2

    const-string/jumbo v7, "unlimited"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->UNLIMITED:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->$VALUES:[Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->limitType:Ljava/lang/String;

    return-void
.end method

.method public static toLimitType(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->SIZE:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->values()[Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->getLimitType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->SIZE:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->$VALUES:[Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    return-object v0
.end method


# virtual methods
.method public getLimitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->limitType:Ljava/lang/String;

    return-object v0
.end method
