.class public Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;,
        Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;,
        Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposer;,
        Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;
    }
.end annotation


# static fields
.field private static final MAX_COMPOSER_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ComposerManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;


# instance fields
.field private mClosedListener:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;

.field private final mCoeditMemberManagerResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mCoeditMemberManagerResultMap:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result p0

    return p0
.end method

.method private addInfo(Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getMapKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getMapKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->printInfoMap()V

    :cond_0
    return-void
.end method

.method private closeComposerOverCount(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->close(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return-void
.end method

.method private doClosedListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mClosedListener:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;->onClosedAllComposer()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mClosedListener:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;

    const-string v0, "ComposerManager"

    const-string v1, "onClosedAllComposer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLatestComposer(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;)Landroid/app/Activity;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-interface {p1, v4}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;->isMatched(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getLastStoppedTime()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-ltz v5, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getLastStoppedTime()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private getMapKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private onDestroyComposer(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->remove(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private onStopComposer(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopComposer# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getMapKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->setLastStoppedTime()V

    return-void
.end method

.method private printInfoMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private remove(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getMapKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComposerManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->printInfoMap()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->doClosedListener()V

    return-void
.end method


# virtual methods
.method public clearCoeditMemberManagerLeaveResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mCoeditMemberManagerResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeAllComposer(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;->onClosedAllComposer()Z

    move-result p1

    return p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mClosedListener:Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->close(Ljava/lang/String;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public closeCoeditComposer(Landroidx/fragment/app/Fragment;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->closeCoeditComposer(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public closeComposer(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->close(Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string v0, "ComposerManager"

    const-string v1, "closeComposer# not found activity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public closeComposer(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v3

    invoke-interface {v3, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->close(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "closeComposer# false : prev("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getTaskId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")/curr("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ComposerManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->closeComposerOverCount(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public findRecordingTaskId()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->hasVoiceNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getTaskId()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getCoeditMemberManagerLeaveResult(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mCoeditMemberManagerResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getComposerActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComposerForActionSend()Landroid/app/Activity;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$3;-><init>(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getLatestComposer(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getComposerToAddContent(I)Landroid/app/Activity;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$2;-><init>(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getLatestComposer(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IfStatement;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public getFolderIdsInUse()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->getFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasComposerInSameTask(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ComposerManager"

    if-eqz v0, :cond_0

    const-string p1, "hasComposerInSameTask - uuid is empty "

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getTaskId()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "hasComposerInSameTask - same task "

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public isOpen(Ljava/lang/String;Landroidx/fragment/app/Fragment;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public isRunningComposer()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isRunningComposer(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public isRunningComposer(Landroidx/fragment/app/Fragment;)Z
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isRunningOnCoeditMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isCoeditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isRunningOnEditMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroidx/fragment/app/Fragment;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttached# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->addInfo(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroidx/fragment/app/Fragment;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->addInfo(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onDetach(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->remove(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->onStopComposer(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->onDestroyComposer(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestViewMode(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isInvalid(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;->a(Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$ComposerInfo;)Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;->requestViewMode()V

    :cond_2
    return-void
.end method

.method public setCoeditMemberManagerLeaveResult(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->mCoeditMemberManagerResultMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
