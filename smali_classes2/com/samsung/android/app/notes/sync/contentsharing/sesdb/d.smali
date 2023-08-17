.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized b()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;
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
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
