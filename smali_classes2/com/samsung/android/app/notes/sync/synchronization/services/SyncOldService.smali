.class public Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncOldService"

.field public static mBindServiceContract:Ld0/a;


# instance fields
.field private mSyncLogic:Lo2/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static setServiceContract(Ld0/a;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mBindServiceContract:Ld0/a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService$LocalBinder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService$LocalBinder;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SyncOldService"

    const-string v1, "[Service] onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lo2/c;

    invoke-direct {v1}, Lo2/c;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mSyncLogic:Lo2/c;

    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mBindServiceContract:Ld0/a;

    invoke-static {v1}, Lo2/c;->D(Ld0/a;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mSyncLogic:Lo2/c;

    invoke-virtual {v1}, Lo2/c;->n()V

    const-string v1, "[Service] onCreate() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SyncOldService"

    const-string v1, "[Service] onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mBindServiceContract:Ld0/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ld0/a;->onDestroy()V

    goto :goto_0

    :cond_0
    const-string v1, "[Service] onDestroy() : mBindServiceContract == null!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mSyncLogic:Lo2/c;

    invoke-virtual {v1}, Lo2/c;->h()V

    const-string v1, "[Service] onDestroy() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public requestSync(Ly2/b;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mSyncLogic:Lo2/c;

    invoke-virtual {v0, p1}, Lo2/c;->C(Ly2/b;)V

    return-void
.end method

.method public stopSync(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/services/SyncOldService;->mSyncLogic:Lo2/c;

    invoke-virtual {v0, p1}, Lo2/c;->E(I)V

    return-void
.end method
