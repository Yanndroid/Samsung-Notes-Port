.class public Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appState:Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;

.field public description:Ljava/lang/String;

.field public isNoteEmpty:Ljava/lang/Boolean;

.field public noteInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppState()Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->appState:Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNoteEmpty()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->isNoteEmpty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNoteInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->noteInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setAppState(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->appState:Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->description:Ljava/lang/String;

    return-void
.end method

.method public setIsNoteEmpty(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->isNoteEmpty:Ljava/lang/Boolean;

    return-void
.end method

.method public setNoteInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->noteInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->result:Ljava/lang/String;

    return-void
.end method
