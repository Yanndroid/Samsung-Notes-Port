.class public Lcom/samsung/android/penup/internal/session/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INVALID_CLIENT_ID:Ljava/lang/String; = "-1"

.field private static KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static KEY_EXPIRATION_TIME:Ljava/lang/String; = "expiration_time"

.field private static SCOPE_POST_RESOURCES:Ljava/lang/String; = "post_resources"

.field private static SCOPE_READ_MY_RESOURCES:Ljava/lang/String; = "read_my_resources"

.field private static SCOPE_READ_RESOURCES:Ljava/lang/String; = "read_resources"

.field private static SESSION:Ljava/lang/String; = "session"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mExpirationTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mAccessToken:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mExpirationTime:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mContext:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/penup/internal/session/Session;->loadAuthResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkSharedPreferences(Landroid/content/SharedPreferences;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private declared-synchronized loadAuthResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/penup/internal/session/Session;->SESSION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v1, Lcom/samsung/android/penup/internal/session/Session;->KEY_CLIENT_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->SCOPE_READ_MY_RESOURCES:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/penup/internal/session/Session;->checkSharedPreferences(Landroid/content/SharedPreferences;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->SCOPE_READ_RESOURCES:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/penup/internal/session/Session;->checkSharedPreferences(Landroid/content/SharedPreferences;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->SCOPE_POST_RESOURCES:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/penup/internal/session/Session;->checkSharedPreferences(Landroid/content/SharedPreferences;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->KEY_ACCESS_TOKEN:Ljava/lang/String;

    const-string p2, ""

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/penup/internal/session/Session;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/penup/internal/session/SessionUtil;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/penup/internal/session/Session;->mAccessToken:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->KEY_EXPIRATION_TIME:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/penup/internal/session/Session;->mExpirationTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized saveAuthResult(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/penup/internal/session/Session;->SESSION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/penup/internal/session/Session;->KEY_CLIENT_ID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->SCOPE_READ_MY_RESOURCES:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/penup/internal/session/Session;->setSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->SCOPE_READ_RESOURCES:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/penup/internal/session/Session;->setSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->SCOPE_POST_RESOURCES:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/penup/internal/session/Session;->setSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->KEY_ACCESS_TOKEN:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/penup/internal/session/Session;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/penup/internal/session/SessionUtil;->encrypt(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/samsung/android/penup/internal/session/Session;->KEY_EXPIRATION_TIME:Ljava/lang/String;

    invoke-interface {v0, p1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object p3, p0, Lcom/samsung/android/penup/internal/session/Session;->mAccessToken:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/penup/internal/session/Session;->mExpirationTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public declared-synchronized checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mAccessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/penup/PenupClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/penup/PenupClient;->getScopeList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/penup/internal/session/Session;->loadAuthResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/session/Session;->mAccessToken:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mExpirationTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 6

    sget-object v1, Lcom/samsung/android/penup/internal/session/Session;->INVALID_CLIENT_ID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/penup/internal/session/Session;->saveAuthResult(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;J)V

    return-void
.end method

.method public clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public declared-synchronized getAccessToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/session/Session;->mAccessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAuthResult(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    mul-long/2addr p4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v6, p4, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/penup/internal/session/Session;->saveAuthResult(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;J)V

    return-void
.end method
