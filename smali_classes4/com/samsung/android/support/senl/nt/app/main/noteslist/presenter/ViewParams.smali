.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParams"


# instance fields
.field private final absFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final context:Landroid/content/Context;

.field private final dialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

.field private final notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

.field private final notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->absFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->dialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->absFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDialogCreator()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->dialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    return-object v0
.end method

.method public getModeIndex()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    if-nez v0, :cond_0

    const-string v0, "ViewParams"

    const-string v1, "getModeIndex# notesView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object v0
.end method

.method public getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    return-object v0
.end method
