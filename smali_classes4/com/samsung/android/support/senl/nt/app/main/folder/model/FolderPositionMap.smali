.class public Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAdapterPosition:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    return-void
.end method


# virtual methods
.method public arrangePosition(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    if-ge p1, p2, :cond_2

    aget v0, v0, p1

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    add-int/lit8 v2, p1, 0x1

    aget v3, v1, v2

    aput v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    aput v0, p1, p2

    goto :goto_2

    :cond_2
    aget v0, v0, p1

    :goto_1
    if-le p1, p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    add-int/lit8 v2, p1, -0x1

    aget v2, v1, v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    aput v0, p1, p2

    :goto_2
    return-void
.end method

.method public getPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public init(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    if-lez p1, :cond_0

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderPositionMap;->mAdapterPosition:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
