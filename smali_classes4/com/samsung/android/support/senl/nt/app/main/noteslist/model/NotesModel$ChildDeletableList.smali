.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildDeletableList"
.end annotation


# instance fields
.field private deletableWithVerifyCount:I

.field private final filePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalFolders:I

.field private totalNotes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->filePathList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addAll(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    iget v1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    iget v1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->filePathList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->filePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addDeletableWithVerifyCount()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    return-void
.end method

.method public addFilePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->filePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTotalFolders()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalFolders:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalFolders:I

    return-void
.end method

.method public addTotalNotes()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    return-void
.end method

.method public getDeletableWithVerifyCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->deletableWithVerifyCount:I

    return v0
.end method

.method public getTotalFolders()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalFolders:I

    return v0
.end method

.method public getTotalItems()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalFolders:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalNotes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel$ChildDeletableList;->totalNotes:I

    return v0
.end method
