.class public Lk2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk2/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lk2/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lk2/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "PushInfoSupplierImpl"

    const-string v1, "[PAM] fillPushInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[PAM] getPushInfo() : appContext is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/Smp;->getPushType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk2/c;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/Smp;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lk2/c;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAM] fillPushInfo : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lk2/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lk2/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lk2/c;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lk2/c;->b:Ljava/lang/String;

    const-string v1, "SMPFCM"

    if-ne v0, v1, :cond_0

    const-string v0, "660656629413"

    goto :goto_0

    :cond_0
    const-string v0, "8938bd824975bfb2"

    :goto_0
    iput-object v0, p0, Lk2/c;->a:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fcm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMPFCM"

    :goto_0
    iput-object p1, p0, Lk2/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "spp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SMPSPP"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public getPushInfo()[Lcom/samsung/scsp/framework/core/identity/PushInfo;
    .locals 6

    const-string v0, "PushInfoSupplierImpl"

    const-string v1, "[PAM] getPushInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lk2/c;->a()V

    iget-object v1, p0, Lk2/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lk2/c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/scsp/framework/core/identity/PushInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/scsp/framework/core/identity/PushInfo;

    iget-object v3, p0, Lk2/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lk2/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lk2/c;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/scsp/framework/core/identity/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const-string v1, "[PAM] getPushInfo() : invalid pushType or pushToken!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic has()Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/h;->a(Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;)Z

    move-result v0

    return v0
.end method

.method public synthetic update()Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/h;->b(Lcom/samsung/scsp/framework/core/identity/PushInfoSupplier;)Z

    move-result v0

    return v0
.end method
