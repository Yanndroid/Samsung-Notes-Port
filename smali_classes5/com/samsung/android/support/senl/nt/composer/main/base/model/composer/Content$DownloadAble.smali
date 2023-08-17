.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DownloadAble"
.end annotation


# instance fields
.field public mPath:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->mUri:Landroid/net/Uri;

    return-void
.end method
