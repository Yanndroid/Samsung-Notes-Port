.class Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$MapContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->restoreUndownloadedStrokeInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$1;->val$listener:Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$1;->val$listener:Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;->restoreUndownloadStroke(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
