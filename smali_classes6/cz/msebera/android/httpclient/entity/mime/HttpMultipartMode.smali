.class public final enum Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

.field public static final enum BROWSER_COMPATIBLE:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

.field public static final enum RFC6532:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

.field public static final enum STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    const-string v3, "BROWSER_COMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    new-instance v3, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    const-string v5, "RFC6532"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->RFC6532:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->$VALUES:[Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->$VALUES:[Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object v0
.end method
