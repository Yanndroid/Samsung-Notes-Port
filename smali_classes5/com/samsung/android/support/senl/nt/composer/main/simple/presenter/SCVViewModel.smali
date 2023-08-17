.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

.field private mOnClearedListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SCVViewModel"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    return-void
.end method


# virtual methods
.method public getNoteInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    return-object v0
.end method

.method public onCleared()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mOnClearedListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;->onCleared()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->isNeededClose()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCleared# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClearedListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->mOnClearedListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;

    return-void
.end method
