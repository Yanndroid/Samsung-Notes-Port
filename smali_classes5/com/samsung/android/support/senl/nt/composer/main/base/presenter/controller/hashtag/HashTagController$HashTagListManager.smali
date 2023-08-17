.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashTagListManager"
.end annotation


# static fields
.field private static final IS_TEST_MODE:Z = false


# instance fields
.field private mHashTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;->cloneChangedSortedList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-void
.end method

.method public saveHashTagList(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveHashTags#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;->setChangedSortedList(Ljava/util/List;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController$HashTagListManager;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$View;->updateTagListView()V

    :cond_1
    return-void
.end method
