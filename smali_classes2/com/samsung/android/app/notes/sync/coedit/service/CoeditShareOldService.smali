.class public Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditShareOldService"


# instance fields
.field private mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

.field private mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

.field private mIsSharingPended:Z

.field private mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mIsSharingPended:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mIsSharingPended:Z

    return-void
.end method

.method public static isMdeSharing()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;->j()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addImportProgressListener(Lr/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->g(Lr/a;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$LocalBinder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$LocalBinder;-><init>(Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "CoeditShareOldService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    const-class v1, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->d(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    const-class v1, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->d(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    const-class v1, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->d(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->i()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->h()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mIsSharingPended:Z

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;)V

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g(Lj/a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CoeditShareOldService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->d(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->d(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->d(Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CoeditShareOldService : onStartCommand() : flags = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoeditShareOldService"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeImportProgressListener(Lr/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->l(Lr/a;)V

    return-void
.end method

.method public requestDelete(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop sharing because of deletion. spaceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditShareOldService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->s()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mIsSharingPended:Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->n(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public requestDeleteLocalAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->o()V

    return-void
.end method

.method public requestImport(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->m(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public requestShare(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->p(Ljava/lang/String;)V

    return-void
.end method

.method public requestShareNow(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->q(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopDelete()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mDeleteLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->r()V

    return-void
.end method

.method public stopImport()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mImportLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/b;->o()V

    return-void
.end method

.method public stopShare()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;->mShareLogic:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->s()V

    return-void
.end method
