.class Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordStatsParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const-string v1, "recordStats does not take values"

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    const-string p3, "recordStats already set"

    invoke-static {p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    return-void
.end method
