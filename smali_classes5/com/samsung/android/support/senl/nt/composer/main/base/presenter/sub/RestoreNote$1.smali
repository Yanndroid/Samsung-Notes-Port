.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;->runRestoreNoteOnThread(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;

.field public final synthetic val$weakReferenceActivity:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$1;->val$weakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$1;->val$weakReferenceActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreDoc fail  : "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$ResultCallback;

    move-result-object v0

    const-string v1, "failed to restore"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$ResultCallback;->fail(Ljava/lang/String;)V

    return-void
.end method
