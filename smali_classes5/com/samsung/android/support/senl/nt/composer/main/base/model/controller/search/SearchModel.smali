.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mCurrent:I

.field private mIsIncludeSearchData:Z

.field private mKeyword:Ljava/lang/String;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/search/SearchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mKeyword:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mIsIncludeSearchData:Z

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mResults:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addSearchResults(Lcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mResults:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canBackward()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canForward()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/search/SearchData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mResults:Ljava/util/List;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    return-void
.end method

.method public setSearchResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/search/SearchData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mResults:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCurrent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->mCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
