.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

.field private mContext:Landroid/content/Context;

.field private mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

.field private mIsLock:Z

.field private mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mIsLock:Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mComposerSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mDocInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mIsLock:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mNotesDocEntityManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object p0
.end method
