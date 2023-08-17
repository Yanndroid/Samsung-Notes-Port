.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncExecutor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllSearchKeywords()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$3;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$3;-><init>()V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteSearchKeyword(J)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$2;-><init>(J)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static insertSearchKeyword(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static querySearchKeywordList(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;->querySearchKeywordList(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
