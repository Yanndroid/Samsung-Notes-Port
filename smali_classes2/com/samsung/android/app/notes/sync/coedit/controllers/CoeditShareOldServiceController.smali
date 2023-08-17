.class public Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/coedit/controllers/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
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

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->f(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;)Z

    return-void
.end method

.method public b(Lj/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->g(Lj/a;)V

    return-void
.end method

.method public c(Lj/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->m(Lj/a;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->h()V

    return-void
.end method

.method public final f(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->a:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CoeditShareOldServiceController"

    const-string v3, "bindService"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->a:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;-><init>(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;)V

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return v1
.end method
