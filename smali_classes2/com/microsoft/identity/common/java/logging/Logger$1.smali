.class Lcom/microsoft/identity/common/java/logging/Logger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$containsPII:Z

.field public final synthetic val$dateTimeStamp:Ljava/lang/String;

.field public final synthetic val$diagnosticMetadata:Ljava/lang/String;

.field public final synthetic val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

.field public final synthetic val$message:Ljava/lang/String;

.field public final synthetic val$tag:Ljava/lang/String;

.field public final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$diagnosticMetadata:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$dateTimeStamp:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$throwable:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    iput-object p6, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$tag:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$containsPII:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$diagnosticMetadata:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$dateTimeStamp:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$200()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$300()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$300()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/logging/ILoggerCallback;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$400()Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    iget-boolean v5, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$containsPII:Z

    invoke-static {v0, v2, v3, v4, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->access$500(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$200()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$600()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$containsPII:Z

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    invoke-static {v0, v2, v4, v5, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->access$500(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/ILoggerCallback;Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Z)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;

    iget-boolean v5, p0, Lcom/microsoft/identity/common/java/logging/Logger$1;->val$containsPII:Z

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/microsoft/identity/common/java/logging/ILoggerCallback;->log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$200()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/microsoft/identity/common/java/logging/Logger;->access$200()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
