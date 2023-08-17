.class public Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mParentFolderChecker:Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;

.field private final mTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AddFolderUseCase"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/ModelLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->mTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->mParentFolderChecker:Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->mParentFolderChecker:Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->isUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->mTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/domain/folder/AddFolderUseCase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
