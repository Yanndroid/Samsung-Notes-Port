.class Lcom/samsung/scsp/framework/core/ers/ScspErs$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/ers/ScspErs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final ers:Lcom/samsung/scsp/framework/core/ers/ErsImpl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/ers/ErsImpl;-><init>()V

    sput-object v0, Lcom/samsung/scsp/framework/core/ers/ScspErs$LazyHolder;->ers:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/samsung/scsp/framework/core/ers/ErsImpl;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/ers/ScspErs$LazyHolder;->ers:Lcom/samsung/scsp/framework/core/ers/ErsImpl;

    return-object v0
.end method
