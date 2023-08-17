.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;
    .locals 8

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2;)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$IPresenter;)V

    return-object v7
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$2;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    move-result-object v0

    return-object v0
.end method
