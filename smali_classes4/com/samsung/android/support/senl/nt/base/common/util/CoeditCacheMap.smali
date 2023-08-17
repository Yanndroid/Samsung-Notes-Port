.class public Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$MapContract;,
        Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;
    }
.end annotation


# static fields
.field private static final mNoteInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;->mNoteInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNoteInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;->mNoteInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized release(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;->mNoteInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
