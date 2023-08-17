.class public Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;",
        ">;"
    }
.end annotation


# static fields
.field public static final PAGE_COPY_BOOKMARK_KEY:Ljava/lang/String; = "page_copy_bookmark_key"


# instance fields
.field private mIndex:I

.field private mIsBookmarked:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->mIndex:I

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->mIsBookmarked:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->mIndex:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->getIndex()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->compareTo(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->compareTo(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->mIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBookmarked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->mIsBookmarked:Z

    return v0
.end method
