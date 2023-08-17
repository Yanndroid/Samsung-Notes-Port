.class public final enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

.field public static final enum UNSAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    new-instance v1, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const-string v3, "IMMUTABLE_CONDITIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    new-instance v3, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const-string v5, "SAFE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    new-instance v5, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const-string v7, "SAFE_CONDITIONAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    new-instance v7, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const-string v9, "UNSAFE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->UNSAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    const/4 v9, 0x5

    new-array v9, v9, [Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->$VALUES:[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->$VALUES:[Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;

    return-object v0
.end method
