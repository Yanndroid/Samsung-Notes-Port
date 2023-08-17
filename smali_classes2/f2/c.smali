.class public Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/c;


# instance fields
.field public a:Le2/b;


# direct methods
.method public constructor <init>(Le2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/c;->a:Le2/b;

    return-void
.end method

.method public static bridge synthetic c(Lf2/c;)Le2/b;
    .locals 0

    iget-object p0, p0, Lf2/c;->a:Le2/b;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    const-string v0, "RegisterSmpUsingPam"

    const-string v1, "[PUSH] initializeSmp() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/smp/SmpInitOptions;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/SmpInitOptions;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->SPP_APPID:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    const-string v3, "8938bd824975bfb2"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/smp/SmpInitOptions;->set(Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpInitOptions;

    :try_start_0
    const-string v2, "FQcV4tcgRw"

    sget-object v3, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_PRIMARY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/sdk/smp/SmpFeature;->init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PUSH] initializeSmp : Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "[PUSH] initializeSmp() finish"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    const-string v0, "[PUSH] registerPush : Exception = "

    const-string v1, "RegisterSmpUsingPam"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/Smp;->getPushType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/Smp;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-virtual {p0, p1}, Lf2/c;->d(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :goto_2
    const-string v0, "[PUSH] registerPush : pushType or pushToken is empty and so initializeSmp!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lf2/c;->e(Landroid/content/Context;)V

    :goto_3
    const-string p1, "[PUSH] registerPush() finish"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "RegisterSmpUsingPam"

    const-string v1, "[PUSH] activatePush() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    new-instance v2, Lf2/c$a;

    invoke-direct {v2, p0, p1}, Lf2/c$a;-><init>(Lf2/c;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    const-string p1, "[PUSH] activatePush() finish"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
