.class public final enum Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

.field public static final enum LOCAL:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

.field public static final enum WEB:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->LOCAL:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    new-instance v1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    const-string v3, "WEB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->WEB:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->$VALUES:[Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

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

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->$VALUES:[Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->mType:Ljava/lang/String;

    return-object v0
.end method
