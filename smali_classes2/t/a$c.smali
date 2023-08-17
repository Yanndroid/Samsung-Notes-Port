.class public Lt/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public final synthetic c:Lt/a;


# direct methods
.method public constructor <init>(Lt/a;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt/a$c;->c:Lt/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lt/a$c;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;

    iput-object p2, p0, Lt/a$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "GcsComposerResolver"

    const-string v1, "UpdateWriterName#run# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lt/a$c;->c:Lt/a;

    invoke-static {v2}, Lt/a;->a(Lt/a;)Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lt/a$c;->c:Lt/a;

    invoke-static {v3}, Lt/a;->a(Lt/a;)Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;

    move-result-object v3

    iget-object v4, p0, Lt/a$c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateWriterName#run# done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWriterName#run# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lt/a$c;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;->onResult(Ljava/lang/Object;)V

    iput-object v2, p0, Lt/a$c;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$CoeditCallback;

    :cond_0
    return-void
.end method
