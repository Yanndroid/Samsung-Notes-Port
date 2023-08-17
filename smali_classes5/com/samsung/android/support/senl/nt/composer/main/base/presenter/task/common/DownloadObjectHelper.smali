.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadImageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DownloadObjectHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method
