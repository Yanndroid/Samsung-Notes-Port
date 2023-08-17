.class public Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentSaveParamBuilderImpl"


# instance fields
.field private mIsNew:Z

.field private mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field private mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    return-object v0
.end method

.method public getSpenSDoc()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    return-object v0
.end method

.method public getSpenWNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mIsNew:Z

    return v0
.end method

.method public setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCloseDocAfterSave(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 0

    return-object p0
.end method

.method public setCreatedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setCreatedTime(Ljava/lang/Long;)V

    return-object p0
.end method

.method public setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    return-object p0
.end method

.method public setFavorite(Ljava/lang/Boolean;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    return-object p0
.end method

.method public setImported()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setImported(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setImportedAt(J)V

    return-object p0
.end method

.method public setLastModifiedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setLastModifiedTime(Ljava/lang/Long;)V

    return-object p0
.end method

.method public setLockType(Ljava/lang/Integer;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    return-object p0
.end method

.method public setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mIsNew:Z

    return-object p0
.end method

.method public setSPenSDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSPenSDoc, spenSDoc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentSaveParamBuilderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    return-object p0
.end method

.method public setSaveDoc(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 0

    return-object p0
.end method

.method public setSpenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpenWNote, spenWNote : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentSaveParamBuilderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method

.method public setUpdateStrokeInWorkerThread(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 0

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/reflect/DocumentSaveParamBuilderImpl;->mNotesDocumentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    return-object p0
.end method
