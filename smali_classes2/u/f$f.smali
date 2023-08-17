.class public Lu/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/f;->g(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;
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
.field public final synthetic a:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lu/f$f;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;)V
    .locals 1

    iget-object v0, p0, Lu/f$f;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProgress(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;

    invoke-virtual {p0, p1}, Lu/f$f;->a(Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;)V

    return-void
.end method

.method public onUploadComplete(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 1

    const-string p1, "SesShareApi"

    const-string v0, "onUploadComplete()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
