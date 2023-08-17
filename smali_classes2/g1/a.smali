.class public Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lg1/a;


# instance fields
.field public a:Lcom/microsoft/identity/client/IPublicClientApplication;

.field public final b:[Ljava/lang/String;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    const-string v0, "User.Read"

    const-string v1, "Notes.ReadWrite"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg1/a;->b:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "AuthenticationHelper"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lg1/a;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1/a;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lg1/a;->n(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1}, Lg1/a;->o(Landroid/content/Context;)Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v1, v2, :cond_0

    new-instance v1, Lg1/a$a;

    invoke-direct {v1, p0}, Lg1/a$a;-><init>(Lg1/a;)V

    invoke-static {p1, v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lg1/a$b;

    invoke-direct {v1, p0}, Lg1/a$b;-><init>(Lg1/a;)V

    invoke-static {p1, v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lg1/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lg1/a;->d:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lg1/a;)Lcom/microsoft/identity/client/IPublicClientApplication;
    .locals 0

    iget-object p0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    return-object p0
.end method

.method public static bridge synthetic c(Lg1/a;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg1/a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lg1/a;Lcom/microsoft/identity/client/IPublicClientApplication;)V
    .locals 0

    iput-object p1, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    return-void
.end method

.method public static bridge synthetic e(Lg1/a;)V
    .locals 0

    invoke-virtual {p0}, Lg1/a;->k()V

    return-void
.end method

.method public static bridge synthetic f(Lg1/a;)I
    .locals 0

    invoke-virtual {p0}, Lg1/a;->m()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lg1/a;)V
    .locals 0

    invoke-virtual {p0}, Lg1/a;->r()V

    return-void
.end method

.method public static declared-synchronized p(Landroid/content/Context;)Lg1/a;
    .locals 2

    const-class v0, Lg1/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg1/a;->f:Lg1/a;

    if-nez v1, :cond_0

    new-instance v1, Lg1/a;

    invoke-direct {v1, p0}, Lg1/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg1/a;->f:Lg1/a;

    :cond_0
    sget-object p0, Lg1/a;->f:Lg1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public h(Landroid/app/Activity;Lcom/microsoft/identity/client/AuthenticationCallback;)Z
    .locals 4

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lg1/a;->b:[Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/microsoft/identity/client/IPublicClientApplication;->acquireToken(Landroid/app/Activity;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V

    return v3

    :cond_1
    instance-of v2, v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    const/4 v1, 0x0

    iget-object v2, p0, Lg1/a;->b:[Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;->signIn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V

    return v3

    :cond_2
    return v1
.end method

.method public i(Lcom/microsoft/identity/client/AuthenticationCallback;)Z
    .locals 6

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/microsoft/identity/client/IPublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    instance-of v4, v3, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v1, p0, Lg1/a;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lg1/a$c;

    invoke-direct {v3, p0, v0, p1, v2}, Lg1/a$c;-><init>(Lg1/a;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v5

    :cond_1
    instance-of v2, v3, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    if-eqz v2, :cond_2

    check-cast v3, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    iget-object v1, p0, Lg1/a;->b:[Ljava/lang/String;

    invoke-interface {v3, v1, v0, p1}, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;->acquireTokenSilentAsync([Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    return v5

    :cond_2
    return v1
.end method

.method public j(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg1/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg1/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->Q(Z)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    return-void
.end method

.method public l()Lcom/microsoft/identity/client/configuration/AccountMode;
    .locals 1

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/identity/client/IPublicClientApplication;->getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg1/a;->o(Landroid/content/Context;)Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 4

    const-string v0, "AuthenticationHelper"

    const-string v1, "getAccounts start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    instance-of v2, v1, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast v1, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    invoke-interface {v1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;->getAccounts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lg1/a;->d:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/client/exception/MsalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get account 2"

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get account 1"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lg1/a;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final n(Landroid/content/Context;)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepMainSignature(Landroid/content/Context;)Z

    sget v0, Lcom/samsung/android/support/notes/sync/R$raw;->msal_config_user:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isUserDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepLiteModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepMainSignature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lcom/samsung/android/support/notes/sync/R$raw;->msal_config_sep_light_user:I

    goto :goto_1

    :cond_3
    :goto_0
    sget v0, Lcom/samsung/android/support/notes/sync/R$raw;->msal_config_eng:I

    :goto_1
    return v0
.end method

.method public final o(Landroid/content/Context;)Lcom/microsoft/identity/client/configuration/AccountMode;
    .locals 6

    const-string v0, "AuthenticationHelper"

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, p1}, Lg1/a;->n(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz p1, :cond_1

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get json string. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "account_mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SINGLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-object v1, p1

    goto :goto_4

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultAccountMode : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lg1/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg1/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg1/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Li1/a;->n(Z)V

    return-void
.end method

.method public t(Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V
    .locals 3

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    if-nez v0, :cond_0

    const-string v0, "AuthenticationHelper"

    const-string v1, "PublicClientApplication is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;->onRemoved()V

    return-void

    :cond_0
    instance-of v0, v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    if-eqz v0, :cond_1

    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "AuthenticationHelper-singOut"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v2, Lg1/a$d;

    invoke-direct {v2, p0, p1, v0}, Lg1/a$d;-><init>(Lg1/a;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public u(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V
    .locals 2

    iget-object v0, p0, Lg1/a;->a:Lcom/microsoft/identity/client/IPublicClientApplication;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;->signOut(Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;)V

    :cond_1
    return-void
.end method
