.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mDeletedPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToCallEndHistory:Z

.field private mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mDeletedPageList:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mDeletedPageIdList:Ljava/util/List;

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mNeedToCallEndHistory:Z

    return-void
.end method


# virtual methods
.method public getDeletedPageIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mDeletedPageIdList:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedPageIndexList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mDeletedPageList:Ljava/util/List;

    return-object v0
.end method

.method public getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    return-object v0
.end method

.method public getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object v0
.end method

.method public isNeededToCallEndHistory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->mNeedToCallEndHistory:Z

    return v0
.end method
