.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewParamsBuilder"
.end annotation


# instance fields
.field private absFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private dialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

.field private notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

.field private notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->absFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->dialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;)V

    return-object v0
.end method

.method public setAbsFragment(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->absFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method public setDialogCreator(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->dialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    return-object p0
.end method

.method public setNotesRecyclerView(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->notesRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    return-object p0
.end method

.method public setNotesView(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams$ViewParamsBuilder;->notesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    return-object p0
.end method
