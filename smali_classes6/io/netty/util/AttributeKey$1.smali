.class final Lio/netty/util/AttributeKey$1;
.super Lio/netty/util/ConstantPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/AttributeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/ConstantPool<",
        "Lio/netty/util/AttributeKey<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/ConstantPool;-><init>()V

    return-void
.end method


# virtual methods
.method public newConstant(ILjava/lang/String;)Lio/netty/util/AttributeKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/AttributeKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/AttributeKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/netty/util/AttributeKey;-><init>(ILjava/lang/String;Lio/netty/util/AttributeKey$1;)V

    return-object v0
.end method

.method public bridge synthetic newConstant(ILjava/lang/String;)Lio/netty/util/Constant;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/AttributeKey$1;->newConstant(ILjava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object p1

    return-object p1
.end method
