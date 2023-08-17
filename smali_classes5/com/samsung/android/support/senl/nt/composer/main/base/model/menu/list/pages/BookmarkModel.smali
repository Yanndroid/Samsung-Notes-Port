.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BookmarkModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mListenerList:Ljava/util/List;

    return-void
.end method

.method private notifyPageUpdated(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;->onBookmarkPageUpdated(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyUpdated(Ljava/lang/String;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;->onBookmarkUpdated(Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$IBookmarkUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public hasBookmarkedPage()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isBookmarked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public update(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageIndex()I

    move-result v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v4, p1

    move v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->update(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public update(Ljava/lang/String;IZZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result v1

    if-ne v1, p3, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;I)V

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;Z)V

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;-><init>(IZ)V

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update# pageId / index / isBookmarked / isDeleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->notifyUpdated(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public updateDeletedInfo(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)Z

    move-result v1

    if-eq p2, v1, :cond_0

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;Z)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel$BookmarkData;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->notifyPageUpdated(Ljava/lang/String;IZ)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
