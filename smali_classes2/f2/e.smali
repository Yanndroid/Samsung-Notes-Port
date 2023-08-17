.class public Lf2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "SMP_0101"

    const-string v1, "SMP_0301"

    const-string v2, "SMP_0401"

    const-string v3, "SMP_0501"

    const-string v4, "SMP_0502"

    const-string v5, "SMP_5001"

    const-string v6, "SMP_5002"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf2/e;->a:[Ljava/lang/String;

    const-string v1, "PERMISSION_IS_NOT_GRANTED"

    const-string v2, "NETWORK_IS_NOT_AVAILABLE"

    const-string v3, "INTERNAL_ERROR"

    const-string v4, "INTERNAL_SERVER_ERROR"

    const-string v5, "INVALID_SERVER_RESPONSE"

    const-string v6, "INVALID_SPP_APP_ID"

    const-string v7, "SPP_IS_NOT_INSTALLED"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf2/e;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lf2/e;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Lf2/e;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lf2/e;->b:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
