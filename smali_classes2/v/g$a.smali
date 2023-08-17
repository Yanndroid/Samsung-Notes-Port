.class public Lv/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback<",
        "Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/g$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lv/g$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;->getSuccessList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lv/g$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;->getModifiedTime()J

    move-result-wide v1

    iget-object p1, p0, Lv/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateModifiedTime(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onProgress(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;

    invoke-virtual {p0, p1}, Lv/g$a;->a(Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;)V

    return-void
.end method

.method public onUploadComplete(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 0

    return-void
.end method
