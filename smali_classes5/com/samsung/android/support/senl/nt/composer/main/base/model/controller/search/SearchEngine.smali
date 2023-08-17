.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSearchContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SearchEngine"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->mSearchContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;->cancelSearch(Z)V

    return-void
.end method

.method public createSearchModel(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public searchComposer(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getKeyword()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->mSearchContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;->search(Ljava/lang/String;Z)I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getCount()I

    move-result v0

    if-eq v0, p2, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The result of searchComposer is different : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchModel;->setCount(I)V

    :cond_0
    return-object p1
.end method

.method public setSearchContract(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->mSearchContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;

    return-void
.end method
