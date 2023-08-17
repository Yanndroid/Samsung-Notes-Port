.class Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field public jumpTable:[I

.field public matchForNeedleId:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/buffer/search/AhoCorasicSearchProcessorFactory$Context;-><init>()V

    return-void
.end method
