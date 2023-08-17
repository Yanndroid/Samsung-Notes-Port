.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnValueForShareDir"
.end annotation


# instance fields
.field public mDir:Ljava/lang/String;

.field public mUseFileProvider:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mUseFileProvider:Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    return-void
.end method
