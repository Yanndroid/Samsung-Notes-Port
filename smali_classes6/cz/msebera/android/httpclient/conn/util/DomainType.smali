.class public final enum Lcz/msebera/android/httpclient/conn/util/DomainType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/conn/util/DomainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/conn/util/DomainType;

.field public static final enum ICANN:Lcz/msebera/android/httpclient/conn/util/DomainType;

.field public static final enum PRIVATE:Lcz/msebera/android/httpclient/conn/util/DomainType;

.field public static final enum UNKNOWN:Lcz/msebera/android/httpclient/conn/util/DomainType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcz/msebera/android/httpclient/conn/util/DomainType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/util/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/util/DomainType;->UNKNOWN:Lcz/msebera/android/httpclient/conn/util/DomainType;

    new-instance v1, Lcz/msebera/android/httpclient/conn/util/DomainType;

    const-string v3, "ICANN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/conn/util/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/conn/util/DomainType;->ICANN:Lcz/msebera/android/httpclient/conn/util/DomainType;

    new-instance v3, Lcz/msebera/android/httpclient/conn/util/DomainType;

    const-string v5, "PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/conn/util/DomainType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/conn/util/DomainType;->PRIVATE:Lcz/msebera/android/httpclient/conn/util/DomainType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcz/msebera/android/httpclient/conn/util/DomainType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcz/msebera/android/httpclient/conn/util/DomainType;->$VALUES:[Lcz/msebera/android/httpclient/conn/util/DomainType;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/util/DomainType;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/conn/util/DomainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/conn/util/DomainType;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/conn/util/DomainType;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/conn/util/DomainType;->$VALUES:[Lcz/msebera/android/httpclient/conn/util/DomainType;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/conn/util/DomainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/conn/util/DomainType;

    return-object v0
.end method
