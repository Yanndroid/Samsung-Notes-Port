.class public Lcom/samsung/android/support/senl/nt/app/sync/SyncInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncInitializer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finalize(Landroid/content/Context;)V
    .locals 1

    const-string p0, "SyncInitializer"

    const-string v0, "finalize()"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized lazyInitialize(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/nt/app/sync/SyncInitializer;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/common/SyncInitState;->a()Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->notInitialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->Initializing:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/common/SyncInitState;->b(Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;)V

    const-string v1, "SyncInitializer"

    const-string v2, "LazyInitialize() : start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "SyncInitializer"

    const-string v3, "LazyInitialize() : AppInfoContract is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/AppInfoContractImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/AppInfoContractImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lx/e;->t(Lx/a;)V

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->x(Lx/d;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->v(Lx/c;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ZipUtilContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ZipUtilContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->K(Lg0/b;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/LockUtilsContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/LockUtilsContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->w(Lg0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/NotificationContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/NotificationContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->G(Lc0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SyncManagerContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SyncManagerContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->F(Lx/f;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocResolverContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocResolverContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->B(Lb0/b;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/WidgetContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/WidgetContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->J(Lh0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ToastModelContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ToastModelContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->I(Lf0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/NotificationModelContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/NotificationModelContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->y(Lc0/b;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/TipCardModelContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/TipCardModelContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->H(Le0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/DialogContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/DialogContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->u(La0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SaveNoteResolverContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->D(Lb0/d;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCategoryResolverContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->z(Lb0/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCipherInputStreamContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCipherInputStreamContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->E(Ly/a;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCipherOutputStreamContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCipherOutputStreamContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->A(Ly/b;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocTagResolverContractImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocTagResolverContractImpl;-><init>()V

    invoke-virtual {v1, v2}, Lx/e;->C(Lb0/c;)V

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->d(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/GeneralManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->l()V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/SyncInitializer$1;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/sync/SyncInitializer$1;-><init>()V

    invoke-virtual {p0, v1}, Lp/a;->q(Lp/b;)V

    sget-object p0, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->initialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/common/SyncInitState;->b(Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;)V

    const-string p0, "SyncInitializer"

    const-string v1, "LazyInitialize() finish"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static quickInitialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SyncInitializer"

    const-string v1, "quickInitialize() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/AppInfoContractImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/AppInfoContractImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lx/e;->t(Lx/a;)V

    :cond_0
    const-string p0, "quickInitialize() finish"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
