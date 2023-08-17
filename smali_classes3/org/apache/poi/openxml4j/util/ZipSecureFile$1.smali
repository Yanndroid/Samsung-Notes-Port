.class final Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/openxml4j/util/ZipSecureFile;->addThreshold(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$zipIS:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;->val$zipIS:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;->run()Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .locals 8
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "TODO: Fix this to not use reflection (it will break in Java 9)! Better would be to wrap *before* instead of trying to insert wrapper afterwards."
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Ljava/io/FilterInputStream;

    const-string v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v3, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;->val$zipIS:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    new-instance v4, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;

    invoke-direct {v4, v3, v0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V

    iget-object v3, p0, Lorg/apache/poi/openxml4j/util/ZipSecureFile$1;->val$zipIS:Ljava/io/InputStream;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    invoke-static {}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "SecurityManager doesn\'t allow manipulation via reflection for zipbomb detection - continue with original input stream"

    aput-object v7, v5, v6

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v0
.end method
