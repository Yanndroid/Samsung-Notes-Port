.class public Lcom/samsung/android/support/notes/bixby/BixbyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyManager"

.field private static mInstance:Lcom/samsung/android/support/notes/bixby/BixbyManager;


# instance fields
.field private mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-direct {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/notes/bixby/BixbyManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mInstance:Lcom/samsung/android/support/notes/bixby/BixbyManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/notes/bixby/BixbyManager;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/BixbyManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mInstance:Lcom/samsung/android/support/notes/bixby/BixbyManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mInstance:Lcom/samsung/android/support/notes/bixby/BixbyManager;
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
.method public getBixbyAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->getBixbyAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->getShareType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAppLink(ILandroid/content/Intent;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAppLink id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->handleAppLink(ILandroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method public registerBixby2Action(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->registerBixby2Action(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;)V

    return-void
.end method

.method public registerDrawerFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->registerDrawerFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;)V

    return-void
.end method

.method public registerNoteFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->registerNoteFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteFragment;)V

    return-void
.end method

.method public registerNoteListActivityBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->registerNoteListActivityBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;)V

    return-void
.end method

.method public releaseDrawerFragment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->releaseDrawerFragment()V

    return-void
.end method

.method public releaseNoteFragment()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->releaseNoteFragment()V

    return-void
.end method

.method public releaseNoteListActivity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->releaseNoteListActivity()V

    return-void
.end method

.method public setup(ZLandroid/app/Application;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setup activate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;

    invoke-direct {p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-direct {p1}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/BixbyManager;->mBixbyManagerObject:Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/notes/bixby/BixbyManagerDummy;->setup(Landroid/app/Application;)V

    return-void
.end method
