.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->updatePageRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$2;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BookmarkEntityManager"

    const-string v1, "updatePageRepositoryObserver#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkEntityManager;Ljava/util/List;)V

    return-void
.end method
