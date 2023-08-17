.class public Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 2

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_7

    const/16 v0, 0x130

    const/16 v1, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x133

    if-eq p0, v0, :cond_6

    const/16 v0, 0x141

    if-eq p0, v0, :cond_6

    const/16 v0, 0x154

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1f9

    if-eq p0, v0, :cond_4

    const/16 v0, 0x137

    if-eq p0, v0, :cond_3

    const/16 v0, 0x138

    if-eq p0, v0, :cond_6

    const/16 v0, 0x13b

    if-eq p0, v0, :cond_6

    const/16 v0, 0x13c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x143

    if-eq p0, v0, :cond_1

    const/16 v0, 0x144

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x400

    return p0

    :cond_1
    const/16 p0, 0x40

    return p0

    :cond_2
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/16 p0, 0x800

    return p0

    :cond_5
    const/high16 p0, -0x80000000

    return p0

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x4

    return p0
.end method

.method public static b(Ls0/c;)I
    .locals 3

    const-string v0, "SyncErrorConvertUtil"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "rcode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/16 v2, 0x2c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    const v1, 0x18e0d

    if-eq p0, v1, :cond_1

    const v1, 0x18e0e

    if-eq p0, v1, :cond_1

    const v1, 0x18e0f

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x13b

    return p0

    :cond_1
    :goto_1
    const-string p0, "convertToSyncServiceServerError() : server is blocked"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x144

    return p0
.end method
