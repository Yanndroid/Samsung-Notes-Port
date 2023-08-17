.class Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimPageThumbnail(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$uuidDirs:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;->val$uuidDirs:[Ljava/io/File;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trimPageThumbnail# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;->val$uuidDirs:[Ljava/io/File;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->b(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v8, Landroid/util/Pair;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trimPageThumbnail# ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "[0-9]{3,5}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;Ljava/util/regex/Pattern;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->d(Landroid/content/Context;Ljava/util/List;Ljava/io/FilenameFilter;)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->c(Ljava/util/List;Ljava/io/FilenameFilter;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trimPageThumbnail# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
