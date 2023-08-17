.class public Lcom/samsung/android/app/notes/sync/GeneralManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/GeneralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/GeneralManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$e;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStateChanged(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "COEDIT_SERVICE"

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1}, Ln2/a;->G()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$e;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p1

    const/16 p2, 0x12d

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    const-string p2, "requestSync() : requested by the closed coEdit service"

    invoke-virtual {p1, p2}, Ln2/a;->o(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
