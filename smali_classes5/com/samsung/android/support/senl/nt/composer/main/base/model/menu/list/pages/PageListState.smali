.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper$LargeableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;",
            ">;"
        }
    .end annotation
.end field

.field private static final LARGE_BASE_SEARCH_SIZE:I = 0x7d0

.field private static final LARGE_BASE_SELECTED_SIZE:I = 0x2bc


# instance fields
.field private mHasSearchInputFieldFocus:Z

.field private mIsDeletingPages:Z

.field private final mMode:I

.field private mPageIndexArray:[I

.field private mPageSearchThumbnailArray:[Ljava/lang/String;

.field private mSearchKeyword:Ljava/lang/String;

.field private mSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mHasSearchInputFieldFocus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageIndexArray:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageSearchThumbnailArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSelectedItems:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mIsDeletingPages:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/os/Parcelable;
    .locals 0

    return-object p0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mMode:I

    return v0
.end method

.method public getPageIndexArray()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageIndexArray:[I

    return-object v0
.end method

.method public getPageSearchThumbnailArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageSearchThumbnailArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSearchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSelectedItems:Ljava/util/List;

    return-object v0
.end method

.method public hasSearchInputFieldFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mHasSearchInputFieldFocus:Z

    return v0
.end method

.method public isDeletingPages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mIsDeletingPages:Z

    return v0
.end method

.method public isLarge()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSelectedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2bc

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageSearchThumbnailArray:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeletingPages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mIsDeletingPages:Z

    return-void
.end method

.method public setHasSearchInputFieldFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mHasSearchInputFieldFocus:Z

    return-void
.end method

.method public setPageIndexArray([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageIndexArray:[I

    return-void
.end method

.method public setPageSearchThumbnailArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageSearchThumbnailArray:[Ljava/lang/String;

    return-void
.end method

.method public setSearchKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSearchKeyword:Ljava/lang/String;

    return-void
.end method

.method public setSelectedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSelectedItems:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mHasSearchInputFieldFocus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageIndexArray:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mPageSearchThumbnailArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mSelectedItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->mIsDeletingPages:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
