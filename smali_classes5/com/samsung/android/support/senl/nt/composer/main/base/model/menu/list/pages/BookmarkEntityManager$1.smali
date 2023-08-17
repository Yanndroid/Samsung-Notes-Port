.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

.field public final synthetic val$parent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->val$parent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkPageUpdated(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->val$parent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BookmarkEntityManager"

    const-string p2, "onBookmarkPageUpdated# null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->val$parent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->updateDelete(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onBookmarkUpdated(Ljava/lang/String;IZZ)V
    .locals 1

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object p4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/common/IModelParent;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->updateFavorite(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
