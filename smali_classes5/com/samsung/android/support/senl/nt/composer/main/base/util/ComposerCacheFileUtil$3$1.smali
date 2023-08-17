.class Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "info.dat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
