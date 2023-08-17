.class public Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/SCloudJwtManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAuthorization:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "NT/SCloudJwtManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mInstance:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mInstance:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mInstance:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private getWorkSpaceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "workspaceId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS3-2] Failed to getWorkSpaceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NT/SCloudJwtManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleAccessToken()V
    .locals 5

    const-string v0, "NT/SCloudJwtManager"

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAccessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mUserId:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->requestAuthInfo(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[CS3-2] requestAuthInfo fail to await"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS3-2] requestAuthInfo fail : InterruptedException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private handleWorkSpaceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->getWorkspaceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->getWorkSpaceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "NT/SCloudJwtManager"

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS3-1] handleWorkSpaceId() : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "[CS3-2] handleWorkSpaceId() : fail to get workSpaceId!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isValidPreCondition(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "NT/SCloudJwtManager"

    if-eqz p1, :cond_0

    const-string p1, "[CS3-2] isValidPreCondition() : groupId is empty!"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[CS3-2] isValidPreCondition() : DataNetwork is not available!"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->handleAccessToken()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAccessToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAccessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->getAuthorizationSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAuthorization:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "[CS3-2] isValidPreCondition() : Authorization is not available!"

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const-string p1, "[CS3-2] isValidPreCondition() : Access Token is not available!"

    goto :goto_0
.end method


# virtual methods
.method public getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;)Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "NT/SCloudJwtManager"

    const-string v1, "[CS3] getJWT()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->isValidPreCondition(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, "[CS3] getJWT() : No workSpaceId"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAuthorization:Ljava/lang/String;

    invoke-direct {p3, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mAuthorization:Ljava/lang/String;

    invoke-direct {v1, v3, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v1

    :goto_0
    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    if-nez p4, :cond_2

    new-instance p4, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;

    invoke-direct {p4}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;-><init>()V

    :cond_2
    invoke-virtual {p4, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->setFuture(Ljava/util/concurrent/CompletableFuture;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;

    invoke-direct {v3, p0, p3, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudGetJwt;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p2, 0x0

    const-wide/16 v3, 0xa0

    :try_start_0
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v3, v4, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/CancelRequest;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    move-object p2, p3

    check-cast p2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez p2, :cond_4

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {p2, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[CS3-2] getJWT() TimeoutException: fail to getJwtItem!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {p2, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[CS3-2] getJWT() InterruptedException: fail to getJwtItem!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {p2, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    goto :goto_1

    :catch_2
    move-exception p2

    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[CS3-2] getJWT() ExecutionException: fail to getJwtItem!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {p2, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->isError()Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p1, "[CS3-2] getJWT() : fail to getJwtItem!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_5
    const-string p3, "[CS3-1] getJWT() : succeed to getJwtItem"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->getJwt()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->handleWorkSpaceId(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :goto_2
    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;

    invoke-direct {p2, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;-><init>(I)V

    throw p1
.end method

.method public getJwtMode(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->getWorkspaceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_UPLOAD:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditManager;->MODE_DOWNLOAD:I

    return p1
.end method
