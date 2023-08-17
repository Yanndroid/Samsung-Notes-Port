.class public Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "LoadCacheDocumentTask"

    const-string v1, "build"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method
