.class public Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public category:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public isFavorite:Z

.field public isLocked:Z

.field public noteID:Ljava/lang/String;

.field public noteTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->noteID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->noteTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->category:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->isFavorite:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->isLocked:Z

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->isFavorite:Z

    return v0
.end method

.method public getNoteContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->noteID:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->noteTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getisLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->isLocked:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->isFavorite:Z

    return-void
.end method

.method public setNoteContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setNoteID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->noteID:Ljava/lang/String;

    return-void
.end method

.method public setNoteTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->noteTitle:Ljava/lang/String;

    return-void
.end method

.method public setisLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->isLocked:Z

    return-void
.end method
