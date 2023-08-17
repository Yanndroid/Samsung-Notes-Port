.class Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature$ContextAwarenessSupportedCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextAwarenessSupportedCallable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature$ContextAwarenessSupportedCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature$ContextAwarenessSupportedCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
