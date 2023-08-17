.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesListPostLaunch"


# instance fields
.field private final mStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

.field private final mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->mStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;)Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    return-object p0
.end method


# virtual methods
.method public activate()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->mStartToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;->addLogic(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public executeLogics()V
    .locals 2

    const-string v0, "NotesListPostLaunch"

    const-string v1, "executeLogics()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NotesListPostLaunch executeLogics(MainList)"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeLogics(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public executeOnPreDraw(Landroid/view/View;J)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;

    const-string v1, "NotesListPostLaunch"

    const-string v2, "executeOnPreDraw#onPreDraw()"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->executeOnPreDraw(Landroid/view/View;JLcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;)V

    return-void
.end method

.method public inactivate()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->inactivate(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->reserveExecution()V

    :cond_0
    return-void
.end method

.method public reserveExecution()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method
