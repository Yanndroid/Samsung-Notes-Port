.class public final enum Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

.field public static final enum CACHE_HIT:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

.field public static final enum CACHE_MISS:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

.field public static final enum CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

.field public static final enum VALIDATED:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    const-string v1, "CACHE_MODULE_RESPONSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    new-instance v1, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    const-string v3, "CACHE_HIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_HIT:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    new-instance v3, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    const-string v5, "CACHE_MISS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MISS:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    new-instance v5, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    const-string v7, "VALIDATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->VALIDATED:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->$VALUES:[Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->$VALUES:[Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    return-object v0
.end method
