.class Lcom/samsung/scsp/framework/core/SContext$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/SContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final scontext:Lcom/samsung/scsp/framework/core/SContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/SContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/scsp/framework/core/SContext;-><init>(Lcom/samsung/scsp/framework/core/SContext$1;)V

    sput-object v0, Lcom/samsung/scsp/framework/core/SContext$LazyHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/scsp/framework/core/SContext;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/SContext$LazyHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    return-object v0
.end method
