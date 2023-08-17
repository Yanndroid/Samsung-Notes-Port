.class public Lcom/samsung/scsp/error/LoggerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final tag:Lcom/samsung/scsp/framework/core/common/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/scsp/framework/core/common/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/scsp/error/b;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/error/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/scsp/error/LoggerConfig;->tag:Lcom/samsung/scsp/framework/core/common/Supplier;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/error/LoggerConfig;->lambda$new$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method
