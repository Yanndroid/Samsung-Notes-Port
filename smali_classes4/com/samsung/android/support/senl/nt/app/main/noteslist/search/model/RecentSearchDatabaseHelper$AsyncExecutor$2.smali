.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor;->deleteSearchKeyword(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$2;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper$AsyncExecutor$2;->val$id:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/RecentSearchDatabaseHelper;->deleteSearchKeyword(J)Z

    :cond_0
    return-void
.end method
