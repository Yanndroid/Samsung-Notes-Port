.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

.field private fragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

.field private notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

.field private notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

.field private presenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionMenuController()Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->actionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    return-object v0
.end method

.method public getFragmentContract()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->fragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    return-object v0
.end method

.method public getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object v0
.end method

.method public getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    return-object v0
.end method

.method public getPresenter()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->presenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-object v0
.end method

.method public setActionMenuController(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->actionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    return-object p0
.end method

.method public setFragmentContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->fragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    return-object p0
.end method

.method public setNotesRecyclerView(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object p0
.end method

.method public setNotesView(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    return-object p0
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;->presenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-object p0
.end method
