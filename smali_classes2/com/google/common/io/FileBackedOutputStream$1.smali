.class Lcom/google/common/io/FileBackedOutputStream$1;
.super Lcom/google/common/io/ByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/FileBackedOutputStream;-><init>(IZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/io/FileBackedOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/common/io/FileBackedOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream$1;->this$0:Lcom/google/common/io/FileBackedOutputStream;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$1;->this$0:Lcom/google/common/io/FileBackedOutputStream;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$1;->this$0:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lcom/google/common/io/FileBackedOutputStream;->access$100(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
