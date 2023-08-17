.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;
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
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result v1

    const-string v2, "AdapterManager"

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Space LiveData onChanged# return - isNotSpaceMode, modeIndex : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Space LiveData onChanged# size : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", modeIndex : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initNoteMapWithoutFolder(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->getLastOpenedSDocXDataChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getPrevModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Space LiveData onChanged# "

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v1, "Space LiveData onChanged"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->setLastOpenedSDocXDataChanged(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getPrevModeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    const-string v2, "Space LiveData onChanged, prev mode is searchMode"

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onDataChanged(ILjava/lang/String;)V

    return-void
.end method
