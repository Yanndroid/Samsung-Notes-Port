.class public Lcom/samsung/android/sdk/smp/common/network/NetworkErrorCodeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseErrorToSmpResult(ILjava/lang/String;)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "error_message"

    const-string v3, "error_code"

    const/16 v4, 0x3e8

    if-ge p0, v4, :cond_0

    const-string p0, "SMP_0501"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal server error - "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p0

    :cond_0
    const/16 p1, 0x3ea

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3eb

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3f2

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3f7

    if-eq p0, p1, :cond_1

    const-string p0, "SMP_0401"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Internal error"

    goto :goto_0

    :cond_1
    const-string p0, "SMP_0502"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Invalid server response"

    goto :goto_0

    :cond_2
    const-string p0, "SMP_0301"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Network is not available"

    :goto_0
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p0
.end method
