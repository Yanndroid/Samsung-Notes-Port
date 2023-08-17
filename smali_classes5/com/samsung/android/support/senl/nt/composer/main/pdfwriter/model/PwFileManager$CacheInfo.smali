.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheInfo"
.end annotation


# instance fields
.field private final mCacheFile:Ljava/io/File;

.field private final mOriginPdfFilePath:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->mOriginPdfFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->mCacheFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getCacheFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->mCacheFile:Ljava/io/File;

    return-object v0
.end method

.method public getOriginPdfFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->mOriginPdfFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method
