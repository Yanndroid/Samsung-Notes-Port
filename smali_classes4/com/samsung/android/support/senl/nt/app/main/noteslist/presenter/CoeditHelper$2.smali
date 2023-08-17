.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->requestImport(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->h()Lj/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc9

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->h()Lj/a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;->val$spaceId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lj/a;->onEnded(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->i(Lj/a;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$2;->onComplete(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V

    return-void
.end method
