.class final Lcom/google/common/io/ByteSource$EmptyByteSource;
.super Lcom/google/common/io/ByteSource$ByteArrayByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyByteSource"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/io/ByteSource$EmptyByteSource;

    invoke-direct {v0}, Lcom/google/common/io/ByteSource$EmptyByteSource;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-void
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/io/CharSource;->empty()Lcom/google/common/io/CharSource;

    move-result-object p1

    return-object p1
.end method

.method public read()[B
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;->bytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
