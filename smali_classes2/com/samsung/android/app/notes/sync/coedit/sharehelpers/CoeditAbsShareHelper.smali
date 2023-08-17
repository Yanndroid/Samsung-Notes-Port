.class public abstract Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroid/content/Context;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Z

.field public e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->c:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CoeditAbsShareHelper"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->a:I

    return v0
.end method

.method public abstract i(Ly1/a;)V
.end method

.method public abstract j(Ljava/lang/String;)V
.end method
