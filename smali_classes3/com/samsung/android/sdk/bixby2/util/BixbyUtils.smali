.class public Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;
    .locals 2

    const-string v0, "BixbyUtils"

    const-string v1, "getBixbyContextInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "contextInfo"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;-><init>()V

    return-object p0
.end method
