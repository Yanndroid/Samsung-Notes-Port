.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkData"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsBookmarked:Z

.field private mIsDeleted:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIsDeleted:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIndex:I

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIsBookmarked:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIndex:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIsBookmarked:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIsDeleted:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIndex:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIsBookmarked:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->mIsDeleted:Z

    return-void
.end method
