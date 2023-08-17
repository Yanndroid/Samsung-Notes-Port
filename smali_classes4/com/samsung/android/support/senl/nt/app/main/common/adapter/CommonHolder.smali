.class public abstract Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

.field public mHolderType:I

.field public mIsBottomOfSameViewType:Z

.field public final mViewMode:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mIsBottomOfSameViewType:Z

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mViewMode:I

    return-void
.end method


# virtual methods
.method public abstract decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
.end method

.method public getHolderType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    return v0
.end method

.method public onBindViewHolder()V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-void
.end method

.method public setBottomOfSameViewType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mIsBottomOfSameViewType:Z

    return-void
.end method
