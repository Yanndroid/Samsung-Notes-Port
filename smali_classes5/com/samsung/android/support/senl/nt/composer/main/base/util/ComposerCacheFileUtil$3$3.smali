.class Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$3;
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

.field public final synthetic val$screenDirNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;Ljava/util/regex/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$3;->val$screenDirNamePattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "info.dat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mainlist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "searchInfo.dat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil$3$3;->val$screenDirNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
