.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
.source "SourceFile"


# instance fields
.field private mSortArrowLayout:Landroid/widget/LinearLayout;

.field private mSortByLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->mSortByLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->mSortArrowLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    return-object p0
.end method

.method public setSortArrowLayout(Landroid/widget/LinearLayout;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->mSortArrowLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public setSortByLayout(Landroid/widget/LinearLayout;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SortBarHolderInfo;->mSortByLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method
