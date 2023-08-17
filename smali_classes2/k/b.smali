.class public Lk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lk/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lk/b;
    .locals 2

    const-class v0, Lk/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk/b;->a:Lk/b;

    if-nez v1, :cond_0

    new-instance v1, Lk/b;

    invoke-direct {v1}, Lk/b;-><init>()V

    sput-object v1, Lk/b;->a:Lk/b;

    :cond_0
    sget-object v1, Lk/b;->a:Lk/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestCoEditStandAloneSpaceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
