.class public Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Coedit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$ViewContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditSpacePresenter"


# instance fields
.field private final mAdapter:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

.field private mCoeditGroupLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

.field private mSpaceDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$ViewContract$IRecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMapContract$Coedit;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

    invoke-interface {p3, v1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$ViewContract$IRecyclerView;->setAdapter(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->setObserver(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mSpaceDisplayList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mSpaceDisplayList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->notifyDataSetChanged(Ljava/lang/String;)V

    return-void
.end method

.method private notifyDataSetChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataSetChanged# caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditSpacePresenter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setObserver(Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditGroupLiveData:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->e(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditGroupLiveData:Landroidx/lifecycle/LiveData;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditGroupLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setObserver# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditGroupLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditSpacePresenter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public putHolderInfoMap(IZ)V
    .locals 0

    return-void
.end method

.method public removeObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditGroupLiveData:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter;->mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
