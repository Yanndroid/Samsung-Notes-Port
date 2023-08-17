.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesListPostStart"


# instance fields
.field private final mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;->mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    return-void
.end method


# virtual methods
.method public activate(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;

    const-string v1, "NotesListPostStart"

    const-string v2, "onStart#onPreDraw()"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->executeOnPreDraw(Landroid/view/View;JLcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;)V

    return-void
.end method

.method public executeLogics()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostStart;->mToken:Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager;->executeNotesListLogics(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostStartManager$Token;)V

    return-void
.end method

.method public inactivate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->inactivate(Z)Z

    return-void
.end method
